# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::DirectConnect
  # An API client for OvertureService
  # See {#initialize} for a full list of supported configuration options
  # <p>Direct Connect links your internal network to an Direct Connect location over a standard Ethernet fiber-optic cable.
  #       One end of the cable is connected to your router, the other to an Direct Connect router. With this connection
  #       in place, you can create virtual interfaces directly to the Amazon Web Services Cloud (for example, to Amazon EC2
  #       and Amazon S3) and to Amazon VPC, bypassing Internet service providers in your network path. A
  #       connection provides access to all Amazon Web Services Regions except the China (Beijing) and (China) Ningxia Regions.
  #       Amazon Web Services resources in the China Regions can only be accessed through locations associated with those Regions.</p>
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
    def initialize(config = AWS::SDK::DirectConnect::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Accepts a proposal request to attach a virtual private gateway or transit gateway to a Direct Connect gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptDirectConnectGatewayAssociationProposalInput}.
    #
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    # @option params [String] :proposal_id
    #   <p>The ID of the request proposal.</p>
    #
    # @option params [String] :associated_gateway_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual private gateway or transit gateway.</p>
    #
    # @option params [Array<RouteFilterPrefix>] :override_allowed_prefixes_to_direct_connect_gateway
    #   <p>Overrides the Amazon VPC prefixes advertised to the Direct Connect gateway.</p>
    #            <p>For information about how to set the prefixes, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes">Allowed Prefixes</a> in the <i>Direct Connect User Guide</i>.</p>
    #
    # @return [Types::AcceptDirectConnectGatewayAssociationProposalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_direct_connect_gateway_association_proposal(
    #     direct_connect_gateway_id: 'directConnectGatewayId', # required
    #     proposal_id: 'proposalId', # required
    #     associated_gateway_owner_account: 'associatedGatewayOwnerAccount', # required
    #     override_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: 'cidr'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptDirectConnectGatewayAssociationProposalOutput
    #   resp.data.direct_connect_gateway_association #=> Types::DirectConnectGatewayAssociation
    #   resp.data.direct_connect_gateway_association.direct_connect_gateway_id #=> String
    #   resp.data.direct_connect_gateway_association.direct_connect_gateway_owner_account #=> String
    #   resp.data.direct_connect_gateway_association.association_state #=> String, one of ["associating", "associated", "disassociating", "disassociated", "updating"]
    #   resp.data.direct_connect_gateway_association.state_change_error #=> String
    #   resp.data.direct_connect_gateway_association.associated_gateway #=> Types::AssociatedGateway
    #   resp.data.direct_connect_gateway_association.associated_gateway.id #=> String
    #   resp.data.direct_connect_gateway_association.associated_gateway.type #=> String, one of ["virtualPrivateGateway", "transitGateway"]
    #   resp.data.direct_connect_gateway_association.associated_gateway.owner_account #=> String
    #   resp.data.direct_connect_gateway_association.associated_gateway.region #=> String
    #   resp.data.direct_connect_gateway_association.association_id #=> String
    #   resp.data.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway #=> Array<RouteFilterPrefix>
    #   resp.data.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway[0] #=> Types::RouteFilterPrefix
    #   resp.data.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.data.direct_connect_gateway_association.virtual_gateway_id #=> String
    #   resp.data.direct_connect_gateway_association.virtual_gateway_region #=> String
    #   resp.data.direct_connect_gateway_association.virtual_gateway_owner_account #=> String
    #
    def accept_direct_connect_gateway_association_proposal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptDirectConnectGatewayAssociationProposalInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptDirectConnectGatewayAssociationProposalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptDirectConnectGatewayAssociationProposal
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::AcceptDirectConnectGatewayAssociationProposal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptDirectConnectGatewayAssociationProposal,
        stubs: @stubs,
        params_class: Params::AcceptDirectConnectGatewayAssociationProposalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_direct_connect_gateway_association_proposal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deprecated. Use <a>AllocateHostedConnection</a> instead.</p>
    #          <p>Creates a hosted connection on an interconnect.</p>
    #          <p>Allocates a VLAN number and a specified amount of bandwidth for use by a hosted connection on the specified interconnect.</p>
    #          <note>
    #             <p>Intended for use by Direct Connect Partners only.</p>
    #          </note>
    #
    # @deprecated
    #
    # @param [Hash] params
    #   See {Types::AllocateConnectionOnInterconnectInput}.
    #
    # @option params [String] :bandwidth
    #   <p>The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps,
    #         300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. Note that only those Direct Connect Partners
    #         who have met specific requirements
    #       are allowed to create a 1Gbps, 2Gbps, 5Gbps or 10Gbps hosted connection.</p>
    #
    # @option params [String] :connection_name
    #   <p>The name of the provisioned connection.</p>
    #
    # @option params [String] :owner_account
    #   <p>The ID of the Amazon Web Services account of the customer for whom the connection will be provisioned.</p>
    #
    # @option params [String] :interconnect_id
    #   <p>The ID of the interconnect on which the connection will be provisioned.</p>
    #
    # @option params [Integer] :vlan
    #   <p>The dedicated VLAN provisioned to the connection.</p>
    #
    # @return [Types::AllocateConnectionOnInterconnectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_connection_on_interconnect(
    #     bandwidth: 'bandwidth', # required
    #     connection_name: 'connectionName', # required
    #     owner_account: 'ownerAccount', # required
    #     interconnect_id: 'interconnectId', # required
    #     vlan: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AllocateConnectionOnInterconnectOutput
    #   resp.data.owner_account #=> String
    #   resp.data.connection_id #=> String
    #   resp.data.connection_name #=> String
    #   resp.data.connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.region #=> String
    #   resp.data.location #=> String
    #   resp.data.bandwidth #=> String
    #   resp.data.vlan #=> Integer
    #   resp.data.partner_name #=> String
    #   resp.data.loa_issue_time #=> Time
    #   resp.data.lag_id #=> String
    #   resp.data.aws_device #=> String
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.provider_name #=> String
    #   resp.data.mac_sec_capable #=> Boolean
    #   resp.data.port_encryption_status #=> String
    #   resp.data.encryption_mode #=> String
    #   resp.data.mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.mac_sec_keys[0].secret_arn #=> String
    #   resp.data.mac_sec_keys[0].ckn #=> String
    #   resp.data.mac_sec_keys[0].state #=> String
    #   resp.data.mac_sec_keys[0].start_on #=> String
    #
    def allocate_connection_on_interconnect(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AllocateConnectionOnInterconnectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AllocateConnectionOnInterconnectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AllocateConnectionOnInterconnect
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::AllocateConnectionOnInterconnect
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AllocateConnectionOnInterconnect,
        stubs: @stubs,
        params_class: Params::AllocateConnectionOnInterconnectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :allocate_connection_on_interconnect
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a hosted connection on the specified interconnect or a link aggregation group (LAG) of interconnects.</p>
    #          <p>Allocates a VLAN number and a specified amount of capacity (bandwidth) for use by a hosted connection on the specified interconnect or LAG of interconnects.
    #       Amazon Web Services polices the hosted connection for the specified capacity and the Direct Connect Partner must also police the hosted connection for the specified capacity.</p>
    #          <note>
    #             <p>Intended for use by Direct Connect Partners only.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::AllocateHostedConnectionInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the interconnect or LAG.</p>
    #
    # @option params [String] :owner_account
    #   <p>The ID of the Amazon Web Services account ID of the customer for the connection.</p>
    #
    # @option params [String] :bandwidth
    #   <p>The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. Note that only those Direct Connect Partners who have met specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or 10Gbps hosted connection. </p>
    #
    # @option params [String] :connection_name
    #   <p>The name of the hosted connection.</p>
    #
    # @option params [Integer] :vlan
    #   <p>The dedicated VLAN provisioned to the hosted connection.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags associated with the connection.</p>
    #
    # @return [Types::AllocateHostedConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_hosted_connection(
    #     connection_id: 'connectionId', # required
    #     owner_account: 'ownerAccount', # required
    #     bandwidth: 'bandwidth', # required
    #     connection_name: 'connectionName', # required
    #     vlan: 1, # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AllocateHostedConnectionOutput
    #   resp.data.owner_account #=> String
    #   resp.data.connection_id #=> String
    #   resp.data.connection_name #=> String
    #   resp.data.connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.region #=> String
    #   resp.data.location #=> String
    #   resp.data.bandwidth #=> String
    #   resp.data.vlan #=> Integer
    #   resp.data.partner_name #=> String
    #   resp.data.loa_issue_time #=> Time
    #   resp.data.lag_id #=> String
    #   resp.data.aws_device #=> String
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.provider_name #=> String
    #   resp.data.mac_sec_capable #=> Boolean
    #   resp.data.port_encryption_status #=> String
    #   resp.data.encryption_mode #=> String
    #   resp.data.mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.mac_sec_keys[0].secret_arn #=> String
    #   resp.data.mac_sec_keys[0].ckn #=> String
    #   resp.data.mac_sec_keys[0].state #=> String
    #   resp.data.mac_sec_keys[0].start_on #=> String
    #
    def allocate_hosted_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AllocateHostedConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AllocateHostedConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AllocateHostedConnection
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DuplicateTagKeysException, Errors::TooManyTagsException, Errors::DirectConnectClientException]),
        data_parser: Parsers::AllocateHostedConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AllocateHostedConnection,
        stubs: @stubs,
        params_class: Params::AllocateHostedConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :allocate_hosted_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provisions a private virtual interface to be owned by the specified Amazon Web Services account.</p>
    #          <p>Virtual interfaces created using this action must be confirmed by the owner using <a>ConfirmPrivateVirtualInterface</a>.
    #       Until then, the virtual interface is in the <code>Confirming</code> state and is not available to handle traffic.</p>
    #
    # @param [Hash] params
    #   See {Types::AllocatePrivateVirtualInterfaceInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the connection on which the private virtual interface is provisioned.</p>
    #
    # @option params [String] :owner_account
    #   <p>The ID of the Amazon Web Services account that owns the virtual private interface.</p>
    #
    # @option params [NewPrivateVirtualInterfaceAllocation] :new_private_virtual_interface_allocation
    #   <p>Information about the private virtual interface.</p>
    #
    # @return [Types::AllocatePrivateVirtualInterfaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_private_virtual_interface(
    #     connection_id: 'connectionId', # required
    #     owner_account: 'ownerAccount', # required
    #     new_private_virtual_interface_allocation: {
    #       virtual_interface_name: 'virtualInterfaceName', # required
    #       vlan: 1, # required
    #       asn: 1, # required
    #       mtu: 1,
    #       auth_key: 'authKey',
    #       amazon_address: 'amazonAddress',
    #       address_family: 'ipv4', # accepts ["ipv4", "ipv6"]
    #       customer_address: 'customerAddress',
    #       tags: [
    #         {
    #           key: 'key', # required
    #           value: 'value'
    #         }
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AllocatePrivateVirtualInterfaceOutput
    #   resp.data.owner_account #=> String
    #   resp.data.virtual_interface_id #=> String
    #   resp.data.location #=> String
    #   resp.data.connection_id #=> String
    #   resp.data.virtual_interface_type #=> String
    #   resp.data.virtual_interface_name #=> String
    #   resp.data.vlan #=> Integer
    #   resp.data.asn #=> Integer
    #   resp.data.amazon_side_asn #=> Integer
    #   resp.data.auth_key #=> String
    #   resp.data.amazon_address #=> String
    #   resp.data.customer_address #=> String
    #   resp.data.address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.customer_router_config #=> String
    #   resp.data.mtu #=> Integer
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.virtual_gateway_id #=> String
    #   resp.data.direct_connect_gateway_id #=> String
    #   resp.data.route_filter_prefixes #=> Array<RouteFilterPrefix>
    #   resp.data.route_filter_prefixes[0] #=> Types::RouteFilterPrefix
    #   resp.data.route_filter_prefixes[0].cidr #=> String
    #   resp.data.bgp_peers #=> Array<BGPPeer>
    #   resp.data.bgp_peers[0] #=> Types::BGPPeer
    #   resp.data.bgp_peers[0].bgp_peer_id #=> String
    #   resp.data.bgp_peers[0].asn #=> Integer
    #   resp.data.bgp_peers[0].auth_key #=> String
    #   resp.data.bgp_peers[0].address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.bgp_peers[0].amazon_address #=> String
    #   resp.data.bgp_peers[0].customer_address #=> String
    #   resp.data.bgp_peers[0].bgp_peer_state #=> String, one of ["verifying", "pending", "available", "deleting", "deleted"]
    #   resp.data.bgp_peers[0].bgp_status #=> String, one of ["up", "down", "unknown"]
    #   resp.data.bgp_peers[0].aws_device_v2 #=> String
    #   resp.data.bgp_peers[0].aws_logical_device_id #=> String
    #   resp.data.region #=> String
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.site_link_enabled #=> Boolean
    #
    def allocate_private_virtual_interface(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AllocatePrivateVirtualInterfaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AllocatePrivateVirtualInterfaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AllocatePrivateVirtualInterface
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DuplicateTagKeysException, Errors::TooManyTagsException, Errors::DirectConnectClientException]),
        data_parser: Parsers::AllocatePrivateVirtualInterface
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AllocatePrivateVirtualInterface,
        stubs: @stubs,
        params_class: Params::AllocatePrivateVirtualInterfaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :allocate_private_virtual_interface
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provisions a public virtual interface to be owned by the specified Amazon Web Services account.</p>
    #          <p>The owner of a connection calls this function to provision a public virtual interface to be owned by the specified Amazon Web Services account.</p>
    #          <p>Virtual interfaces created using this function must be confirmed by the owner using <a>ConfirmPublicVirtualInterface</a>.
    #       Until this step has been completed, the virtual interface is in the <code>confirming</code> state and is not available to handle traffic.</p>
    #          <p>When creating an IPv6 public virtual interface, omit the Amazon address and customer address. IPv6 addresses are automatically assigned from
    #       the Amazon pool of IPv6 addresses; you cannot specify custom IPv6 addresses.</p>
    #
    # @param [Hash] params
    #   See {Types::AllocatePublicVirtualInterfaceInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the connection on which the public virtual interface is provisioned.</p>
    #
    # @option params [String] :owner_account
    #   <p>The ID of the Amazon Web Services account that owns the public virtual interface.</p>
    #
    # @option params [NewPublicVirtualInterfaceAllocation] :new_public_virtual_interface_allocation
    #   <p>Information about the public virtual interface.</p>
    #
    # @return [Types::AllocatePublicVirtualInterfaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_public_virtual_interface(
    #     connection_id: 'connectionId', # required
    #     owner_account: 'ownerAccount', # required
    #     new_public_virtual_interface_allocation: {
    #       virtual_interface_name: 'virtualInterfaceName', # required
    #       vlan: 1, # required
    #       asn: 1, # required
    #       auth_key: 'authKey',
    #       amazon_address: 'amazonAddress',
    #       customer_address: 'customerAddress',
    #       address_family: 'ipv4', # accepts ["ipv4", "ipv6"]
    #       route_filter_prefixes: [
    #         {
    #           cidr: 'cidr'
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: 'key', # required
    #           value: 'value'
    #         }
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AllocatePublicVirtualInterfaceOutput
    #   resp.data.owner_account #=> String
    #   resp.data.virtual_interface_id #=> String
    #   resp.data.location #=> String
    #   resp.data.connection_id #=> String
    #   resp.data.virtual_interface_type #=> String
    #   resp.data.virtual_interface_name #=> String
    #   resp.data.vlan #=> Integer
    #   resp.data.asn #=> Integer
    #   resp.data.amazon_side_asn #=> Integer
    #   resp.data.auth_key #=> String
    #   resp.data.amazon_address #=> String
    #   resp.data.customer_address #=> String
    #   resp.data.address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.customer_router_config #=> String
    #   resp.data.mtu #=> Integer
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.virtual_gateway_id #=> String
    #   resp.data.direct_connect_gateway_id #=> String
    #   resp.data.route_filter_prefixes #=> Array<RouteFilterPrefix>
    #   resp.data.route_filter_prefixes[0] #=> Types::RouteFilterPrefix
    #   resp.data.route_filter_prefixes[0].cidr #=> String
    #   resp.data.bgp_peers #=> Array<BGPPeer>
    #   resp.data.bgp_peers[0] #=> Types::BGPPeer
    #   resp.data.bgp_peers[0].bgp_peer_id #=> String
    #   resp.data.bgp_peers[0].asn #=> Integer
    #   resp.data.bgp_peers[0].auth_key #=> String
    #   resp.data.bgp_peers[0].address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.bgp_peers[0].amazon_address #=> String
    #   resp.data.bgp_peers[0].customer_address #=> String
    #   resp.data.bgp_peers[0].bgp_peer_state #=> String, one of ["verifying", "pending", "available", "deleting", "deleted"]
    #   resp.data.bgp_peers[0].bgp_status #=> String, one of ["up", "down", "unknown"]
    #   resp.data.bgp_peers[0].aws_device_v2 #=> String
    #   resp.data.bgp_peers[0].aws_logical_device_id #=> String
    #   resp.data.region #=> String
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.site_link_enabled #=> Boolean
    #
    def allocate_public_virtual_interface(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AllocatePublicVirtualInterfaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AllocatePublicVirtualInterfaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AllocatePublicVirtualInterface
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DuplicateTagKeysException, Errors::TooManyTagsException, Errors::DirectConnectClientException]),
        data_parser: Parsers::AllocatePublicVirtualInterface
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AllocatePublicVirtualInterface,
        stubs: @stubs,
        params_class: Params::AllocatePublicVirtualInterfaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :allocate_public_virtual_interface
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provisions a transit virtual interface to be owned by the specified Amazon Web Services account. Use this type of interface to connect a transit gateway to your Direct Connect gateway.</p>
    #          <p>The owner of a connection provisions a transit virtual interface to be owned by the specified Amazon Web Services account.</p>
    #          <p>After you create a transit virtual interface, it must be confirmed by the owner using <a>ConfirmTransitVirtualInterface</a>. Until this step has been completed, the transit virtual interface is in the <code>requested</code> state and is not available to handle traffic.</p>
    #
    # @param [Hash] params
    #   See {Types::AllocateTransitVirtualInterfaceInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the connection on which the transit virtual interface is provisioned.</p>
    #
    # @option params [String] :owner_account
    #   <p>The ID of the Amazon Web Services account that owns the transit virtual interface.</p>
    #
    # @option params [NewTransitVirtualInterfaceAllocation] :new_transit_virtual_interface_allocation
    #   <p>Information about the transit virtual interface.</p>
    #
    # @return [Types::AllocateTransitVirtualInterfaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.allocate_transit_virtual_interface(
    #     connection_id: 'connectionId', # required
    #     owner_account: 'ownerAccount', # required
    #     new_transit_virtual_interface_allocation: {
    #       virtual_interface_name: 'virtualInterfaceName',
    #       vlan: 1,
    #       asn: 1,
    #       mtu: 1,
    #       auth_key: 'authKey',
    #       amazon_address: 'amazonAddress',
    #       customer_address: 'customerAddress',
    #       address_family: 'ipv4', # accepts ["ipv4", "ipv6"]
    #       tags: [
    #         {
    #           key: 'key', # required
    #           value: 'value'
    #         }
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AllocateTransitVirtualInterfaceOutput
    #   resp.data.virtual_interface #=> Types::VirtualInterface
    #   resp.data.virtual_interface.owner_account #=> String
    #   resp.data.virtual_interface.virtual_interface_id #=> String
    #   resp.data.virtual_interface.location #=> String
    #   resp.data.virtual_interface.connection_id #=> String
    #   resp.data.virtual_interface.virtual_interface_type #=> String
    #   resp.data.virtual_interface.virtual_interface_name #=> String
    #   resp.data.virtual_interface.vlan #=> Integer
    #   resp.data.virtual_interface.asn #=> Integer
    #   resp.data.virtual_interface.amazon_side_asn #=> Integer
    #   resp.data.virtual_interface.auth_key #=> String
    #   resp.data.virtual_interface.amazon_address #=> String
    #   resp.data.virtual_interface.customer_address #=> String
    #   resp.data.virtual_interface.address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interface.virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.virtual_interface.customer_router_config #=> String
    #   resp.data.virtual_interface.mtu #=> Integer
    #   resp.data.virtual_interface.jumbo_frame_capable #=> Boolean
    #   resp.data.virtual_interface.virtual_gateway_id #=> String
    #   resp.data.virtual_interface.direct_connect_gateway_id #=> String
    #   resp.data.virtual_interface.route_filter_prefixes #=> Array<RouteFilterPrefix>
    #   resp.data.virtual_interface.route_filter_prefixes[0] #=> Types::RouteFilterPrefix
    #   resp.data.virtual_interface.route_filter_prefixes[0].cidr #=> String
    #   resp.data.virtual_interface.bgp_peers #=> Array<BGPPeer>
    #   resp.data.virtual_interface.bgp_peers[0] #=> Types::BGPPeer
    #   resp.data.virtual_interface.bgp_peers[0].bgp_peer_id #=> String
    #   resp.data.virtual_interface.bgp_peers[0].asn #=> Integer
    #   resp.data.virtual_interface.bgp_peers[0].auth_key #=> String
    #   resp.data.virtual_interface.bgp_peers[0].address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interface.bgp_peers[0].amazon_address #=> String
    #   resp.data.virtual_interface.bgp_peers[0].customer_address #=> String
    #   resp.data.virtual_interface.bgp_peers[0].bgp_peer_state #=> String, one of ["verifying", "pending", "available", "deleting", "deleted"]
    #   resp.data.virtual_interface.bgp_peers[0].bgp_status #=> String, one of ["up", "down", "unknown"]
    #   resp.data.virtual_interface.bgp_peers[0].aws_device_v2 #=> String
    #   resp.data.virtual_interface.bgp_peers[0].aws_logical_device_id #=> String
    #   resp.data.virtual_interface.region #=> String
    #   resp.data.virtual_interface.aws_device_v2 #=> String
    #   resp.data.virtual_interface.aws_logical_device_id #=> String
    #   resp.data.virtual_interface.tags #=> Array<Tag>
    #   resp.data.virtual_interface.tags[0] #=> Types::Tag
    #   resp.data.virtual_interface.tags[0].key #=> String
    #   resp.data.virtual_interface.tags[0].value #=> String
    #   resp.data.virtual_interface.site_link_enabled #=> Boolean
    #
    def allocate_transit_virtual_interface(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AllocateTransitVirtualInterfaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AllocateTransitVirtualInterfaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AllocateTransitVirtualInterface
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DuplicateTagKeysException, Errors::TooManyTagsException, Errors::DirectConnectClientException]),
        data_parser: Parsers::AllocateTransitVirtualInterface
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AllocateTransitVirtualInterface,
        stubs: @stubs,
        params_class: Params::AllocateTransitVirtualInterfaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :allocate_transit_virtual_interface
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates an existing connection with a link aggregation group (LAG). The connection
    #       is interrupted and re-established as a member of the LAG (connectivity to Amazon Web Services is
    #       interrupted). The connection must be hosted on the same Direct Connect endpoint as the LAG, and its
    #       bandwidth must match the bandwidth for the LAG. You can re-associate a connection that's
    #       currently associated with a different LAG; however, if removing the connection would cause
    #       the original LAG to fall below its setting for minimum number of operational connections,
    #       the request fails.</p>
    #          <p>Any virtual interfaces that are directly associated with the connection are
    #       automatically re-associated with the LAG. If the connection was originally associated
    #       with a different LAG, the virtual interfaces remain associated with the original
    #       LAG.</p>
    #          <p>For interconnects, any hosted connections are automatically re-associated with the
    #       LAG. If the interconnect was originally associated with a different LAG, the hosted
    #       connections remain associated with the original LAG.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateConnectionWithLagInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    #
    # @option params [String] :lag_id
    #   <p>The ID of the LAG with which to associate the connection.</p>
    #
    # @return [Types::AssociateConnectionWithLagOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_connection_with_lag(
    #     connection_id: 'connectionId', # required
    #     lag_id: 'lagId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateConnectionWithLagOutput
    #   resp.data.owner_account #=> String
    #   resp.data.connection_id #=> String
    #   resp.data.connection_name #=> String
    #   resp.data.connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.region #=> String
    #   resp.data.location #=> String
    #   resp.data.bandwidth #=> String
    #   resp.data.vlan #=> Integer
    #   resp.data.partner_name #=> String
    #   resp.data.loa_issue_time #=> Time
    #   resp.data.lag_id #=> String
    #   resp.data.aws_device #=> String
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.provider_name #=> String
    #   resp.data.mac_sec_capable #=> Boolean
    #   resp.data.port_encryption_status #=> String
    #   resp.data.encryption_mode #=> String
    #   resp.data.mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.mac_sec_keys[0].secret_arn #=> String
    #   resp.data.mac_sec_keys[0].ckn #=> String
    #   resp.data.mac_sec_keys[0].state #=> String
    #   resp.data.mac_sec_keys[0].start_on #=> String
    #
    def associate_connection_with_lag(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateConnectionWithLagInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateConnectionWithLagInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateConnectionWithLag
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::AssociateConnectionWithLag
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateConnectionWithLag,
        stubs: @stubs,
        params_class: Params::AssociateConnectionWithLagOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_connection_with_lag
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a hosted connection and its virtual interfaces with a link aggregation
    #       group (LAG) or interconnect. If the target interconnect or LAG has an existing hosted
    #       connection with a conflicting VLAN number or IP address, the operation fails. This
    #       action temporarily interrupts the hosted connection's connectivity to Amazon Web Services
    #       as it is being migrated.</p>
    #          <note>
    #             <p>Intended for use by Direct Connect Partners only.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::AssociateHostedConnectionInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the hosted connection.</p>
    #
    # @option params [String] :parent_connection_id
    #   <p>The ID of the interconnect or the LAG.</p>
    #
    # @return [Types::AssociateHostedConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_hosted_connection(
    #     connection_id: 'connectionId', # required
    #     parent_connection_id: 'parentConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateHostedConnectionOutput
    #   resp.data.owner_account #=> String
    #   resp.data.connection_id #=> String
    #   resp.data.connection_name #=> String
    #   resp.data.connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.region #=> String
    #   resp.data.location #=> String
    #   resp.data.bandwidth #=> String
    #   resp.data.vlan #=> Integer
    #   resp.data.partner_name #=> String
    #   resp.data.loa_issue_time #=> Time
    #   resp.data.lag_id #=> String
    #   resp.data.aws_device #=> String
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.provider_name #=> String
    #   resp.data.mac_sec_capable #=> Boolean
    #   resp.data.port_encryption_status #=> String
    #   resp.data.encryption_mode #=> String
    #   resp.data.mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.mac_sec_keys[0].secret_arn #=> String
    #   resp.data.mac_sec_keys[0].ckn #=> String
    #   resp.data.mac_sec_keys[0].state #=> String
    #   resp.data.mac_sec_keys[0].start_on #=> String
    #
    def associate_hosted_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateHostedConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateHostedConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateHostedConnection
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::AssociateHostedConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateHostedConnection,
        stubs: @stubs,
        params_class: Params::AssociateHostedConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_hosted_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a MAC Security (MACsec) Connection Key Name (CKN)/ Connectivity Association Key (CAK) pair with an Direct Connect dedicated connection.</p>
    #          <p>You must supply either the <code>secretARN,</code> or the CKN/CAK (<code>ckn</code> and <code>cak</code>) pair in the request.</p>
    #          <p>For information about MAC Security (MACsec) key considerations, see  <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-key-consideration">MACsec pre-shared CKN/CAK key considerations </a> in the <i>Direct Connect User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateMacSecKeyInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG (dxlag-xxxx).</p>
    #            <p>You can use <a>DescribeConnections</a> or <a>DescribeLags</a> to retrieve connection ID.</p>
    #
    # @option params [String] :secret_arn
    #   <p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key to associate with the dedicated connection.</p>
    #            <p>You can use <a>DescribeConnections</a> or <a>DescribeLags</a> to retrieve the MAC Security (MACsec) secret key.</p>
    #            <p>If you use this request parameter, you do not use the <code>ckn</code> and <code>cak</code> request parameters.</p>
    #
    # @option params [String] :ckn
    #   <p>The MAC Security (MACsec) CKN to associate with the dedicated connection.</p>
    #            <p>You can create the CKN/CAK pair using an industry standard tool.</p>
    #            <p> The valid values are 64 hexadecimal characters (0-9, A-E).</p>
    #            <p>If you use this request parameter, you must use the <code>cak</code> request parameter and not use the <code>secretARN</code> request parameter.</p>
    #
    # @option params [String] :cak
    #   <p>The MAC Security (MACsec) CAK to associate with the dedicated connection.</p>
    #            <p>You can create the CKN/CAK pair using an industry standard tool.</p>
    #            <p> The valid values are 64 hexadecimal characters (0-9, A-E).</p>
    #            <p>If you use this request parameter, you must use the <code>ckn</code> request parameter and not use the <code>secretARN</code> request parameter.</p>
    #
    # @return [Types::AssociateMacSecKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_mac_sec_key(
    #     connection_id: 'connectionId', # required
    #     secret_arn: 'secretARN',
    #     ckn: 'ckn',
    #     cak: 'cak'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateMacSecKeyOutput
    #   resp.data.connection_id #=> String
    #   resp.data.mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.mac_sec_keys[0].secret_arn #=> String
    #   resp.data.mac_sec_keys[0].ckn #=> String
    #   resp.data.mac_sec_keys[0].state #=> String
    #   resp.data.mac_sec_keys[0].start_on #=> String
    #
    def associate_mac_sec_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateMacSecKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateMacSecKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateMacSecKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::AssociateMacSecKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateMacSecKey,
        stubs: @stubs,
        params_class: Params::AssociateMacSecKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_mac_sec_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a virtual interface with a specified link aggregation group (LAG) or
    #       connection. Connectivity to Amazon Web Services is temporarily interrupted as the virtual interface is
    #       being migrated. If the target connection or LAG has an associated virtual interface with
    #       a conflicting VLAN number or a conflicting IP address, the operation fails.</p>
    #          <p>Virtual interfaces associated with a hosted connection cannot be associated with a
    #       LAG; hosted connections must be migrated along with their virtual interfaces using <a>AssociateHostedConnection</a>.</p>
    #          <p>To reassociate a virtual interface to a new connection or LAG, the requester
    #       must own either the virtual interface itself or the connection to which the virtual
    #       interface is currently associated. Additionally, the requester must own the connection
    #       or LAG for the association.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateVirtualInterfaceInput}.
    #
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    # @option params [String] :connection_id
    #   <p>The ID of the LAG or connection.</p>
    #
    # @return [Types::AssociateVirtualInterfaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_virtual_interface(
    #     virtual_interface_id: 'virtualInterfaceId', # required
    #     connection_id: 'connectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateVirtualInterfaceOutput
    #   resp.data.owner_account #=> String
    #   resp.data.virtual_interface_id #=> String
    #   resp.data.location #=> String
    #   resp.data.connection_id #=> String
    #   resp.data.virtual_interface_type #=> String
    #   resp.data.virtual_interface_name #=> String
    #   resp.data.vlan #=> Integer
    #   resp.data.asn #=> Integer
    #   resp.data.amazon_side_asn #=> Integer
    #   resp.data.auth_key #=> String
    #   resp.data.amazon_address #=> String
    #   resp.data.customer_address #=> String
    #   resp.data.address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.customer_router_config #=> String
    #   resp.data.mtu #=> Integer
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.virtual_gateway_id #=> String
    #   resp.data.direct_connect_gateway_id #=> String
    #   resp.data.route_filter_prefixes #=> Array<RouteFilterPrefix>
    #   resp.data.route_filter_prefixes[0] #=> Types::RouteFilterPrefix
    #   resp.data.route_filter_prefixes[0].cidr #=> String
    #   resp.data.bgp_peers #=> Array<BGPPeer>
    #   resp.data.bgp_peers[0] #=> Types::BGPPeer
    #   resp.data.bgp_peers[0].bgp_peer_id #=> String
    #   resp.data.bgp_peers[0].asn #=> Integer
    #   resp.data.bgp_peers[0].auth_key #=> String
    #   resp.data.bgp_peers[0].address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.bgp_peers[0].amazon_address #=> String
    #   resp.data.bgp_peers[0].customer_address #=> String
    #   resp.data.bgp_peers[0].bgp_peer_state #=> String, one of ["verifying", "pending", "available", "deleting", "deleted"]
    #   resp.data.bgp_peers[0].bgp_status #=> String, one of ["up", "down", "unknown"]
    #   resp.data.bgp_peers[0].aws_device_v2 #=> String
    #   resp.data.bgp_peers[0].aws_logical_device_id #=> String
    #   resp.data.region #=> String
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.site_link_enabled #=> Boolean
    #
    def associate_virtual_interface(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateVirtualInterfaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateVirtualInterfaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateVirtualInterface
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::AssociateVirtualInterface
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateVirtualInterface,
        stubs: @stubs,
        params_class: Params::AssociateVirtualInterfaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_virtual_interface
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Confirms the creation of the specified hosted connection on an interconnect.</p>
    #          <p>Upon creation, the hosted connection is initially in the <code>Ordering</code> state, and
    #       remains in this state until the owner confirms creation of the hosted connection.</p>
    #
    # @param [Hash] params
    #   See {Types::ConfirmConnectionInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the hosted connection.</p>
    #
    # @return [Types::ConfirmConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_connection(
    #     connection_id: 'connectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfirmConnectionOutput
    #   resp.data.connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    def confirm_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfirmConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConfirmConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConfirmConnection
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::ConfirmConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConfirmConnection,
        stubs: @stubs,
        params_class: Params::ConfirmConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :confirm_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       The confirmation of the terms of agreement when creating the connection/link aggregation group (LAG).
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ConfirmCustomerAgreementInput}.
    #
    # @option params [String] :agreement_name
    #   <p>
    #
    #         The name of the customer agreement.
    #
    #       </p>
    #
    # @return [Types::ConfirmCustomerAgreementOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_customer_agreement(
    #     agreement_name: 'agreementName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfirmCustomerAgreementOutput
    #   resp.data.status #=> String
    #
    def confirm_customer_agreement(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfirmCustomerAgreementInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConfirmCustomerAgreementInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConfirmCustomerAgreement
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::ConfirmCustomerAgreement
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConfirmCustomerAgreement,
        stubs: @stubs,
        params_class: Params::ConfirmCustomerAgreementOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :confirm_customer_agreement
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Accepts ownership of a private virtual interface created by another Amazon Web Services account.</p>
    #          <p>After the virtual interface owner makes this call, the virtual interface is
    #       created and attached to the specified virtual private gateway or Direct Connect gateway, and is
    #       made available to handle traffic.</p>
    #
    # @param [Hash] params
    #   See {Types::ConfirmPrivateVirtualInterfaceInput}.
    #
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    # @option params [String] :virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    #
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    # @return [Types::ConfirmPrivateVirtualInterfaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_private_virtual_interface(
    #     virtual_interface_id: 'virtualInterfaceId', # required
    #     virtual_gateway_id: 'virtualGatewayId',
    #     direct_connect_gateway_id: 'directConnectGatewayId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfirmPrivateVirtualInterfaceOutput
    #   resp.data.virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    def confirm_private_virtual_interface(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfirmPrivateVirtualInterfaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConfirmPrivateVirtualInterfaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConfirmPrivateVirtualInterface
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::ConfirmPrivateVirtualInterface
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConfirmPrivateVirtualInterface,
        stubs: @stubs,
        params_class: Params::ConfirmPrivateVirtualInterfaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :confirm_private_virtual_interface
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Accepts ownership of a public virtual interface created by another Amazon Web Services account.</p>
    #          <p>After the virtual interface owner makes this call, the specified virtual interface is
    #       created and made available to handle traffic.</p>
    #
    # @param [Hash] params
    #   See {Types::ConfirmPublicVirtualInterfaceInput}.
    #
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    # @return [Types::ConfirmPublicVirtualInterfaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_public_virtual_interface(
    #     virtual_interface_id: 'virtualInterfaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfirmPublicVirtualInterfaceOutput
    #   resp.data.virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    def confirm_public_virtual_interface(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfirmPublicVirtualInterfaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConfirmPublicVirtualInterfaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConfirmPublicVirtualInterface
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::ConfirmPublicVirtualInterface
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConfirmPublicVirtualInterface,
        stubs: @stubs,
        params_class: Params::ConfirmPublicVirtualInterfaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :confirm_public_virtual_interface
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Accepts ownership of a transit virtual interface created by another Amazon Web Services account.</p>
    #
    #          <p> After the owner of the transit virtual interface makes this call, the specified transit virtual interface is created and made available to handle traffic.</p>
    #
    # @param [Hash] params
    #   See {Types::ConfirmTransitVirtualInterfaceInput}.
    #
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    # @return [Types::ConfirmTransitVirtualInterfaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.confirm_transit_virtual_interface(
    #     virtual_interface_id: 'virtualInterfaceId', # required
    #     direct_connect_gateway_id: 'directConnectGatewayId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ConfirmTransitVirtualInterfaceOutput
    #   resp.data.virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    def confirm_transit_virtual_interface(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ConfirmTransitVirtualInterfaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ConfirmTransitVirtualInterfaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ConfirmTransitVirtualInterface
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::ConfirmTransitVirtualInterface
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ConfirmTransitVirtualInterface,
        stubs: @stubs,
        params_class: Params::ConfirmTransitVirtualInterfaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :confirm_transit_virtual_interface
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a BGP peer on the specified virtual interface.</p>
    #          <p>You must create a BGP peer for the corresponding address family (IPv4/IPv6) in order to access Amazon Web Services resources that also use that address family.</p>
    #          <p>If logical redundancy is not supported by the connection, interconnect, or LAG, the BGP peer cannot
    #       be in the same address family as an existing BGP peer on the virtual interface.</p>
    #          <p>When creating a IPv6 BGP peer, omit the Amazon address and customer address. IPv6 addresses are automatically assigned from
    #       the Amazon pool of IPv6 addresses; you cannot specify custom IPv6 addresses.</p>
    #          <p>For a public virtual interface, the Autonomous System Number (ASN) must be private or already on the allow list for the virtual interface.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateBGPPeerInput}.
    #
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    # @option params [NewBGPPeer] :new_bgp_peer
    #   <p>Information about the BGP peer.</p>
    #
    # @return [Types::CreateBGPPeerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bgp_peer(
    #     virtual_interface_id: 'virtualInterfaceId',
    #     new_bgp_peer: {
    #       asn: 1,
    #       auth_key: 'authKey',
    #       address_family: 'ipv4', # accepts ["ipv4", "ipv6"]
    #       amazon_address: 'amazonAddress',
    #       customer_address: 'customerAddress'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBGPPeerOutput
    #   resp.data.virtual_interface #=> Types::VirtualInterface
    #   resp.data.virtual_interface.owner_account #=> String
    #   resp.data.virtual_interface.virtual_interface_id #=> String
    #   resp.data.virtual_interface.location #=> String
    #   resp.data.virtual_interface.connection_id #=> String
    #   resp.data.virtual_interface.virtual_interface_type #=> String
    #   resp.data.virtual_interface.virtual_interface_name #=> String
    #   resp.data.virtual_interface.vlan #=> Integer
    #   resp.data.virtual_interface.asn #=> Integer
    #   resp.data.virtual_interface.amazon_side_asn #=> Integer
    #   resp.data.virtual_interface.auth_key #=> String
    #   resp.data.virtual_interface.amazon_address #=> String
    #   resp.data.virtual_interface.customer_address #=> String
    #   resp.data.virtual_interface.address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interface.virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.virtual_interface.customer_router_config #=> String
    #   resp.data.virtual_interface.mtu #=> Integer
    #   resp.data.virtual_interface.jumbo_frame_capable #=> Boolean
    #   resp.data.virtual_interface.virtual_gateway_id #=> String
    #   resp.data.virtual_interface.direct_connect_gateway_id #=> String
    #   resp.data.virtual_interface.route_filter_prefixes #=> Array<RouteFilterPrefix>
    #   resp.data.virtual_interface.route_filter_prefixes[0] #=> Types::RouteFilterPrefix
    #   resp.data.virtual_interface.route_filter_prefixes[0].cidr #=> String
    #   resp.data.virtual_interface.bgp_peers #=> Array<BGPPeer>
    #   resp.data.virtual_interface.bgp_peers[0] #=> Types::BGPPeer
    #   resp.data.virtual_interface.bgp_peers[0].bgp_peer_id #=> String
    #   resp.data.virtual_interface.bgp_peers[0].asn #=> Integer
    #   resp.data.virtual_interface.bgp_peers[0].auth_key #=> String
    #   resp.data.virtual_interface.bgp_peers[0].address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interface.bgp_peers[0].amazon_address #=> String
    #   resp.data.virtual_interface.bgp_peers[0].customer_address #=> String
    #   resp.data.virtual_interface.bgp_peers[0].bgp_peer_state #=> String, one of ["verifying", "pending", "available", "deleting", "deleted"]
    #   resp.data.virtual_interface.bgp_peers[0].bgp_status #=> String, one of ["up", "down", "unknown"]
    #   resp.data.virtual_interface.bgp_peers[0].aws_device_v2 #=> String
    #   resp.data.virtual_interface.bgp_peers[0].aws_logical_device_id #=> String
    #   resp.data.virtual_interface.region #=> String
    #   resp.data.virtual_interface.aws_device_v2 #=> String
    #   resp.data.virtual_interface.aws_logical_device_id #=> String
    #   resp.data.virtual_interface.tags #=> Array<Tag>
    #   resp.data.virtual_interface.tags[0] #=> Types::Tag
    #   resp.data.virtual_interface.tags[0].key #=> String
    #   resp.data.virtual_interface.tags[0].value #=> String
    #   resp.data.virtual_interface.site_link_enabled #=> Boolean
    #
    def create_bgp_peer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBGPPeerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBGPPeerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBGPPeer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::CreateBGPPeer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBGPPeer,
        stubs: @stubs,
        params_class: Params::CreateBGPPeerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_bgp_peer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a connection between a customer network and a specific Direct Connect location.</p>
    #
    #          <p>A connection links your internal network to an Direct Connect location over a standard Ethernet fiber-optic
    #       cable. One end of the cable is connected to your router, the other to an Direct Connect router.</p>
    #          <p>To find the locations for your Region, use <a>DescribeLocations</a>.</p>
    #          <p>You can automatically add the new connection to a link aggregation group (LAG) by
    #       specifying a LAG ID in the request. This ensures that the new connection is allocated on the
    #       same Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the endpoint,
    #       the request fails and no connection is created.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConnectionInput}.
    #
    # @option params [String] :location
    #   <p>The location of the connection.</p>
    #
    # @option params [String] :bandwidth
    #   <p>The bandwidth of the connection.</p>
    #
    # @option params [String] :connection_name
    #   <p>The name of the connection.</p>
    #
    # @option params [String] :lag_id
    #   <p>The ID of the LAG.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to associate with the lag.</p>
    #
    # @option params [String] :provider_name
    #   <p>The name of the service provider associated with the requested connection.</p>
    #
    # @option params [Boolean] :request_mac_sec
    #   <p>Indicates whether you want the connection to support MAC Security (MACsec).</p>
    #            <p>MAC Security (MACsec) is only available on dedicated connections. For information about MAC Security (MACsec) prerequisties, see  <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites">MACsec prerequisties</a> in the <i>Direct Connect User Guide</i>.</p>
    #
    # @return [Types::CreateConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection(
    #     location: 'location', # required
    #     bandwidth: 'bandwidth', # required
    #     connection_name: 'connectionName', # required
    #     lag_id: 'lagId',
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value'
    #       }
    #     ],
    #     provider_name: 'providerName',
    #     request_mac_sec: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConnectionOutput
    #   resp.data.owner_account #=> String
    #   resp.data.connection_id #=> String
    #   resp.data.connection_name #=> String
    #   resp.data.connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.region #=> String
    #   resp.data.location #=> String
    #   resp.data.bandwidth #=> String
    #   resp.data.vlan #=> Integer
    #   resp.data.partner_name #=> String
    #   resp.data.loa_issue_time #=> Time
    #   resp.data.lag_id #=> String
    #   resp.data.aws_device #=> String
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.provider_name #=> String
    #   resp.data.mac_sec_capable #=> Boolean
    #   resp.data.port_encryption_status #=> String
    #   resp.data.encryption_mode #=> String
    #   resp.data.mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.mac_sec_keys[0].secret_arn #=> String
    #   resp.data.mac_sec_keys[0].ckn #=> String
    #   resp.data.mac_sec_keys[0].state #=> String
    #   resp.data.mac_sec_keys[0].start_on #=> String
    #
    def create_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConnection
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DuplicateTagKeysException, Errors::TooManyTagsException, Errors::DirectConnectClientException]),
        data_parser: Parsers::CreateConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConnection,
        stubs: @stubs,
        params_class: Params::CreateConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Direct Connect gateway, which is an intermediate object that enables you to connect a set
    #       of virtual interfaces and virtual private gateways. A Direct Connect gateway is global and visible in any
    #       Amazon Web Services Region after it is created. The virtual interfaces and virtual private gateways that
    #       are connected through a Direct Connect gateway can be in different Amazon Web Services Regions. This enables you to
    #       connect to a VPC in any Region, regardless of the Region in which the virtual interfaces
    #       are located, and pass traffic between them.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDirectConnectGatewayInput}.
    #
    # @option params [String] :direct_connect_gateway_name
    #   <p>The name of the Direct Connect gateway.</p>
    #
    # @option params [Integer] :amazon_side_asn
    #   <p>The autonomous system number (ASN) for Border Gateway Protocol (BGP) to be configured
    #         on the Amazon side of the connection. The ASN must be in the private range of 64,512 to
    #         65,534 or 4,200,000,000 to 4,294,967,294. The default is 64512.</p>
    #
    # @return [Types::CreateDirectConnectGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_direct_connect_gateway(
    #     direct_connect_gateway_name: 'directConnectGatewayName', # required
    #     amazon_side_asn: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDirectConnectGatewayOutput
    #   resp.data.direct_connect_gateway #=> Types::DirectConnectGateway
    #   resp.data.direct_connect_gateway.direct_connect_gateway_id #=> String
    #   resp.data.direct_connect_gateway.direct_connect_gateway_name #=> String
    #   resp.data.direct_connect_gateway.amazon_side_asn #=> Integer
    #   resp.data.direct_connect_gateway.owner_account #=> String
    #   resp.data.direct_connect_gateway.direct_connect_gateway_state #=> String, one of ["pending", "available", "deleting", "deleted"]
    #   resp.data.direct_connect_gateway.state_change_error #=> String
    #
    def create_direct_connect_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDirectConnectGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDirectConnectGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDirectConnectGateway
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::CreateDirectConnectGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDirectConnectGateway,
        stubs: @stubs,
        params_class: Params::CreateDirectConnectGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_direct_connect_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an association between a Direct Connect gateway and a virtual private gateway. The virtual
    #       private gateway must be attached to a VPC and must not be associated with another Direct Connect gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDirectConnectGatewayAssociationInput}.
    #
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    # @option params [String] :gateway_id
    #   <p>The ID of the virtual private gateway or transit gateway.</p>
    #
    # @option params [Array<RouteFilterPrefix>] :add_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway</p>
    #            <p>This parameter is required when you create an association to a transit gateway.</p>
    #            <p>For information about how to set the prefixes, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes">Allowed Prefixes</a> in the <i>Direct Connect User Guide</i>.</p>
    #
    # @option params [String] :virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    #
    # @return [Types::CreateDirectConnectGatewayAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_direct_connect_gateway_association(
    #     direct_connect_gateway_id: 'directConnectGatewayId', # required
    #     gateway_id: 'gatewayId',
    #     add_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: 'cidr'
    #       }
    #     ],
    #     virtual_gateway_id: 'virtualGatewayId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDirectConnectGatewayAssociationOutput
    #   resp.data.direct_connect_gateway_association #=> Types::DirectConnectGatewayAssociation
    #   resp.data.direct_connect_gateway_association.direct_connect_gateway_id #=> String
    #   resp.data.direct_connect_gateway_association.direct_connect_gateway_owner_account #=> String
    #   resp.data.direct_connect_gateway_association.association_state #=> String, one of ["associating", "associated", "disassociating", "disassociated", "updating"]
    #   resp.data.direct_connect_gateway_association.state_change_error #=> String
    #   resp.data.direct_connect_gateway_association.associated_gateway #=> Types::AssociatedGateway
    #   resp.data.direct_connect_gateway_association.associated_gateway.id #=> String
    #   resp.data.direct_connect_gateway_association.associated_gateway.type #=> String, one of ["virtualPrivateGateway", "transitGateway"]
    #   resp.data.direct_connect_gateway_association.associated_gateway.owner_account #=> String
    #   resp.data.direct_connect_gateway_association.associated_gateway.region #=> String
    #   resp.data.direct_connect_gateway_association.association_id #=> String
    #   resp.data.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway #=> Array<RouteFilterPrefix>
    #   resp.data.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway[0] #=> Types::RouteFilterPrefix
    #   resp.data.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.data.direct_connect_gateway_association.virtual_gateway_id #=> String
    #   resp.data.direct_connect_gateway_association.virtual_gateway_region #=> String
    #   resp.data.direct_connect_gateway_association.virtual_gateway_owner_account #=> String
    #
    def create_direct_connect_gateway_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDirectConnectGatewayAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDirectConnectGatewayAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDirectConnectGatewayAssociation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::CreateDirectConnectGatewayAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDirectConnectGatewayAssociation,
        stubs: @stubs,
        params_class: Params::CreateDirectConnectGatewayAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_direct_connect_gateway_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a proposal to associate the specified virtual private gateway or transit gateway with the specified Direct Connect gateway.</p>
    #          <p>You can associate a Direct Connect gateway and virtual private gateway or transit gateway that is owned by any Amazon Web Services account. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateDirectConnectGatewayAssociationProposalInput}.
    #
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    # @option params [String] :direct_connect_gateway_owner_account
    #   <p>The ID of the Amazon Web Services account that owns the Direct Connect gateway.</p>
    #
    # @option params [String] :gateway_id
    #   <p>The ID of the virtual private gateway or transit gateway.</p>
    #
    # @option params [Array<RouteFilterPrefix>] :add_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>
    #
    # @option params [Array<RouteFilterPrefix>] :remove_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to no longer advertise to the Direct Connect gateway.</p>
    #
    # @return [Types::CreateDirectConnectGatewayAssociationProposalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_direct_connect_gateway_association_proposal(
    #     direct_connect_gateway_id: 'directConnectGatewayId', # required
    #     direct_connect_gateway_owner_account: 'directConnectGatewayOwnerAccount', # required
    #     gateway_id: 'gatewayId', # required
    #     add_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: 'cidr'
    #       }
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDirectConnectGatewayAssociationProposalOutput
    #   resp.data.direct_connect_gateway_association_proposal #=> Types::DirectConnectGatewayAssociationProposal
    #   resp.data.direct_connect_gateway_association_proposal.proposal_id #=> String
    #   resp.data.direct_connect_gateway_association_proposal.direct_connect_gateway_id #=> String
    #   resp.data.direct_connect_gateway_association_proposal.direct_connect_gateway_owner_account #=> String
    #   resp.data.direct_connect_gateway_association_proposal.proposal_state #=> String, one of ["requested", "accepted", "deleted"]
    #   resp.data.direct_connect_gateway_association_proposal.associated_gateway #=> Types::AssociatedGateway
    #   resp.data.direct_connect_gateway_association_proposal.associated_gateway.id #=> String
    #   resp.data.direct_connect_gateway_association_proposal.associated_gateway.type #=> String, one of ["virtualPrivateGateway", "transitGateway"]
    #   resp.data.direct_connect_gateway_association_proposal.associated_gateway.owner_account #=> String
    #   resp.data.direct_connect_gateway_association_proposal.associated_gateway.region #=> String
    #   resp.data.direct_connect_gateway_association_proposal.existing_allowed_prefixes_to_direct_connect_gateway #=> Array<RouteFilterPrefix>
    #   resp.data.direct_connect_gateway_association_proposal.existing_allowed_prefixes_to_direct_connect_gateway[0] #=> Types::RouteFilterPrefix
    #   resp.data.direct_connect_gateway_association_proposal.existing_allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.data.direct_connect_gateway_association_proposal.requested_allowed_prefixes_to_direct_connect_gateway #=> Array<RouteFilterPrefix>
    #
    def create_direct_connect_gateway_association_proposal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDirectConnectGatewayAssociationProposalInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDirectConnectGatewayAssociationProposalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDirectConnectGatewayAssociationProposal
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::CreateDirectConnectGatewayAssociationProposal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDirectConnectGatewayAssociationProposal,
        stubs: @stubs,
        params_class: Params::CreateDirectConnectGatewayAssociationProposalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_direct_connect_gateway_association_proposal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an interconnect between an Direct Connect Partner's network and a specific Direct Connect location.</p>
    #          <p>An interconnect is a connection that is capable of hosting other connections. The
    #       Direct Connect Partner can use an interconnect to provide Direct Connect hosted
    #       connections to customers through their own network services. Like a standard connection, an
    #       interconnect links the partner's network to an Direct Connect location over a standard Ethernet
    #       fiber-optic cable. One end is connected to the partner's router, the other to an Direct Connect
    #       router.</p>
    #          <p>You can automatically add the new interconnect to a link aggregation group (LAG) by
    #       specifying a LAG ID in the request. This ensures that the new interconnect is allocated on
    #       the same Direct Connect endpoint that hosts the specified LAG. If there are no available ports on the
    #       endpoint, the request fails and no interconnect is created.</p>
    #          <p>For each end customer, the Direct Connect Partner provisions a connection on their interconnect by calling <a>AllocateHostedConnection</a>.
    #       The end customer can then connect to Amazon Web Services resources by creating a virtual interface on their connection, using the VLAN assigned to them by the Direct Connect Partner.</p>
    #          <note>
    #             <p>Intended for use by Direct Connect Partners only.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateInterconnectInput}.
    #
    # @option params [String] :interconnect_name
    #   <p>The name of the interconnect.</p>
    #
    # @option params [String] :bandwidth
    #   <p>The port bandwidth, in Gbps. The possible values are 1 and 10.</p>
    #
    # @option params [String] :location
    #   <p>The location of the interconnect.</p>
    #
    # @option params [String] :lag_id
    #   <p>The ID of the LAG.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to associate with the interconnect.</p>
    #
    # @option params [String] :provider_name
    #   <p>The name of the service provider associated with the interconnect.</p>
    #
    # @return [Types::CreateInterconnectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_interconnect(
    #     interconnect_name: 'interconnectName', # required
    #     bandwidth: 'bandwidth', # required
    #     location: 'location', # required
    #     lag_id: 'lagId',
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value'
    #       }
    #     ],
    #     provider_name: 'providerName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateInterconnectOutput
    #   resp.data.interconnect_id #=> String
    #   resp.data.interconnect_name #=> String
    #   resp.data.interconnect_state #=> String, one of ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #   resp.data.region #=> String
    #   resp.data.location #=> String
    #   resp.data.bandwidth #=> String
    #   resp.data.loa_issue_time #=> Time
    #   resp.data.lag_id #=> String
    #   resp.data.aws_device #=> String
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.provider_name #=> String
    #
    def create_interconnect(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateInterconnectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateInterconnectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateInterconnect
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DuplicateTagKeysException, Errors::TooManyTagsException, Errors::DirectConnectClientException]),
        data_parser: Parsers::CreateInterconnect
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateInterconnect,
        stubs: @stubs,
        params_class: Params::CreateInterconnectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_interconnect
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a link aggregation group (LAG) with the specified number of bundled
    #       physical dedicated connections between the customer network and a specific Direct Connect location.
    #       A LAG is a logical interface that uses the Link Aggregation Control Protocol
    #       (LACP) to aggregate multiple interfaces, enabling you to treat them as a single
    #       interface.</p>
    #         <p>All connections in a LAG must use the same bandwidth (either 1Gbps or 10Gbps) and must terminate at the same Direct Connect endpoint.</p>
    #          <p>You can have up to 10 dedicated connections per LAG. Regardless of this limit, if you
    #       request more connections for the LAG than Direct Connect can allocate on a single endpoint, no LAG is
    #       created.</p>
    #          <p>You can specify an existing physical dedicated connection or interconnect to include in
    #       the LAG (which counts towards the total number of connections). Doing so interrupts the
    #       current physical dedicated connection, and re-establishes them as a member of the LAG. The LAG
    #       will be created on the same Direct Connect endpoint to which the dedicated connection terminates. Any
    #       virtual interfaces associated with the dedicated connection are automatically disassociated
    #       and re-associated with the LAG. The connection ID does not change.</p>
    #          <p>If the Amazon Web Services account used to create a LAG is a registered Direct Connect Partner, the LAG is
    #       automatically enabled to host sub-connections. For a LAG owned by a partner, any associated virtual
    #       interfaces cannot be directly configured.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLagInput}.
    #
    # @option params [Integer] :number_of_connections
    #   <p>The number of physical dedicated connections initially provisioned and bundled by the
    #         LAG.</p>
    #
    # @option params [String] :location
    #   <p>The location for the LAG.</p>
    #
    # @option params [String] :connections_bandwidth
    #   <p>The bandwidth of the individual physical dedicated connections bundled by the LAG. The
    #         possible values are 1Gbps and 10Gbps. </p>
    #
    # @option params [String] :lag_name
    #   <p>The name of the LAG.</p>
    #
    # @option params [String] :connection_id
    #   <p>The ID of an existing dedicated connection to migrate to the LAG.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to associate with the LAG.</p>
    #
    # @option params [Array<Tag>] :child_connection_tags
    #   <p>The tags to associate with the automtically created LAGs.</p>
    #
    # @option params [String] :provider_name
    #   <p>The name of the service provider associated with the LAG.</p>
    #
    # @option params [Boolean] :request_mac_sec
    #   <p>Indicates whether the connection will support MAC Security (MACsec).</p>
    #            <note>
    #               <p>All connections in the LAG must be capable of  supporting MAC Security (MACsec). For information about MAC Security (MACsec) prerequisties, see  <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites">MACsec prerequisties</a> in the <i>Direct Connect User Guide</i>.</p>
    #            </note>
    #
    # @return [Types::CreateLagOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_lag(
    #     number_of_connections: 1, # required
    #     location: 'location', # required
    #     connections_bandwidth: 'connectionsBandwidth', # required
    #     lag_name: 'lagName', # required
    #     connection_id: 'connectionId',
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value'
    #       }
    #     ],
    #     provider_name: 'providerName',
    #     request_mac_sec: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLagOutput
    #   resp.data.connections_bandwidth #=> String
    #   resp.data.number_of_connections #=> Integer
    #   resp.data.lag_id #=> String
    #   resp.data.owner_account #=> String
    #   resp.data.lag_name #=> String
    #   resp.data.lag_state #=> String, one of ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #   resp.data.location #=> String
    #   resp.data.region #=> String
    #   resp.data.minimum_links #=> Integer
    #   resp.data.aws_device #=> String
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.connections #=> Array<Connection>
    #   resp.data.connections[0] #=> Types::Connection
    #   resp.data.connections[0].owner_account #=> String
    #   resp.data.connections[0].connection_id #=> String
    #   resp.data.connections[0].connection_name #=> String
    #   resp.data.connections[0].connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.connections[0].region #=> String
    #   resp.data.connections[0].location #=> String
    #   resp.data.connections[0].bandwidth #=> String
    #   resp.data.connections[0].vlan #=> Integer
    #   resp.data.connections[0].partner_name #=> String
    #   resp.data.connections[0].loa_issue_time #=> Time
    #   resp.data.connections[0].lag_id #=> String
    #   resp.data.connections[0].aws_device #=> String
    #   resp.data.connections[0].jumbo_frame_capable #=> Boolean
    #   resp.data.connections[0].aws_device_v2 #=> String
    #   resp.data.connections[0].aws_logical_device_id #=> String
    #   resp.data.connections[0].has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.connections[0].tags #=> Array<Tag>
    #   resp.data.connections[0].tags[0] #=> Types::Tag
    #   resp.data.connections[0].tags[0].key #=> String
    #   resp.data.connections[0].tags[0].value #=> String
    #   resp.data.connections[0].provider_name #=> String
    #   resp.data.connections[0].mac_sec_capable #=> Boolean
    #   resp.data.connections[0].port_encryption_status #=> String
    #   resp.data.connections[0].encryption_mode #=> String
    #   resp.data.connections[0].mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.connections[0].mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.connections[0].mac_sec_keys[0].secret_arn #=> String
    #   resp.data.connections[0].mac_sec_keys[0].ckn #=> String
    #   resp.data.connections[0].mac_sec_keys[0].state #=> String
    #   resp.data.connections[0].mac_sec_keys[0].start_on #=> String
    #   resp.data.allows_hosted_connections #=> Boolean
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.provider_name #=> String
    #   resp.data.mac_sec_capable #=> Boolean
    #   resp.data.encryption_mode #=> String
    #   resp.data.mac_sec_keys #=> Array<MacSecKey>
    #
    def create_lag(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLagInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLagInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLag
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DuplicateTagKeysException, Errors::TooManyTagsException, Errors::DirectConnectClientException]),
        data_parser: Parsers::CreateLag
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLag,
        stubs: @stubs,
        params_class: Params::CreateLagOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_lag
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a private virtual interface. A virtual interface is the VLAN that transports Direct Connect traffic.
    #       A private virtual interface can be connected to either a Direct Connect gateway or a Virtual Private Gateway (VGW).
    #       Connecting the private virtual interface to a Direct Connect gateway enables the possibility for connecting to multiple
    #       VPCs, including VPCs in different Amazon Web Services Regions. Connecting the private virtual interface
    #       to a VGW only provides access to a single VPC within the same Region.</p>
    #          <p>Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause an update to
    #       the underlying physical connection if it wasn't updated to support jumbo frames. Updating
    #       the connection disrupts network connectivity for all virtual interfaces associated with
    #       the connection for up to 30 seconds. To check whether your connection supports jumbo
    #       frames, call <a>DescribeConnections</a>. To check whether your virtual
    #       interface supports jumbo frames, call <a>DescribeVirtualInterfaces</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePrivateVirtualInterfaceInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    #
    # @option params [NewPrivateVirtualInterface] :new_private_virtual_interface
    #   <p>Information about the private virtual interface.</p>
    #
    # @return [Types::CreatePrivateVirtualInterfaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_private_virtual_interface(
    #     connection_id: 'connectionId', # required
    #     new_private_virtual_interface: {
    #       virtual_interface_name: 'virtualInterfaceName', # required
    #       vlan: 1, # required
    #       asn: 1, # required
    #       mtu: 1,
    #       auth_key: 'authKey',
    #       amazon_address: 'amazonAddress',
    #       customer_address: 'customerAddress',
    #       address_family: 'ipv4', # accepts ["ipv4", "ipv6"]
    #       virtual_gateway_id: 'virtualGatewayId',
    #       direct_connect_gateway_id: 'directConnectGatewayId',
    #       tags: [
    #         {
    #           key: 'key', # required
    #           value: 'value'
    #         }
    #       ],
    #       enable_site_link: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePrivateVirtualInterfaceOutput
    #   resp.data.owner_account #=> String
    #   resp.data.virtual_interface_id #=> String
    #   resp.data.location #=> String
    #   resp.data.connection_id #=> String
    #   resp.data.virtual_interface_type #=> String
    #   resp.data.virtual_interface_name #=> String
    #   resp.data.vlan #=> Integer
    #   resp.data.asn #=> Integer
    #   resp.data.amazon_side_asn #=> Integer
    #   resp.data.auth_key #=> String
    #   resp.data.amazon_address #=> String
    #   resp.data.customer_address #=> String
    #   resp.data.address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.customer_router_config #=> String
    #   resp.data.mtu #=> Integer
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.virtual_gateway_id #=> String
    #   resp.data.direct_connect_gateway_id #=> String
    #   resp.data.route_filter_prefixes #=> Array<RouteFilterPrefix>
    #   resp.data.route_filter_prefixes[0] #=> Types::RouteFilterPrefix
    #   resp.data.route_filter_prefixes[0].cidr #=> String
    #   resp.data.bgp_peers #=> Array<BGPPeer>
    #   resp.data.bgp_peers[0] #=> Types::BGPPeer
    #   resp.data.bgp_peers[0].bgp_peer_id #=> String
    #   resp.data.bgp_peers[0].asn #=> Integer
    #   resp.data.bgp_peers[0].auth_key #=> String
    #   resp.data.bgp_peers[0].address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.bgp_peers[0].amazon_address #=> String
    #   resp.data.bgp_peers[0].customer_address #=> String
    #   resp.data.bgp_peers[0].bgp_peer_state #=> String, one of ["verifying", "pending", "available", "deleting", "deleted"]
    #   resp.data.bgp_peers[0].bgp_status #=> String, one of ["up", "down", "unknown"]
    #   resp.data.bgp_peers[0].aws_device_v2 #=> String
    #   resp.data.bgp_peers[0].aws_logical_device_id #=> String
    #   resp.data.region #=> String
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.site_link_enabled #=> Boolean
    #
    def create_private_virtual_interface(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePrivateVirtualInterfaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePrivateVirtualInterfaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePrivateVirtualInterface
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DuplicateTagKeysException, Errors::TooManyTagsException, Errors::DirectConnectClientException]),
        data_parser: Parsers::CreatePrivateVirtualInterface
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePrivateVirtualInterface,
        stubs: @stubs,
        params_class: Params::CreatePrivateVirtualInterfaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_private_virtual_interface
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a public virtual interface. A virtual interface is the VLAN that transports Direct Connect traffic.
    #       A public virtual interface supports sending traffic to public services of Amazon Web Services such as Amazon S3.</p>
    #          <p>When creating an IPv6 public virtual interface (<code>addressFamily</code> is <code>ipv6</code>), leave the <code>customer</code>
    #       and <code>amazon</code> address fields blank to use auto-assigned IPv6 space. Custom IPv6 addresses are not supported.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePublicVirtualInterfaceInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    #
    # @option params [NewPublicVirtualInterface] :new_public_virtual_interface
    #   <p>Information about the public virtual interface.</p>
    #
    # @return [Types::CreatePublicVirtualInterfaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_public_virtual_interface(
    #     connection_id: 'connectionId', # required
    #     new_public_virtual_interface: {
    #       virtual_interface_name: 'virtualInterfaceName', # required
    #       vlan: 1, # required
    #       asn: 1, # required
    #       auth_key: 'authKey',
    #       amazon_address: 'amazonAddress',
    #       customer_address: 'customerAddress',
    #       address_family: 'ipv4', # accepts ["ipv4", "ipv6"]
    #       route_filter_prefixes: [
    #         {
    #           cidr: 'cidr'
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: 'key', # required
    #           value: 'value'
    #         }
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePublicVirtualInterfaceOutput
    #   resp.data.owner_account #=> String
    #   resp.data.virtual_interface_id #=> String
    #   resp.data.location #=> String
    #   resp.data.connection_id #=> String
    #   resp.data.virtual_interface_type #=> String
    #   resp.data.virtual_interface_name #=> String
    #   resp.data.vlan #=> Integer
    #   resp.data.asn #=> Integer
    #   resp.data.amazon_side_asn #=> Integer
    #   resp.data.auth_key #=> String
    #   resp.data.amazon_address #=> String
    #   resp.data.customer_address #=> String
    #   resp.data.address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.customer_router_config #=> String
    #   resp.data.mtu #=> Integer
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.virtual_gateway_id #=> String
    #   resp.data.direct_connect_gateway_id #=> String
    #   resp.data.route_filter_prefixes #=> Array<RouteFilterPrefix>
    #   resp.data.route_filter_prefixes[0] #=> Types::RouteFilterPrefix
    #   resp.data.route_filter_prefixes[0].cidr #=> String
    #   resp.data.bgp_peers #=> Array<BGPPeer>
    #   resp.data.bgp_peers[0] #=> Types::BGPPeer
    #   resp.data.bgp_peers[0].bgp_peer_id #=> String
    #   resp.data.bgp_peers[0].asn #=> Integer
    #   resp.data.bgp_peers[0].auth_key #=> String
    #   resp.data.bgp_peers[0].address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.bgp_peers[0].amazon_address #=> String
    #   resp.data.bgp_peers[0].customer_address #=> String
    #   resp.data.bgp_peers[0].bgp_peer_state #=> String, one of ["verifying", "pending", "available", "deleting", "deleted"]
    #   resp.data.bgp_peers[0].bgp_status #=> String, one of ["up", "down", "unknown"]
    #   resp.data.bgp_peers[0].aws_device_v2 #=> String
    #   resp.data.bgp_peers[0].aws_logical_device_id #=> String
    #   resp.data.region #=> String
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.site_link_enabled #=> Boolean
    #
    def create_public_virtual_interface(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePublicVirtualInterfaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePublicVirtualInterfaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePublicVirtualInterface
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DuplicateTagKeysException, Errors::TooManyTagsException, Errors::DirectConnectClientException]),
        data_parser: Parsers::CreatePublicVirtualInterface
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePublicVirtualInterface,
        stubs: @stubs,
        params_class: Params::CreatePublicVirtualInterfaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_public_virtual_interface
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a transit virtual interface. A transit virtual interface should be used to access one or more transit gateways associated with Direct Connect gateways. A transit virtual interface enables the connection of multiple VPCs attached to a transit gateway to a Direct Connect gateway.</p>
    #          <important>
    #             <p>If you associate your transit gateway with one or more Direct Connect gateways, the Autonomous System Number (ASN) used by the transit gateway and the Direct Connect gateway must be different. For example, if you use the default ASN 64512 for both your the transit gateway and Direct Connect gateway, the association request fails.</p>
    #          </important>
    #          <p>Setting the MTU of a virtual interface to 8500 (jumbo frames) can cause an update to
    #       the underlying physical connection if it wasn't updated to support jumbo frames. Updating
    #       the connection disrupts network connectivity for all virtual interfaces associated with
    #       the connection for up to 30 seconds. To check whether your connection supports jumbo
    #       frames, call <a>DescribeConnections</a>. To check whether your virtual
    #       interface supports jumbo frames, call <a>DescribeVirtualInterfaces</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTransitVirtualInterfaceInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    #
    # @option params [NewTransitVirtualInterface] :new_transit_virtual_interface
    #   <p>Information about the transit virtual interface.</p>
    #
    # @return [Types::CreateTransitVirtualInterfaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_transit_virtual_interface(
    #     connection_id: 'connectionId', # required
    #     new_transit_virtual_interface: {
    #       virtual_interface_name: 'virtualInterfaceName',
    #       vlan: 1,
    #       asn: 1,
    #       mtu: 1,
    #       auth_key: 'authKey',
    #       amazon_address: 'amazonAddress',
    #       customer_address: 'customerAddress',
    #       address_family: 'ipv4', # accepts ["ipv4", "ipv6"]
    #       direct_connect_gateway_id: 'directConnectGatewayId',
    #       tags: [
    #         {
    #           key: 'key', # required
    #           value: 'value'
    #         }
    #       ],
    #       enable_site_link: false
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTransitVirtualInterfaceOutput
    #   resp.data.virtual_interface #=> Types::VirtualInterface
    #   resp.data.virtual_interface.owner_account #=> String
    #   resp.data.virtual_interface.virtual_interface_id #=> String
    #   resp.data.virtual_interface.location #=> String
    #   resp.data.virtual_interface.connection_id #=> String
    #   resp.data.virtual_interface.virtual_interface_type #=> String
    #   resp.data.virtual_interface.virtual_interface_name #=> String
    #   resp.data.virtual_interface.vlan #=> Integer
    #   resp.data.virtual_interface.asn #=> Integer
    #   resp.data.virtual_interface.amazon_side_asn #=> Integer
    #   resp.data.virtual_interface.auth_key #=> String
    #   resp.data.virtual_interface.amazon_address #=> String
    #   resp.data.virtual_interface.customer_address #=> String
    #   resp.data.virtual_interface.address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interface.virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.virtual_interface.customer_router_config #=> String
    #   resp.data.virtual_interface.mtu #=> Integer
    #   resp.data.virtual_interface.jumbo_frame_capable #=> Boolean
    #   resp.data.virtual_interface.virtual_gateway_id #=> String
    #   resp.data.virtual_interface.direct_connect_gateway_id #=> String
    #   resp.data.virtual_interface.route_filter_prefixes #=> Array<RouteFilterPrefix>
    #   resp.data.virtual_interface.route_filter_prefixes[0] #=> Types::RouteFilterPrefix
    #   resp.data.virtual_interface.route_filter_prefixes[0].cidr #=> String
    #   resp.data.virtual_interface.bgp_peers #=> Array<BGPPeer>
    #   resp.data.virtual_interface.bgp_peers[0] #=> Types::BGPPeer
    #   resp.data.virtual_interface.bgp_peers[0].bgp_peer_id #=> String
    #   resp.data.virtual_interface.bgp_peers[0].asn #=> Integer
    #   resp.data.virtual_interface.bgp_peers[0].auth_key #=> String
    #   resp.data.virtual_interface.bgp_peers[0].address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interface.bgp_peers[0].amazon_address #=> String
    #   resp.data.virtual_interface.bgp_peers[0].customer_address #=> String
    #   resp.data.virtual_interface.bgp_peers[0].bgp_peer_state #=> String, one of ["verifying", "pending", "available", "deleting", "deleted"]
    #   resp.data.virtual_interface.bgp_peers[0].bgp_status #=> String, one of ["up", "down", "unknown"]
    #   resp.data.virtual_interface.bgp_peers[0].aws_device_v2 #=> String
    #   resp.data.virtual_interface.bgp_peers[0].aws_logical_device_id #=> String
    #   resp.data.virtual_interface.region #=> String
    #   resp.data.virtual_interface.aws_device_v2 #=> String
    #   resp.data.virtual_interface.aws_logical_device_id #=> String
    #   resp.data.virtual_interface.tags #=> Array<Tag>
    #   resp.data.virtual_interface.tags[0] #=> Types::Tag
    #   resp.data.virtual_interface.tags[0].key #=> String
    #   resp.data.virtual_interface.tags[0].value #=> String
    #   resp.data.virtual_interface.site_link_enabled #=> Boolean
    #
    def create_transit_virtual_interface(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTransitVirtualInterfaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTransitVirtualInterfaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTransitVirtualInterface
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DuplicateTagKeysException, Errors::TooManyTagsException, Errors::DirectConnectClientException]),
        data_parser: Parsers::CreateTransitVirtualInterface
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTransitVirtualInterface,
        stubs: @stubs,
        params_class: Params::CreateTransitVirtualInterfaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_transit_virtual_interface
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified BGP peer on the specified virtual interface with the specified customer address and ASN.</p>
    #          <p>You cannot delete the last BGP peer from a virtual interface.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBGPPeerInput}.
    #
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    # @option params [Integer] :asn
    #   <p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
    #
    # @option params [String] :customer_address
    #   <p>The IP address assigned to the customer interface.</p>
    #
    # @option params [String] :bgp_peer_id
    #   <p>The ID of the BGP peer.</p>
    #
    # @return [Types::DeleteBGPPeerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bgp_peer(
    #     virtual_interface_id: 'virtualInterfaceId',
    #     asn: 1,
    #     customer_address: 'customerAddress',
    #     bgp_peer_id: 'bgpPeerId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBGPPeerOutput
    #   resp.data.virtual_interface #=> Types::VirtualInterface
    #   resp.data.virtual_interface.owner_account #=> String
    #   resp.data.virtual_interface.virtual_interface_id #=> String
    #   resp.data.virtual_interface.location #=> String
    #   resp.data.virtual_interface.connection_id #=> String
    #   resp.data.virtual_interface.virtual_interface_type #=> String
    #   resp.data.virtual_interface.virtual_interface_name #=> String
    #   resp.data.virtual_interface.vlan #=> Integer
    #   resp.data.virtual_interface.asn #=> Integer
    #   resp.data.virtual_interface.amazon_side_asn #=> Integer
    #   resp.data.virtual_interface.auth_key #=> String
    #   resp.data.virtual_interface.amazon_address #=> String
    #   resp.data.virtual_interface.customer_address #=> String
    #   resp.data.virtual_interface.address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interface.virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.virtual_interface.customer_router_config #=> String
    #   resp.data.virtual_interface.mtu #=> Integer
    #   resp.data.virtual_interface.jumbo_frame_capable #=> Boolean
    #   resp.data.virtual_interface.virtual_gateway_id #=> String
    #   resp.data.virtual_interface.direct_connect_gateway_id #=> String
    #   resp.data.virtual_interface.route_filter_prefixes #=> Array<RouteFilterPrefix>
    #   resp.data.virtual_interface.route_filter_prefixes[0] #=> Types::RouteFilterPrefix
    #   resp.data.virtual_interface.route_filter_prefixes[0].cidr #=> String
    #   resp.data.virtual_interface.bgp_peers #=> Array<BGPPeer>
    #   resp.data.virtual_interface.bgp_peers[0] #=> Types::BGPPeer
    #   resp.data.virtual_interface.bgp_peers[0].bgp_peer_id #=> String
    #   resp.data.virtual_interface.bgp_peers[0].asn #=> Integer
    #   resp.data.virtual_interface.bgp_peers[0].auth_key #=> String
    #   resp.data.virtual_interface.bgp_peers[0].address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interface.bgp_peers[0].amazon_address #=> String
    #   resp.data.virtual_interface.bgp_peers[0].customer_address #=> String
    #   resp.data.virtual_interface.bgp_peers[0].bgp_peer_state #=> String, one of ["verifying", "pending", "available", "deleting", "deleted"]
    #   resp.data.virtual_interface.bgp_peers[0].bgp_status #=> String, one of ["up", "down", "unknown"]
    #   resp.data.virtual_interface.bgp_peers[0].aws_device_v2 #=> String
    #   resp.data.virtual_interface.bgp_peers[0].aws_logical_device_id #=> String
    #   resp.data.virtual_interface.region #=> String
    #   resp.data.virtual_interface.aws_device_v2 #=> String
    #   resp.data.virtual_interface.aws_logical_device_id #=> String
    #   resp.data.virtual_interface.tags #=> Array<Tag>
    #   resp.data.virtual_interface.tags[0] #=> Types::Tag
    #   resp.data.virtual_interface.tags[0].key #=> String
    #   resp.data.virtual_interface.tags[0].value #=> String
    #   resp.data.virtual_interface.site_link_enabled #=> Boolean
    #
    def delete_bgp_peer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBGPPeerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBGPPeerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBGPPeer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DeleteBGPPeer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBGPPeer,
        stubs: @stubs,
        params_class: Params::DeleteBGPPeerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_bgp_peer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified connection.</p>
    #          <p>Deleting a connection only stops the Direct Connect port hour and data transfer charges.
    #       If you are partnering with any third parties to connect with the Direct Connect location,
    #       you must cancel your service with them separately.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConnectionInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    #
    # @return [Types::DeleteConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection(
    #     connection_id: 'connectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConnectionOutput
    #   resp.data.owner_account #=> String
    #   resp.data.connection_id #=> String
    #   resp.data.connection_name #=> String
    #   resp.data.connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.region #=> String
    #   resp.data.location #=> String
    #   resp.data.bandwidth #=> String
    #   resp.data.vlan #=> Integer
    #   resp.data.partner_name #=> String
    #   resp.data.loa_issue_time #=> Time
    #   resp.data.lag_id #=> String
    #   resp.data.aws_device #=> String
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.provider_name #=> String
    #   resp.data.mac_sec_capable #=> Boolean
    #   resp.data.port_encryption_status #=> String
    #   resp.data.encryption_mode #=> String
    #   resp.data.mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.mac_sec_keys[0].secret_arn #=> String
    #   resp.data.mac_sec_keys[0].ckn #=> String
    #   resp.data.mac_sec_keys[0].state #=> String
    #   resp.data.mac_sec_keys[0].start_on #=> String
    #
    def delete_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConnection
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DeleteConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConnection,
        stubs: @stubs,
        params_class: Params::DeleteConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified Direct Connect gateway. You must first delete all virtual interfaces that are
    #       attached to the Direct Connect gateway and disassociate all virtual private gateways associated
    #       with the Direct Connect gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDirectConnectGatewayInput}.
    #
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    # @return [Types::DeleteDirectConnectGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_direct_connect_gateway(
    #     direct_connect_gateway_id: 'directConnectGatewayId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDirectConnectGatewayOutput
    #   resp.data.direct_connect_gateway #=> Types::DirectConnectGateway
    #   resp.data.direct_connect_gateway.direct_connect_gateway_id #=> String
    #   resp.data.direct_connect_gateway.direct_connect_gateway_name #=> String
    #   resp.data.direct_connect_gateway.amazon_side_asn #=> Integer
    #   resp.data.direct_connect_gateway.owner_account #=> String
    #   resp.data.direct_connect_gateway.direct_connect_gateway_state #=> String, one of ["pending", "available", "deleting", "deleted"]
    #   resp.data.direct_connect_gateway.state_change_error #=> String
    #
    def delete_direct_connect_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDirectConnectGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDirectConnectGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDirectConnectGateway
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DeleteDirectConnectGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDirectConnectGateway,
        stubs: @stubs,
        params_class: Params::DeleteDirectConnectGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_direct_connect_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the association between the specified Direct Connect gateway and virtual private gateway.</p>
    #          <p>We recommend that you specify the <code>associationID</code> to delete the association. Alternatively, if you own virtual gateway and a Direct Connect gateway association, you can specify the <code>virtualGatewayId</code> and <code>directConnectGatewayId</code> to delete an association.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDirectConnectGatewayAssociationInput}.
    #
    # @option params [String] :association_id
    #   <p>The ID of the Direct Connect gateway association.</p>
    #
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    # @option params [String] :virtual_gateway_id
    #   <p>The ID of the virtual private gateway.</p>
    #
    # @return [Types::DeleteDirectConnectGatewayAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_direct_connect_gateway_association(
    #     association_id: 'associationId',
    #     direct_connect_gateway_id: 'directConnectGatewayId',
    #     virtual_gateway_id: 'virtualGatewayId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDirectConnectGatewayAssociationOutput
    #   resp.data.direct_connect_gateway_association #=> Types::DirectConnectGatewayAssociation
    #   resp.data.direct_connect_gateway_association.direct_connect_gateway_id #=> String
    #   resp.data.direct_connect_gateway_association.direct_connect_gateway_owner_account #=> String
    #   resp.data.direct_connect_gateway_association.association_state #=> String, one of ["associating", "associated", "disassociating", "disassociated", "updating"]
    #   resp.data.direct_connect_gateway_association.state_change_error #=> String
    #   resp.data.direct_connect_gateway_association.associated_gateway #=> Types::AssociatedGateway
    #   resp.data.direct_connect_gateway_association.associated_gateway.id #=> String
    #   resp.data.direct_connect_gateway_association.associated_gateway.type #=> String, one of ["virtualPrivateGateway", "transitGateway"]
    #   resp.data.direct_connect_gateway_association.associated_gateway.owner_account #=> String
    #   resp.data.direct_connect_gateway_association.associated_gateway.region #=> String
    #   resp.data.direct_connect_gateway_association.association_id #=> String
    #   resp.data.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway #=> Array<RouteFilterPrefix>
    #   resp.data.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway[0] #=> Types::RouteFilterPrefix
    #   resp.data.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.data.direct_connect_gateway_association.virtual_gateway_id #=> String
    #   resp.data.direct_connect_gateway_association.virtual_gateway_region #=> String
    #   resp.data.direct_connect_gateway_association.virtual_gateway_owner_account #=> String
    #
    def delete_direct_connect_gateway_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDirectConnectGatewayAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDirectConnectGatewayAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDirectConnectGatewayAssociation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DeleteDirectConnectGatewayAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDirectConnectGatewayAssociation,
        stubs: @stubs,
        params_class: Params::DeleteDirectConnectGatewayAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_direct_connect_gateway_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the association proposal request between the specified Direct Connect gateway and virtual private gateway or transit gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDirectConnectGatewayAssociationProposalInput}.
    #
    # @option params [String] :proposal_id
    #   <p>The ID of the proposal.</p>
    #
    # @return [Types::DeleteDirectConnectGatewayAssociationProposalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_direct_connect_gateway_association_proposal(
    #     proposal_id: 'proposalId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDirectConnectGatewayAssociationProposalOutput
    #   resp.data.direct_connect_gateway_association_proposal #=> Types::DirectConnectGatewayAssociationProposal
    #   resp.data.direct_connect_gateway_association_proposal.proposal_id #=> String
    #   resp.data.direct_connect_gateway_association_proposal.direct_connect_gateway_id #=> String
    #   resp.data.direct_connect_gateway_association_proposal.direct_connect_gateway_owner_account #=> String
    #   resp.data.direct_connect_gateway_association_proposal.proposal_state #=> String, one of ["requested", "accepted", "deleted"]
    #   resp.data.direct_connect_gateway_association_proposal.associated_gateway #=> Types::AssociatedGateway
    #   resp.data.direct_connect_gateway_association_proposal.associated_gateway.id #=> String
    #   resp.data.direct_connect_gateway_association_proposal.associated_gateway.type #=> String, one of ["virtualPrivateGateway", "transitGateway"]
    #   resp.data.direct_connect_gateway_association_proposal.associated_gateway.owner_account #=> String
    #   resp.data.direct_connect_gateway_association_proposal.associated_gateway.region #=> String
    #   resp.data.direct_connect_gateway_association_proposal.existing_allowed_prefixes_to_direct_connect_gateway #=> Array<RouteFilterPrefix>
    #   resp.data.direct_connect_gateway_association_proposal.existing_allowed_prefixes_to_direct_connect_gateway[0] #=> Types::RouteFilterPrefix
    #   resp.data.direct_connect_gateway_association_proposal.existing_allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.data.direct_connect_gateway_association_proposal.requested_allowed_prefixes_to_direct_connect_gateway #=> Array<RouteFilterPrefix>
    #
    def delete_direct_connect_gateway_association_proposal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDirectConnectGatewayAssociationProposalInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDirectConnectGatewayAssociationProposalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDirectConnectGatewayAssociationProposal
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DeleteDirectConnectGatewayAssociationProposal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDirectConnectGatewayAssociationProposal,
        stubs: @stubs,
        params_class: Params::DeleteDirectConnectGatewayAssociationProposalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_direct_connect_gateway_association_proposal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified interconnect.</p>
    #          <note>
    #             <p>Intended for use
    #         by Direct Connect Partners only.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteInterconnectInput}.
    #
    # @option params [String] :interconnect_id
    #   <p>The ID of the interconnect.</p>
    #
    # @return [Types::DeleteInterconnectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_interconnect(
    #     interconnect_id: 'interconnectId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInterconnectOutput
    #   resp.data.interconnect_state #=> String, one of ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #
    def delete_interconnect(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInterconnectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInterconnectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInterconnect
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DeleteInterconnect
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInterconnect,
        stubs: @stubs,
        params_class: Params::DeleteInterconnectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_interconnect
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified link aggregation group (LAG). You cannot delete a LAG if it has active
    #       virtual interfaces or hosted connections.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLagInput}.
    #
    # @option params [String] :lag_id
    #   <p>The ID of the LAG.</p>
    #
    # @return [Types::DeleteLagOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_lag(
    #     lag_id: 'lagId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLagOutput
    #   resp.data.connections_bandwidth #=> String
    #   resp.data.number_of_connections #=> Integer
    #   resp.data.lag_id #=> String
    #   resp.data.owner_account #=> String
    #   resp.data.lag_name #=> String
    #   resp.data.lag_state #=> String, one of ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #   resp.data.location #=> String
    #   resp.data.region #=> String
    #   resp.data.minimum_links #=> Integer
    #   resp.data.aws_device #=> String
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.connections #=> Array<Connection>
    #   resp.data.connections[0] #=> Types::Connection
    #   resp.data.connections[0].owner_account #=> String
    #   resp.data.connections[0].connection_id #=> String
    #   resp.data.connections[0].connection_name #=> String
    #   resp.data.connections[0].connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.connections[0].region #=> String
    #   resp.data.connections[0].location #=> String
    #   resp.data.connections[0].bandwidth #=> String
    #   resp.data.connections[0].vlan #=> Integer
    #   resp.data.connections[0].partner_name #=> String
    #   resp.data.connections[0].loa_issue_time #=> Time
    #   resp.data.connections[0].lag_id #=> String
    #   resp.data.connections[0].aws_device #=> String
    #   resp.data.connections[0].jumbo_frame_capable #=> Boolean
    #   resp.data.connections[0].aws_device_v2 #=> String
    #   resp.data.connections[0].aws_logical_device_id #=> String
    #   resp.data.connections[0].has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.connections[0].tags #=> Array<Tag>
    #   resp.data.connections[0].tags[0] #=> Types::Tag
    #   resp.data.connections[0].tags[0].key #=> String
    #   resp.data.connections[0].tags[0].value #=> String
    #   resp.data.connections[0].provider_name #=> String
    #   resp.data.connections[0].mac_sec_capable #=> Boolean
    #   resp.data.connections[0].port_encryption_status #=> String
    #   resp.data.connections[0].encryption_mode #=> String
    #   resp.data.connections[0].mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.connections[0].mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.connections[0].mac_sec_keys[0].secret_arn #=> String
    #   resp.data.connections[0].mac_sec_keys[0].ckn #=> String
    #   resp.data.connections[0].mac_sec_keys[0].state #=> String
    #   resp.data.connections[0].mac_sec_keys[0].start_on #=> String
    #   resp.data.allows_hosted_connections #=> Boolean
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.provider_name #=> String
    #   resp.data.mac_sec_capable #=> Boolean
    #   resp.data.encryption_mode #=> String
    #   resp.data.mac_sec_keys #=> Array<MacSecKey>
    #
    def delete_lag(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLagInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLagInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLag
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DeleteLag
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLag,
        stubs: @stubs,
        params_class: Params::DeleteLagOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_lag
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a virtual interface.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteVirtualInterfaceInput}.
    #
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    # @return [Types::DeleteVirtualInterfaceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_interface(
    #     virtual_interface_id: 'virtualInterfaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVirtualInterfaceOutput
    #   resp.data.virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #
    def delete_virtual_interface(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVirtualInterfaceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVirtualInterfaceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVirtualInterface
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DeleteVirtualInterface
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVirtualInterface,
        stubs: @stubs,
        params_class: Params::DeleteVirtualInterfaceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_virtual_interface
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deprecated. Use <a>DescribeLoa</a> instead.</p>
    #          <p>Gets the LOA-CFA for a connection.</p>
    #          <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that your APN partner or
    #       service provider uses when establishing your cross connect to Amazon Web Services at the colocation facility. For more information,
    #       see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html">Requesting Cross Connects
    #       at Direct Connect Locations</a> in the <i>Direct Connect User Guide</i>.</p>
    #
    # @deprecated
    #
    # @param [Hash] params
    #   See {Types::DescribeConnectionLoaInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    #
    # @option params [String] :provider_name
    #   <p>The name of the APN partner or service provider who establishes connectivity on your behalf. If you specify this parameter,
    #         the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
    #
    # @option params [String] :loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    #
    # @return [Types::DescribeConnectionLoaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connection_loa(
    #     connection_id: 'connectionId', # required
    #     provider_name: 'providerName',
    #     loa_content_type: 'application/pdf' # accepts ["application/pdf"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConnectionLoaOutput
    #   resp.data.loa #=> Types::Loa
    #   resp.data.loa.loa_content #=> String
    #   resp.data.loa.loa_content_type #=> String, one of ["application/pdf"]
    #
    def describe_connection_loa(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConnectionLoaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConnectionLoaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConnectionLoa
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeConnectionLoa
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConnectionLoa,
        stubs: @stubs,
        params_class: Params::DescribeConnectionLoaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_connection_loa
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays the specified connection or all connections in this Region.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConnectionsInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    #
    # @return [Types::DescribeConnectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connections(
    #     connection_id: 'connectionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConnectionsOutput
    #   resp.data.connections #=> Array<Connection>
    #   resp.data.connections[0] #=> Types::Connection
    #   resp.data.connections[0].owner_account #=> String
    #   resp.data.connections[0].connection_id #=> String
    #   resp.data.connections[0].connection_name #=> String
    #   resp.data.connections[0].connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.connections[0].region #=> String
    #   resp.data.connections[0].location #=> String
    #   resp.data.connections[0].bandwidth #=> String
    #   resp.data.connections[0].vlan #=> Integer
    #   resp.data.connections[0].partner_name #=> String
    #   resp.data.connections[0].loa_issue_time #=> Time
    #   resp.data.connections[0].lag_id #=> String
    #   resp.data.connections[0].aws_device #=> String
    #   resp.data.connections[0].jumbo_frame_capable #=> Boolean
    #   resp.data.connections[0].aws_device_v2 #=> String
    #   resp.data.connections[0].aws_logical_device_id #=> String
    #   resp.data.connections[0].has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.connections[0].tags #=> Array<Tag>
    #   resp.data.connections[0].tags[0] #=> Types::Tag
    #   resp.data.connections[0].tags[0].key #=> String
    #   resp.data.connections[0].tags[0].value #=> String
    #   resp.data.connections[0].provider_name #=> String
    #   resp.data.connections[0].mac_sec_capable #=> Boolean
    #   resp.data.connections[0].port_encryption_status #=> String
    #   resp.data.connections[0].encryption_mode #=> String
    #   resp.data.connections[0].mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.connections[0].mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.connections[0].mac_sec_keys[0].secret_arn #=> String
    #   resp.data.connections[0].mac_sec_keys[0].ckn #=> String
    #   resp.data.connections[0].mac_sec_keys[0].state #=> String
    #   resp.data.connections[0].mac_sec_keys[0].start_on #=> String
    #
    def describe_connections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConnectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConnectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConnections
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeConnections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConnections,
        stubs: @stubs,
        params_class: Params::DescribeConnectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_connections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deprecated. Use <a>DescribeHostedConnections</a> instead.</p>
    #          <p>Lists the connections that have been provisioned on the specified interconnect.</p>
    #          <note>
    #             <p>Intended for use by Direct Connect Partners only.</p>
    #          </note>
    #
    # @deprecated
    #
    # @param [Hash] params
    #   See {Types::DescribeConnectionsOnInterconnectInput}.
    #
    # @option params [String] :interconnect_id
    #   <p>The ID of the interconnect.</p>
    #
    # @return [Types::DescribeConnectionsOnInterconnectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connections_on_interconnect(
    #     interconnect_id: 'interconnectId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConnectionsOnInterconnectOutput
    #   resp.data.connections #=> Array<Connection>
    #   resp.data.connections[0] #=> Types::Connection
    #   resp.data.connections[0].owner_account #=> String
    #   resp.data.connections[0].connection_id #=> String
    #   resp.data.connections[0].connection_name #=> String
    #   resp.data.connections[0].connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.connections[0].region #=> String
    #   resp.data.connections[0].location #=> String
    #   resp.data.connections[0].bandwidth #=> String
    #   resp.data.connections[0].vlan #=> Integer
    #   resp.data.connections[0].partner_name #=> String
    #   resp.data.connections[0].loa_issue_time #=> Time
    #   resp.data.connections[0].lag_id #=> String
    #   resp.data.connections[0].aws_device #=> String
    #   resp.data.connections[0].jumbo_frame_capable #=> Boolean
    #   resp.data.connections[0].aws_device_v2 #=> String
    #   resp.data.connections[0].aws_logical_device_id #=> String
    #   resp.data.connections[0].has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.connections[0].tags #=> Array<Tag>
    #   resp.data.connections[0].tags[0] #=> Types::Tag
    #   resp.data.connections[0].tags[0].key #=> String
    #   resp.data.connections[0].tags[0].value #=> String
    #   resp.data.connections[0].provider_name #=> String
    #   resp.data.connections[0].mac_sec_capable #=> Boolean
    #   resp.data.connections[0].port_encryption_status #=> String
    #   resp.data.connections[0].encryption_mode #=> String
    #   resp.data.connections[0].mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.connections[0].mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.connections[0].mac_sec_keys[0].secret_arn #=> String
    #   resp.data.connections[0].mac_sec_keys[0].ckn #=> String
    #   resp.data.connections[0].mac_sec_keys[0].state #=> String
    #   resp.data.connections[0].mac_sec_keys[0].start_on #=> String
    #
    def describe_connections_on_interconnect(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConnectionsOnInterconnectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConnectionsOnInterconnectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConnectionsOnInterconnect
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeConnectionsOnInterconnect
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConnectionsOnInterconnect,
        stubs: @stubs,
        params_class: Params::DescribeConnectionsOnInterconnectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_connections_on_interconnect
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get and view a list of customer agreements, along with their signed status and whether the customer is an NNIPartner, NNIPartnerV2, or a nonPartner. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCustomerMetadataInput}.
    #
    # @return [Types::DescribeCustomerMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_customer_metadata()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCustomerMetadataOutput
    #   resp.data.agreements #=> Array<CustomerAgreement>
    #   resp.data.agreements[0] #=> Types::CustomerAgreement
    #   resp.data.agreements[0].agreement_name #=> String
    #   resp.data.agreements[0].status #=> String
    #   resp.data.nni_partner_type #=> String, one of ["v1", "v2", "nonPartner"]
    #
    def describe_customer_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCustomerMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCustomerMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCustomerMetadata
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeCustomerMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCustomerMetadata,
        stubs: @stubs,
        params_class: Params::DescribeCustomerMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_customer_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes one or more association proposals for connection between a virtual private gateway or transit gateway and a Direct Connect gateway. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDirectConnectGatewayAssociationProposalsInput}.
    #
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    # @option params [String] :proposal_id
    #   <p>The ID of the proposal.</p>
    #
    # @option params [String] :associated_gateway_id
    #   <p>The ID of the associated gateway.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::DescribeDirectConnectGatewayAssociationProposalsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_direct_connect_gateway_association_proposals(
    #     direct_connect_gateway_id: 'directConnectGatewayId',
    #     proposal_id: 'proposalId',
    #     associated_gateway_id: 'associatedGatewayId',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDirectConnectGatewayAssociationProposalsOutput
    #   resp.data.direct_connect_gateway_association_proposals #=> Array<DirectConnectGatewayAssociationProposal>
    #   resp.data.direct_connect_gateway_association_proposals[0] #=> Types::DirectConnectGatewayAssociationProposal
    #   resp.data.direct_connect_gateway_association_proposals[0].proposal_id #=> String
    #   resp.data.direct_connect_gateway_association_proposals[0].direct_connect_gateway_id #=> String
    #   resp.data.direct_connect_gateway_association_proposals[0].direct_connect_gateway_owner_account #=> String
    #   resp.data.direct_connect_gateway_association_proposals[0].proposal_state #=> String, one of ["requested", "accepted", "deleted"]
    #   resp.data.direct_connect_gateway_association_proposals[0].associated_gateway #=> Types::AssociatedGateway
    #   resp.data.direct_connect_gateway_association_proposals[0].associated_gateway.id #=> String
    #   resp.data.direct_connect_gateway_association_proposals[0].associated_gateway.type #=> String, one of ["virtualPrivateGateway", "transitGateway"]
    #   resp.data.direct_connect_gateway_association_proposals[0].associated_gateway.owner_account #=> String
    #   resp.data.direct_connect_gateway_association_proposals[0].associated_gateway.region #=> String
    #   resp.data.direct_connect_gateway_association_proposals[0].existing_allowed_prefixes_to_direct_connect_gateway #=> Array<RouteFilterPrefix>
    #   resp.data.direct_connect_gateway_association_proposals[0].existing_allowed_prefixes_to_direct_connect_gateway[0] #=> Types::RouteFilterPrefix
    #   resp.data.direct_connect_gateway_association_proposals[0].existing_allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.data.direct_connect_gateway_association_proposals[0].requested_allowed_prefixes_to_direct_connect_gateway #=> Array<RouteFilterPrefix>
    #   resp.data.next_token #=> String
    #
    def describe_direct_connect_gateway_association_proposals(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDirectConnectGatewayAssociationProposalsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDirectConnectGatewayAssociationProposalsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDirectConnectGatewayAssociationProposals
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeDirectConnectGatewayAssociationProposals
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDirectConnectGatewayAssociationProposals,
        stubs: @stubs,
        params_class: Params::DescribeDirectConnectGatewayAssociationProposalsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_direct_connect_gateway_association_proposals
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the associations between your Direct Connect gateways and virtual private gateways and transit gateways. You must specify one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>A Direct Connect gateway</p>
    #                <p>The response contains all virtual private gateways and transit gateways associated with the Direct Connect gateway.</p>
    #             </li>
    #             <li>
    #                <p>A virtual private gateway</p>
    #                <p>The response contains the Direct Connect gateway.</p>
    #             </li>
    #             <li>
    #                <p>A transit gateway</p>
    #                <p>The response contains the Direct Connect gateway.</p>
    #             </li>
    #             <li>
    #                <p>A Direct Connect gateway and a virtual private gateway</p>
    #                <p>The response contains the association between the Direct Connect gateway and virtual private gateway.</p>
    #             </li>
    #             <li>
    #                <p>A Direct Connect gateway and a transit gateway</p>
    #                <p>The response contains the association between the Direct Connect gateway and transit gateway.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribeDirectConnectGatewayAssociationsInput}.
    #
    # @option params [String] :association_id
    #   <p>The ID of the Direct Connect gateway association.</p>
    #
    # @option params [String] :associated_gateway_id
    #   <p>The ID of the associated gateway.</p>
    #
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token provided in the previous call to retrieve the next page.</p>
    #
    # @option params [String] :virtual_gateway_id
    #   <p>The ID of the virtual private gateway or transit gateway.</p>
    #
    # @return [Types::DescribeDirectConnectGatewayAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_direct_connect_gateway_associations(
    #     association_id: 'associationId',
    #     associated_gateway_id: 'associatedGatewayId',
    #     direct_connect_gateway_id: 'directConnectGatewayId',
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     virtual_gateway_id: 'virtualGatewayId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDirectConnectGatewayAssociationsOutput
    #   resp.data.direct_connect_gateway_associations #=> Array<DirectConnectGatewayAssociation>
    #   resp.data.direct_connect_gateway_associations[0] #=> Types::DirectConnectGatewayAssociation
    #   resp.data.direct_connect_gateway_associations[0].direct_connect_gateway_id #=> String
    #   resp.data.direct_connect_gateway_associations[0].direct_connect_gateway_owner_account #=> String
    #   resp.data.direct_connect_gateway_associations[0].association_state #=> String, one of ["associating", "associated", "disassociating", "disassociated", "updating"]
    #   resp.data.direct_connect_gateway_associations[0].state_change_error #=> String
    #   resp.data.direct_connect_gateway_associations[0].associated_gateway #=> Types::AssociatedGateway
    #   resp.data.direct_connect_gateway_associations[0].associated_gateway.id #=> String
    #   resp.data.direct_connect_gateway_associations[0].associated_gateway.type #=> String, one of ["virtualPrivateGateway", "transitGateway"]
    #   resp.data.direct_connect_gateway_associations[0].associated_gateway.owner_account #=> String
    #   resp.data.direct_connect_gateway_associations[0].associated_gateway.region #=> String
    #   resp.data.direct_connect_gateway_associations[0].association_id #=> String
    #   resp.data.direct_connect_gateway_associations[0].allowed_prefixes_to_direct_connect_gateway #=> Array<RouteFilterPrefix>
    #   resp.data.direct_connect_gateway_associations[0].allowed_prefixes_to_direct_connect_gateway[0] #=> Types::RouteFilterPrefix
    #   resp.data.direct_connect_gateway_associations[0].allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.data.direct_connect_gateway_associations[0].virtual_gateway_id #=> String
    #   resp.data.direct_connect_gateway_associations[0].virtual_gateway_region #=> String
    #   resp.data.direct_connect_gateway_associations[0].virtual_gateway_owner_account #=> String
    #   resp.data.next_token #=> String
    #
    def describe_direct_connect_gateway_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDirectConnectGatewayAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDirectConnectGatewayAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDirectConnectGatewayAssociations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeDirectConnectGatewayAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDirectConnectGatewayAssociations,
        stubs: @stubs,
        params_class: Params::DescribeDirectConnectGatewayAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_direct_connect_gateway_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the attachments between your Direct Connect gateways and virtual interfaces. You must specify
    #       a Direct Connect gateway, a virtual interface, or both. If you specify a Direct Connect gateway, the response contains
    #       all virtual interfaces attached to the Direct Connect gateway. If you specify a virtual interface, the
    #       response contains all Direct Connect gateways attached to the virtual interface. If you specify both,
    #       the response contains the attachment between the Direct Connect gateway and the virtual interface.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDirectConnectGatewayAttachmentsInput}.
    #
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token provided in the previous call to retrieve the next page.</p>
    #
    # @return [Types::DescribeDirectConnectGatewayAttachmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_direct_connect_gateway_attachments(
    #     direct_connect_gateway_id: 'directConnectGatewayId',
    #     virtual_interface_id: 'virtualInterfaceId',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDirectConnectGatewayAttachmentsOutput
    #   resp.data.direct_connect_gateway_attachments #=> Array<DirectConnectGatewayAttachment>
    #   resp.data.direct_connect_gateway_attachments[0] #=> Types::DirectConnectGatewayAttachment
    #   resp.data.direct_connect_gateway_attachments[0].direct_connect_gateway_id #=> String
    #   resp.data.direct_connect_gateway_attachments[0].virtual_interface_id #=> String
    #   resp.data.direct_connect_gateway_attachments[0].virtual_interface_region #=> String
    #   resp.data.direct_connect_gateway_attachments[0].virtual_interface_owner_account #=> String
    #   resp.data.direct_connect_gateway_attachments[0].attachment_state #=> String, one of ["attaching", "attached", "detaching", "detached"]
    #   resp.data.direct_connect_gateway_attachments[0].attachment_type #=> String, one of ["TransitVirtualInterface", "PrivateVirtualInterface"]
    #   resp.data.direct_connect_gateway_attachments[0].state_change_error #=> String
    #   resp.data.next_token #=> String
    #
    def describe_direct_connect_gateway_attachments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDirectConnectGatewayAttachmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDirectConnectGatewayAttachmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDirectConnectGatewayAttachments
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeDirectConnectGatewayAttachments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDirectConnectGatewayAttachments,
        stubs: @stubs,
        params_class: Params::DescribeDirectConnectGatewayAttachmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_direct_connect_gateway_attachments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all your Direct Connect gateways or only the specified Direct Connect gateway. Deleted Direct Connect gateways are not returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDirectConnectGatewaysInput}.
    #
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token provided in the previous call to retrieve the next page.</p>
    #
    # @return [Types::DescribeDirectConnectGatewaysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_direct_connect_gateways(
    #     direct_connect_gateway_id: 'directConnectGatewayId',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDirectConnectGatewaysOutput
    #   resp.data.direct_connect_gateways #=> Array<DirectConnectGateway>
    #   resp.data.direct_connect_gateways[0] #=> Types::DirectConnectGateway
    #   resp.data.direct_connect_gateways[0].direct_connect_gateway_id #=> String
    #   resp.data.direct_connect_gateways[0].direct_connect_gateway_name #=> String
    #   resp.data.direct_connect_gateways[0].amazon_side_asn #=> Integer
    #   resp.data.direct_connect_gateways[0].owner_account #=> String
    #   resp.data.direct_connect_gateways[0].direct_connect_gateway_state #=> String, one of ["pending", "available", "deleting", "deleted"]
    #   resp.data.direct_connect_gateways[0].state_change_error #=> String
    #   resp.data.next_token #=> String
    #
    def describe_direct_connect_gateways(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDirectConnectGatewaysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDirectConnectGatewaysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDirectConnectGateways
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeDirectConnectGateways
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDirectConnectGateways,
        stubs: @stubs,
        params_class: Params::DescribeDirectConnectGatewaysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_direct_connect_gateways
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the hosted connections that have been provisioned on the specified
    #       interconnect or link aggregation group (LAG).</p>
    #          <note>
    #             <p>Intended for use by Direct Connect Partners only.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeHostedConnectionsInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the interconnect or LAG.</p>
    #
    # @return [Types::DescribeHostedConnectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_hosted_connections(
    #     connection_id: 'connectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeHostedConnectionsOutput
    #   resp.data.connections #=> Array<Connection>
    #   resp.data.connections[0] #=> Types::Connection
    #   resp.data.connections[0].owner_account #=> String
    #   resp.data.connections[0].connection_id #=> String
    #   resp.data.connections[0].connection_name #=> String
    #   resp.data.connections[0].connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.connections[0].region #=> String
    #   resp.data.connections[0].location #=> String
    #   resp.data.connections[0].bandwidth #=> String
    #   resp.data.connections[0].vlan #=> Integer
    #   resp.data.connections[0].partner_name #=> String
    #   resp.data.connections[0].loa_issue_time #=> Time
    #   resp.data.connections[0].lag_id #=> String
    #   resp.data.connections[0].aws_device #=> String
    #   resp.data.connections[0].jumbo_frame_capable #=> Boolean
    #   resp.data.connections[0].aws_device_v2 #=> String
    #   resp.data.connections[0].aws_logical_device_id #=> String
    #   resp.data.connections[0].has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.connections[0].tags #=> Array<Tag>
    #   resp.data.connections[0].tags[0] #=> Types::Tag
    #   resp.data.connections[0].tags[0].key #=> String
    #   resp.data.connections[0].tags[0].value #=> String
    #   resp.data.connections[0].provider_name #=> String
    #   resp.data.connections[0].mac_sec_capable #=> Boolean
    #   resp.data.connections[0].port_encryption_status #=> String
    #   resp.data.connections[0].encryption_mode #=> String
    #   resp.data.connections[0].mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.connections[0].mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.connections[0].mac_sec_keys[0].secret_arn #=> String
    #   resp.data.connections[0].mac_sec_keys[0].ckn #=> String
    #   resp.data.connections[0].mac_sec_keys[0].state #=> String
    #   resp.data.connections[0].mac_sec_keys[0].start_on #=> String
    #
    def describe_hosted_connections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeHostedConnectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeHostedConnectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeHostedConnections
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeHostedConnections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeHostedConnections,
        stubs: @stubs,
        params_class: Params::DescribeHostedConnectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_hosted_connections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deprecated. Use <a>DescribeLoa</a> instead.</p>
    #          <p>Gets the LOA-CFA for the specified interconnect.</p>
    #          <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing your cross connect to Amazon Web Services at the colocation facility.
    #       For more information, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html">Requesting Cross Connects at Direct Connect Locations</a>
    #       in the <i>Direct Connect User Guide</i>.</p>
    #
    # @deprecated
    #
    # @param [Hash] params
    #   See {Types::DescribeInterconnectLoaInput}.
    #
    # @option params [String] :interconnect_id
    #   <p>The ID of the interconnect.</p>
    #
    # @option params [String] :provider_name
    #   <p>The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
    #
    # @option params [String] :loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    #
    # @return [Types::DescribeInterconnectLoaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_interconnect_loa(
    #     interconnect_id: 'interconnectId', # required
    #     provider_name: 'providerName',
    #     loa_content_type: 'application/pdf' # accepts ["application/pdf"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInterconnectLoaOutput
    #   resp.data.loa #=> Types::Loa
    #   resp.data.loa.loa_content #=> String
    #   resp.data.loa.loa_content_type #=> String, one of ["application/pdf"]
    #
    def describe_interconnect_loa(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInterconnectLoaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInterconnectLoaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInterconnectLoa
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeInterconnectLoa
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInterconnectLoa,
        stubs: @stubs,
        params_class: Params::DescribeInterconnectLoaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_interconnect_loa
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the interconnects owned by the Amazon Web Services account or only the specified interconnect.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInterconnectsInput}.
    #
    # @option params [String] :interconnect_id
    #   <p>The ID of the interconnect.</p>
    #
    # @return [Types::DescribeInterconnectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_interconnects(
    #     interconnect_id: 'interconnectId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInterconnectsOutput
    #   resp.data.interconnects #=> Array<Interconnect>
    #   resp.data.interconnects[0] #=> Types::Interconnect
    #   resp.data.interconnects[0].interconnect_id #=> String
    #   resp.data.interconnects[0].interconnect_name #=> String
    #   resp.data.interconnects[0].interconnect_state #=> String, one of ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #   resp.data.interconnects[0].region #=> String
    #   resp.data.interconnects[0].location #=> String
    #   resp.data.interconnects[0].bandwidth #=> String
    #   resp.data.interconnects[0].loa_issue_time #=> Time
    #   resp.data.interconnects[0].lag_id #=> String
    #   resp.data.interconnects[0].aws_device #=> String
    #   resp.data.interconnects[0].jumbo_frame_capable #=> Boolean
    #   resp.data.interconnects[0].aws_device_v2 #=> String
    #   resp.data.interconnects[0].aws_logical_device_id #=> String
    #   resp.data.interconnects[0].has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.interconnects[0].tags #=> Array<Tag>
    #   resp.data.interconnects[0].tags[0] #=> Types::Tag
    #   resp.data.interconnects[0].tags[0].key #=> String
    #   resp.data.interconnects[0].tags[0].value #=> String
    #   resp.data.interconnects[0].provider_name #=> String
    #
    def describe_interconnects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInterconnectsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInterconnectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInterconnects
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeInterconnects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInterconnects,
        stubs: @stubs,
        params_class: Params::DescribeInterconnectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_interconnects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes all your link aggregation groups (LAG) or the specified LAG.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLagsInput}.
    #
    # @option params [String] :lag_id
    #   <p>The ID of the LAG.</p>
    #
    # @return [Types::DescribeLagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_lags(
    #     lag_id: 'lagId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLagsOutput
    #   resp.data.lags #=> Array<Lag>
    #   resp.data.lags[0] #=> Types::Lag
    #   resp.data.lags[0].connections_bandwidth #=> String
    #   resp.data.lags[0].number_of_connections #=> Integer
    #   resp.data.lags[0].lag_id #=> String
    #   resp.data.lags[0].owner_account #=> String
    #   resp.data.lags[0].lag_name #=> String
    #   resp.data.lags[0].lag_state #=> String, one of ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #   resp.data.lags[0].location #=> String
    #   resp.data.lags[0].region #=> String
    #   resp.data.lags[0].minimum_links #=> Integer
    #   resp.data.lags[0].aws_device #=> String
    #   resp.data.lags[0].aws_device_v2 #=> String
    #   resp.data.lags[0].aws_logical_device_id #=> String
    #   resp.data.lags[0].connections #=> Array<Connection>
    #   resp.data.lags[0].connections[0] #=> Types::Connection
    #   resp.data.lags[0].connections[0].owner_account #=> String
    #   resp.data.lags[0].connections[0].connection_id #=> String
    #   resp.data.lags[0].connections[0].connection_name #=> String
    #   resp.data.lags[0].connections[0].connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.lags[0].connections[0].region #=> String
    #   resp.data.lags[0].connections[0].location #=> String
    #   resp.data.lags[0].connections[0].bandwidth #=> String
    #   resp.data.lags[0].connections[0].vlan #=> Integer
    #   resp.data.lags[0].connections[0].partner_name #=> String
    #   resp.data.lags[0].connections[0].loa_issue_time #=> Time
    #   resp.data.lags[0].connections[0].lag_id #=> String
    #   resp.data.lags[0].connections[0].aws_device #=> String
    #   resp.data.lags[0].connections[0].jumbo_frame_capable #=> Boolean
    #   resp.data.lags[0].connections[0].aws_device_v2 #=> String
    #   resp.data.lags[0].connections[0].aws_logical_device_id #=> String
    #   resp.data.lags[0].connections[0].has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.lags[0].connections[0].tags #=> Array<Tag>
    #   resp.data.lags[0].connections[0].tags[0] #=> Types::Tag
    #   resp.data.lags[0].connections[0].tags[0].key #=> String
    #   resp.data.lags[0].connections[0].tags[0].value #=> String
    #   resp.data.lags[0].connections[0].provider_name #=> String
    #   resp.data.lags[0].connections[0].mac_sec_capable #=> Boolean
    #   resp.data.lags[0].connections[0].port_encryption_status #=> String
    #   resp.data.lags[0].connections[0].encryption_mode #=> String
    #   resp.data.lags[0].connections[0].mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.lags[0].connections[0].mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.lags[0].connections[0].mac_sec_keys[0].secret_arn #=> String
    #   resp.data.lags[0].connections[0].mac_sec_keys[0].ckn #=> String
    #   resp.data.lags[0].connections[0].mac_sec_keys[0].state #=> String
    #   resp.data.lags[0].connections[0].mac_sec_keys[0].start_on #=> String
    #   resp.data.lags[0].allows_hosted_connections #=> Boolean
    #   resp.data.lags[0].jumbo_frame_capable #=> Boolean
    #   resp.data.lags[0].has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.lags[0].tags #=> Array<Tag>
    #   resp.data.lags[0].provider_name #=> String
    #   resp.data.lags[0].mac_sec_capable #=> Boolean
    #   resp.data.lags[0].encryption_mode #=> String
    #   resp.data.lags[0].mac_sec_keys #=> Array<MacSecKey>
    #
    def describe_lags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeLags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLags,
        stubs: @stubs,
        params_class: Params::DescribeLagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_lags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the LOA-CFA for a connection, interconnect, or link aggregation group (LAG).</p>
    #          <p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA) is a document that is used when establishing
    #       your cross connect to Amazon Web Services at the colocation facility. For more information, see <a href="https://docs.aws.amazon.com/directconnect/latest/UserGuide/Colocation.html">Requesting Cross Connects at Direct Connect Locations</a>
    #       in the <i>Direct Connect User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLoaInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of a connection, LAG, or interconnect.</p>
    #
    # @option params [String] :provider_name
    #   <p>The name of the service provider who establishes connectivity on your behalf. If you specify this parameter, the
    #         LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>
    #
    # @option params [String] :loa_content_type
    #   <p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>
    #
    # @return [Types::DescribeLoaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_loa(
    #     connection_id: 'connectionId', # required
    #     provider_name: 'providerName',
    #     loa_content_type: 'application/pdf' # accepts ["application/pdf"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLoaOutput
    #   resp.data.loa_content #=> String
    #   resp.data.loa_content_type #=> String, one of ["application/pdf"]
    #
    def describe_loa(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLoaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLoaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLoa
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeLoa
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLoa,
        stubs: @stubs,
        params_class: Params::DescribeLoaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_loa
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Direct Connect locations in the current Amazon Web Services Region. These are the locations that can be selected when calling
    #       <a>CreateConnection</a> or <a>CreateInterconnect</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLocationsInput}.
    #
    # @return [Types::DescribeLocationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_locations()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLocationsOutput
    #   resp.data.locations #=> Array<Location>
    #   resp.data.locations[0] #=> Types::Location
    #   resp.data.locations[0].location_code #=> String
    #   resp.data.locations[0].location_name #=> String
    #   resp.data.locations[0].region #=> String
    #   resp.data.locations[0].available_port_speeds #=> Array<String>
    #   resp.data.locations[0].available_port_speeds[0] #=> String
    #   resp.data.locations[0].available_providers #=> Array<String>
    #   resp.data.locations[0].available_providers[0] #=> String
    #   resp.data.locations[0].available_mac_sec_port_speeds #=> Array<String>
    #   resp.data.locations[0].available_mac_sec_port_speeds[0] #=> String
    #
    def describe_locations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLocationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLocationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLocations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeLocations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLocations,
        stubs: @stubs,
        params_class: Params::DescribeLocationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_locations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Details about the router.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRouterConfigurationInput}.
    #
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    # @option params [String] :router_type_identifier
    #   <p>Identifies the router by a combination of vendor, platform, and software version. For example, <code>CiscoSystemsInc-2900SeriesRouters-IOS124</code>.</p>
    #
    # @return [Types::DescribeRouterConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_router_configuration(
    #     virtual_interface_id: 'virtualInterfaceId', # required
    #     router_type_identifier: 'routerTypeIdentifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRouterConfigurationOutput
    #   resp.data.customer_router_config #=> String
    #   resp.data.router #=> Types::RouterType
    #   resp.data.router.vendor #=> String
    #   resp.data.router.platform #=> String
    #   resp.data.router.software #=> String
    #   resp.data.router.xslt_template_name #=> String
    #   resp.data.router.xslt_template_name_for_mac_sec #=> String
    #   resp.data.router.router_type_identifier #=> String
    #   resp.data.virtual_interface_id #=> String
    #   resp.data.virtual_interface_name #=> String
    #
    def describe_router_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRouterConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRouterConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRouterConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeRouterConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRouterConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeRouterConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_router_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the tags associated with the specified Direct Connect resources.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTagsInput}.
    #
    # @option params [Array<String>] :resource_arns
    #   <p>The Amazon Resource Names (ARNs) of the resources.</p>
    #
    # @return [Types::DescribeTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags(
    #     resource_arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTagsOutput
    #   resp.data.resource_tags #=> Array<ResourceTag>
    #   resp.data.resource_tags[0] #=> Types::ResourceTag
    #   resp.data.resource_tags[0].resource_arn #=> String
    #   resp.data.resource_tags[0].tags #=> Array<Tag>
    #   resp.data.resource_tags[0].tags[0] #=> Types::Tag
    #   resp.data.resource_tags[0].tags[0].key #=> String
    #   resp.data.resource_tags[0].tags[0].value #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
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

    # <p>Lists the virtual private gateways owned by the Amazon Web Services account.</p>
    #          <p>You can create one or more Direct Connect private virtual interfaces linked to a virtual private gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVirtualGatewaysInput}.
    #
    # @return [Types::DescribeVirtualGatewaysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_virtual_gateways()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVirtualGatewaysOutput
    #   resp.data.virtual_gateways #=> Array<VirtualGateway>
    #   resp.data.virtual_gateways[0] #=> Types::VirtualGateway
    #   resp.data.virtual_gateways[0].virtual_gateway_id #=> String
    #   resp.data.virtual_gateways[0].virtual_gateway_state #=> String
    #
    def describe_virtual_gateways(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVirtualGatewaysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVirtualGatewaysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVirtualGateways
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeVirtualGateways
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVirtualGateways,
        stubs: @stubs,
        params_class: Params::DescribeVirtualGatewaysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_virtual_gateways
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays all virtual interfaces for an Amazon Web Services account. Virtual interfaces deleted fewer
    #       than 15 minutes before you make the request are also returned. If you specify a
    #       connection ID, only the virtual interfaces associated with the connection are returned.
    #       If you specify a virtual interface ID, then only a single virtual interface is returned.</p>
    #          <p>A virtual interface (VLAN) transmits the traffic between the Direct Connect location and the customer network.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeVirtualInterfacesInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    #
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface.</p>
    #
    # @return [Types::DescribeVirtualInterfacesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_virtual_interfaces(
    #     connection_id: 'connectionId',
    #     virtual_interface_id: 'virtualInterfaceId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeVirtualInterfacesOutput
    #   resp.data.virtual_interfaces #=> Array<VirtualInterface>
    #   resp.data.virtual_interfaces[0] #=> Types::VirtualInterface
    #   resp.data.virtual_interfaces[0].owner_account #=> String
    #   resp.data.virtual_interfaces[0].virtual_interface_id #=> String
    #   resp.data.virtual_interfaces[0].location #=> String
    #   resp.data.virtual_interfaces[0].connection_id #=> String
    #   resp.data.virtual_interfaces[0].virtual_interface_type #=> String
    #   resp.data.virtual_interfaces[0].virtual_interface_name #=> String
    #   resp.data.virtual_interfaces[0].vlan #=> Integer
    #   resp.data.virtual_interfaces[0].asn #=> Integer
    #   resp.data.virtual_interfaces[0].amazon_side_asn #=> Integer
    #   resp.data.virtual_interfaces[0].auth_key #=> String
    #   resp.data.virtual_interfaces[0].amazon_address #=> String
    #   resp.data.virtual_interfaces[0].customer_address #=> String
    #   resp.data.virtual_interfaces[0].address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interfaces[0].virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.virtual_interfaces[0].customer_router_config #=> String
    #   resp.data.virtual_interfaces[0].mtu #=> Integer
    #   resp.data.virtual_interfaces[0].jumbo_frame_capable #=> Boolean
    #   resp.data.virtual_interfaces[0].virtual_gateway_id #=> String
    #   resp.data.virtual_interfaces[0].direct_connect_gateway_id #=> String
    #   resp.data.virtual_interfaces[0].route_filter_prefixes #=> Array<RouteFilterPrefix>
    #   resp.data.virtual_interfaces[0].route_filter_prefixes[0] #=> Types::RouteFilterPrefix
    #   resp.data.virtual_interfaces[0].route_filter_prefixes[0].cidr #=> String
    #   resp.data.virtual_interfaces[0].bgp_peers #=> Array<BGPPeer>
    #   resp.data.virtual_interfaces[0].bgp_peers[0] #=> Types::BGPPeer
    #   resp.data.virtual_interfaces[0].bgp_peers[0].bgp_peer_id #=> String
    #   resp.data.virtual_interfaces[0].bgp_peers[0].asn #=> Integer
    #   resp.data.virtual_interfaces[0].bgp_peers[0].auth_key #=> String
    #   resp.data.virtual_interfaces[0].bgp_peers[0].address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interfaces[0].bgp_peers[0].amazon_address #=> String
    #   resp.data.virtual_interfaces[0].bgp_peers[0].customer_address #=> String
    #   resp.data.virtual_interfaces[0].bgp_peers[0].bgp_peer_state #=> String, one of ["verifying", "pending", "available", "deleting", "deleted"]
    #   resp.data.virtual_interfaces[0].bgp_peers[0].bgp_status #=> String, one of ["up", "down", "unknown"]
    #   resp.data.virtual_interfaces[0].bgp_peers[0].aws_device_v2 #=> String
    #   resp.data.virtual_interfaces[0].bgp_peers[0].aws_logical_device_id #=> String
    #   resp.data.virtual_interfaces[0].region #=> String
    #   resp.data.virtual_interfaces[0].aws_device_v2 #=> String
    #   resp.data.virtual_interfaces[0].aws_logical_device_id #=> String
    #   resp.data.virtual_interfaces[0].tags #=> Array<Tag>
    #   resp.data.virtual_interfaces[0].tags[0] #=> Types::Tag
    #   resp.data.virtual_interfaces[0].tags[0].key #=> String
    #   resp.data.virtual_interfaces[0].tags[0].value #=> String
    #   resp.data.virtual_interfaces[0].site_link_enabled #=> Boolean
    #
    def describe_virtual_interfaces(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeVirtualInterfacesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeVirtualInterfacesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeVirtualInterfaces
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DescribeVirtualInterfaces
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeVirtualInterfaces,
        stubs: @stubs,
        params_class: Params::DescribeVirtualInterfacesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_virtual_interfaces
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a connection from a link aggregation group (LAG). The connection is
    #       interrupted and re-established as a standalone connection (the connection is not
    #       deleted; to delete the connection, use the <a>DeleteConnection</a> request).
    #       If the LAG has associated virtual interfaces or hosted connections, they remain
    #       associated with the LAG. A disassociated connection owned by an Direct Connect Partner is
    #       automatically converted to an interconnect.</p>
    #          <p>If disassociating the connection would cause the LAG to fall below its setting for
    #       minimum number of operational connections, the request fails, except when it's the last
    #       member of the LAG. If all connections are disassociated, the LAG continues to exist as
    #       an empty LAG with no physical connections. </p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateConnectionFromLagInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    #
    # @option params [String] :lag_id
    #   <p>The ID of the LAG.</p>
    #
    # @return [Types::DisassociateConnectionFromLagOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_connection_from_lag(
    #     connection_id: 'connectionId', # required
    #     lag_id: 'lagId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateConnectionFromLagOutput
    #   resp.data.owner_account #=> String
    #   resp.data.connection_id #=> String
    #   resp.data.connection_name #=> String
    #   resp.data.connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.region #=> String
    #   resp.data.location #=> String
    #   resp.data.bandwidth #=> String
    #   resp.data.vlan #=> Integer
    #   resp.data.partner_name #=> String
    #   resp.data.loa_issue_time #=> Time
    #   resp.data.lag_id #=> String
    #   resp.data.aws_device #=> String
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.provider_name #=> String
    #   resp.data.mac_sec_capable #=> Boolean
    #   resp.data.port_encryption_status #=> String
    #   resp.data.encryption_mode #=> String
    #   resp.data.mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.mac_sec_keys[0].secret_arn #=> String
    #   resp.data.mac_sec_keys[0].ckn #=> String
    #   resp.data.mac_sec_keys[0].state #=> String
    #   resp.data.mac_sec_keys[0].start_on #=> String
    #
    def disassociate_connection_from_lag(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateConnectionFromLagInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateConnectionFromLagInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateConnectionFromLag
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DisassociateConnectionFromLag
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateConnectionFromLag,
        stubs: @stubs,
        params_class: Params::DisassociateConnectionFromLagOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_connection_from_lag
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the association between a MAC Security (MACsec) security key and an Direct Connect dedicated connection.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateMacSecKeyInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG (dxlag-xxxx).</p>
    #            <p>You can use <a>DescribeConnections</a> or <a>DescribeLags</a> to retrieve connection ID.</p>
    #
    # @option params [String] :secret_arn
    #   <p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key.</p>
    #            <p>You can use <a>DescribeConnections</a> to retrieve the ARN of the MAC Security (MACsec) secret key.</p>
    #
    # @return [Types::DisassociateMacSecKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_mac_sec_key(
    #     connection_id: 'connectionId', # required
    #     secret_arn: 'secretARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateMacSecKeyOutput
    #   resp.data.connection_id #=> String
    #   resp.data.mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.mac_sec_keys[0].secret_arn #=> String
    #   resp.data.mac_sec_keys[0].ckn #=> String
    #   resp.data.mac_sec_keys[0].state #=> String
    #   resp.data.mac_sec_keys[0].start_on #=> String
    #
    def disassociate_mac_sec_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateMacSecKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateMacSecKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateMacSecKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::DisassociateMacSecKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateMacSecKey,
        stubs: @stubs,
        params_class: Params::DisassociateMacSecKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_mac_sec_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the virtual interface failover test history.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVirtualInterfaceTestHistoryInput}.
    #
    # @option params [String] :test_id
    #   <p>The ID of the virtual interface failover test.</p>
    #
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface that was tested.</p>
    #
    # @option params [Array<String>] :bgp_peers
    #   <p>The BGP peers that were placed in the DOWN state during the virtual interface failover test.</p>
    #
    # @option params [String] :status
    #   <p>The status of the virtual interface failover test.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return with a single call.
    #   	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #   	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
    #         returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::ListVirtualInterfaceTestHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_interface_test_history(
    #     test_id: 'testId',
    #     virtual_interface_id: 'virtualInterfaceId',
    #     bgp_peers: [
    #       'member'
    #     ],
    #     status: 'status',
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVirtualInterfaceTestHistoryOutput
    #   resp.data.virtual_interface_test_history #=> Array<VirtualInterfaceTestHistory>
    #   resp.data.virtual_interface_test_history[0] #=> Types::VirtualInterfaceTestHistory
    #   resp.data.virtual_interface_test_history[0].test_id #=> String
    #   resp.data.virtual_interface_test_history[0].virtual_interface_id #=> String
    #   resp.data.virtual_interface_test_history[0].bgp_peers #=> Array<String>
    #   resp.data.virtual_interface_test_history[0].bgp_peers[0] #=> String
    #   resp.data.virtual_interface_test_history[0].status #=> String
    #   resp.data.virtual_interface_test_history[0].owner_account #=> String
    #   resp.data.virtual_interface_test_history[0].test_duration_in_minutes #=> Integer
    #   resp.data.virtual_interface_test_history[0].start_time #=> Time
    #   resp.data.virtual_interface_test_history[0].end_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_virtual_interface_test_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVirtualInterfaceTestHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVirtualInterfaceTestHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVirtualInterfaceTestHistory
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::ListVirtualInterfaceTestHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVirtualInterfaceTestHistory,
        stubs: @stubs,
        params_class: Params::ListVirtualInterfaceTestHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_virtual_interface_test_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the virtual interface failover test that verifies your configuration meets your resiliency requirements by placing the BGP peering session in the DOWN state. You can then send traffic to verify that there are no outages.</p>
    #          <p>You can run the test on public, private, transit, and hosted virtual interfaces.</p>
    #          <p>You can use <a href="https://docs.aws.amazon.com/directconnect/latest/APIReference/API_ListVirtualInterfaceTestHistory.html">ListVirtualInterfaceTestHistory</a> to view the virtual interface test history.</p>
    #          <p>If you need to stop the test before the test interval completes, use <a href="https://docs.aws.amazon.com/directconnect/latest/APIReference/API_StopBgpFailoverTest.html">StopBgpFailoverTest</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartBgpFailoverTestInput}.
    #
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface you want to test.</p>
    #
    # @option params [Array<String>] :bgp_peers
    #   <p>The BGP peers to place in the DOWN state.</p>
    #
    # @option params [Integer] :test_duration_in_minutes
    #   <p>The time in minutes that the virtual interface failover test will last.</p>
    #            <p>Maximum value: 180 minutes (3 hours).</p>
    #            <p>Default: 180 minutes (3 hours).</p>
    #
    # @return [Types::StartBgpFailoverTestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_bgp_failover_test(
    #     virtual_interface_id: 'virtualInterfaceId', # required
    #     bgp_peers: [
    #       'member'
    #     ],
    #     test_duration_in_minutes: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartBgpFailoverTestOutput
    #   resp.data.virtual_interface_test #=> Types::VirtualInterfaceTestHistory
    #   resp.data.virtual_interface_test.test_id #=> String
    #   resp.data.virtual_interface_test.virtual_interface_id #=> String
    #   resp.data.virtual_interface_test.bgp_peers #=> Array<String>
    #   resp.data.virtual_interface_test.bgp_peers[0] #=> String
    #   resp.data.virtual_interface_test.status #=> String
    #   resp.data.virtual_interface_test.owner_account #=> String
    #   resp.data.virtual_interface_test.test_duration_in_minutes #=> Integer
    #   resp.data.virtual_interface_test.start_time #=> Time
    #   resp.data.virtual_interface_test.end_time #=> Time
    #
    def start_bgp_failover_test(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartBgpFailoverTestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartBgpFailoverTestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartBgpFailoverTest
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::StartBgpFailoverTest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartBgpFailoverTest,
        stubs: @stubs,
        params_class: Params::StartBgpFailoverTestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_bgp_failover_test
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops the virtual interface failover test.</p>
    #
    # @param [Hash] params
    #   See {Types::StopBgpFailoverTestInput}.
    #
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual interface you no longer want to test.</p>
    #
    # @return [Types::StopBgpFailoverTestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_bgp_failover_test(
    #     virtual_interface_id: 'virtualInterfaceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopBgpFailoverTestOutput
    #   resp.data.virtual_interface_test #=> Types::VirtualInterfaceTestHistory
    #   resp.data.virtual_interface_test.test_id #=> String
    #   resp.data.virtual_interface_test.virtual_interface_id #=> String
    #   resp.data.virtual_interface_test.bgp_peers #=> Array<String>
    #   resp.data.virtual_interface_test.bgp_peers[0] #=> String
    #   resp.data.virtual_interface_test.status #=> String
    #   resp.data.virtual_interface_test.owner_account #=> String
    #   resp.data.virtual_interface_test.test_duration_in_minutes #=> Integer
    #   resp.data.virtual_interface_test.start_time #=> Time
    #   resp.data.virtual_interface_test.end_time #=> Time
    #
    def stop_bgp_failover_test(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopBgpFailoverTestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopBgpFailoverTestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopBgpFailoverTest
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::StopBgpFailoverTest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopBgpFailoverTest,
        stubs: @stubs,
        params_class: Params::StopBgpFailoverTestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_bgp_failover_test
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified tags to the specified Direct Connect resource. Each resource can have a maximum of 50 tags.</p>
    #          <p>Each tag consists of a key and an optional value. If a tag with the same key is already associated with the resource, this action updates its value.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DuplicateTagKeysException, Errors::TooManyTagsException, Errors::DirectConnectClientException]),
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

    # <p>Removes one or more tags from the specified Direct Connect resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys of the tags to remove.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
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

    # <p>Updates the Direct Connect dedicated connection configuration.</p>
    #          <p>You can update the following parameters for a connection:</p>
    #          <ul>
    #             <li>
    #                <p>The connection name</p>
    #             </li>
    #             <li>
    #                <p>The connection's MAC Security (MACsec) encryption mode.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UpdateConnectionInput}.
    #
    # @option params [String] :connection_id
    #   <p>The ID of the dedicated connection.</p>
    #            <p>You can use <a>DescribeConnections</a> to retrieve the connection ID.</p>
    #
    # @option params [String] :connection_name
    #   <p>The name of the connection.</p>
    #
    # @option params [String] :encryption_mode
    #   <p>The connection MAC Security (MACsec) encryption mode.</p>
    #            <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>
    #
    # @return [Types::UpdateConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connection(
    #     connection_id: 'connectionId', # required
    #     connection_name: 'connectionName',
    #     encryption_mode: 'encryptionMode'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConnectionOutput
    #   resp.data.owner_account #=> String
    #   resp.data.connection_id #=> String
    #   resp.data.connection_name #=> String
    #   resp.data.connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.region #=> String
    #   resp.data.location #=> String
    #   resp.data.bandwidth #=> String
    #   resp.data.vlan #=> Integer
    #   resp.data.partner_name #=> String
    #   resp.data.loa_issue_time #=> Time
    #   resp.data.lag_id #=> String
    #   resp.data.aws_device #=> String
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.provider_name #=> String
    #   resp.data.mac_sec_capable #=> Boolean
    #   resp.data.port_encryption_status #=> String
    #   resp.data.encryption_mode #=> String
    #   resp.data.mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.mac_sec_keys[0].secret_arn #=> String
    #   resp.data.mac_sec_keys[0].ckn #=> String
    #   resp.data.mac_sec_keys[0].state #=> String
    #   resp.data.mac_sec_keys[0].start_on #=> String
    #
    def update_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateConnection
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::UpdateConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateConnection,
        stubs: @stubs,
        params_class: Params::UpdateConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the name of a current Direct Connect gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDirectConnectGatewayInput}.
    #
    # @option params [String] :direct_connect_gateway_id
    #   <p>The ID of the Direct Connect gateway to update.</p>
    #
    # @option params [String] :new_direct_connect_gateway_name
    #   <p>The new name for the Direct Connect gateway.</p>
    #
    # @return [Types::UpdateDirectConnectGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_direct_connect_gateway(
    #     direct_connect_gateway_id: 'directConnectGatewayId', # required
    #     new_direct_connect_gateway_name: 'newDirectConnectGatewayName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDirectConnectGatewayOutput
    #   resp.data.direct_connect_gateway #=> Types::DirectConnectGateway
    #   resp.data.direct_connect_gateway.direct_connect_gateway_id #=> String
    #   resp.data.direct_connect_gateway.direct_connect_gateway_name #=> String
    #   resp.data.direct_connect_gateway.amazon_side_asn #=> Integer
    #   resp.data.direct_connect_gateway.owner_account #=> String
    #   resp.data.direct_connect_gateway.direct_connect_gateway_state #=> String, one of ["pending", "available", "deleting", "deleted"]
    #   resp.data.direct_connect_gateway.state_change_error #=> String
    #
    def update_direct_connect_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDirectConnectGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDirectConnectGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDirectConnectGateway
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::UpdateDirectConnectGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDirectConnectGateway,
        stubs: @stubs,
        params_class: Params::UpdateDirectConnectGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_direct_connect_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified attributes of the Direct Connect gateway association.</p>
    #          <p>Add or remove prefixes from the association.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDirectConnectGatewayAssociationInput}.
    #
    # @option params [String] :association_id
    #   <p>The ID of the Direct Connect gateway association.</p>
    #
    # @option params [Array<RouteFilterPrefix>] :add_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>
    #
    # @option params [Array<RouteFilterPrefix>] :remove_allowed_prefixes_to_direct_connect_gateway
    #   <p>The Amazon VPC prefixes to no longer advertise to the Direct Connect gateway.</p>
    #
    # @return [Types::UpdateDirectConnectGatewayAssociationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_direct_connect_gateway_association(
    #     association_id: 'associationId',
    #     add_allowed_prefixes_to_direct_connect_gateway: [
    #       {
    #         cidr: 'cidr'
    #       }
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDirectConnectGatewayAssociationOutput
    #   resp.data.direct_connect_gateway_association #=> Types::DirectConnectGatewayAssociation
    #   resp.data.direct_connect_gateway_association.direct_connect_gateway_id #=> String
    #   resp.data.direct_connect_gateway_association.direct_connect_gateway_owner_account #=> String
    #   resp.data.direct_connect_gateway_association.association_state #=> String, one of ["associating", "associated", "disassociating", "disassociated", "updating"]
    #   resp.data.direct_connect_gateway_association.state_change_error #=> String
    #   resp.data.direct_connect_gateway_association.associated_gateway #=> Types::AssociatedGateway
    #   resp.data.direct_connect_gateway_association.associated_gateway.id #=> String
    #   resp.data.direct_connect_gateway_association.associated_gateway.type #=> String, one of ["virtualPrivateGateway", "transitGateway"]
    #   resp.data.direct_connect_gateway_association.associated_gateway.owner_account #=> String
    #   resp.data.direct_connect_gateway_association.associated_gateway.region #=> String
    #   resp.data.direct_connect_gateway_association.association_id #=> String
    #   resp.data.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway #=> Array<RouteFilterPrefix>
    #   resp.data.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway[0] #=> Types::RouteFilterPrefix
    #   resp.data.direct_connect_gateway_association.allowed_prefixes_to_direct_connect_gateway[0].cidr #=> String
    #   resp.data.direct_connect_gateway_association.virtual_gateway_id #=> String
    #   resp.data.direct_connect_gateway_association.virtual_gateway_region #=> String
    #   resp.data.direct_connect_gateway_association.virtual_gateway_owner_account #=> String
    #
    def update_direct_connect_gateway_association(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDirectConnectGatewayAssociationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDirectConnectGatewayAssociationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDirectConnectGatewayAssociation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::UpdateDirectConnectGatewayAssociation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDirectConnectGatewayAssociation,
        stubs: @stubs,
        params_class: Params::UpdateDirectConnectGatewayAssociationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_direct_connect_gateway_association
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the attributes of the specified link aggregation group (LAG).</p>
    #          <p>You can update the following LAG attributes:</p>
    #          <ul>
    #             <li>
    #                <p>The name of the LAG.</p>
    #             </li>
    #             <li>
    #                <p>The value for the minimum number of connections that must be operational
    #           for the LAG itself to be operational. </p>
    #             </li>
    #             <li>
    #                <p>The LAG's MACsec encryption mode.</p>
    #                <p>Amazon Web Services assigns this value to each connection which is part of the LAG.</p>
    #             </li>
    #             <li>
    #                <p>The tags</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>If you adjust the threshold value for the minimum number of operational connections, ensure
    #       that the new value does not cause the LAG to fall below the threshold and become
    #       non-operational.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateLagInput}.
    #
    # @option params [String] :lag_id
    #   <p>The ID of the LAG.</p>
    #
    # @option params [String] :lag_name
    #   <p>The name of the LAG.</p>
    #
    # @option params [Integer] :minimum_links
    #   <p>The minimum number of physical connections that must be operational for the LAG itself to be operational.</p>
    #
    # @option params [String] :encryption_mode
    #   <p>The LAG MAC Security (MACsec) encryption mode.</p>
    #            <p>Amazon Web Services applies the value to all connections which are part of the LAG.</p>
    #
    # @return [Types::UpdateLagOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_lag(
    #     lag_id: 'lagId', # required
    #     lag_name: 'lagName',
    #     minimum_links: 1,
    #     encryption_mode: 'encryptionMode'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLagOutput
    #   resp.data.connections_bandwidth #=> String
    #   resp.data.number_of_connections #=> Integer
    #   resp.data.lag_id #=> String
    #   resp.data.owner_account #=> String
    #   resp.data.lag_name #=> String
    #   resp.data.lag_state #=> String, one of ["requested", "pending", "available", "down", "deleting", "deleted", "unknown"]
    #   resp.data.location #=> String
    #   resp.data.region #=> String
    #   resp.data.minimum_links #=> Integer
    #   resp.data.aws_device #=> String
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.connections #=> Array<Connection>
    #   resp.data.connections[0] #=> Types::Connection
    #   resp.data.connections[0].owner_account #=> String
    #   resp.data.connections[0].connection_id #=> String
    #   resp.data.connections[0].connection_name #=> String
    #   resp.data.connections[0].connection_state #=> String, one of ["ordering", "requested", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.connections[0].region #=> String
    #   resp.data.connections[0].location #=> String
    #   resp.data.connections[0].bandwidth #=> String
    #   resp.data.connections[0].vlan #=> Integer
    #   resp.data.connections[0].partner_name #=> String
    #   resp.data.connections[0].loa_issue_time #=> Time
    #   resp.data.connections[0].lag_id #=> String
    #   resp.data.connections[0].aws_device #=> String
    #   resp.data.connections[0].jumbo_frame_capable #=> Boolean
    #   resp.data.connections[0].aws_device_v2 #=> String
    #   resp.data.connections[0].aws_logical_device_id #=> String
    #   resp.data.connections[0].has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.connections[0].tags #=> Array<Tag>
    #   resp.data.connections[0].tags[0] #=> Types::Tag
    #   resp.data.connections[0].tags[0].key #=> String
    #   resp.data.connections[0].tags[0].value #=> String
    #   resp.data.connections[0].provider_name #=> String
    #   resp.data.connections[0].mac_sec_capable #=> Boolean
    #   resp.data.connections[0].port_encryption_status #=> String
    #   resp.data.connections[0].encryption_mode #=> String
    #   resp.data.connections[0].mac_sec_keys #=> Array<MacSecKey>
    #   resp.data.connections[0].mac_sec_keys[0] #=> Types::MacSecKey
    #   resp.data.connections[0].mac_sec_keys[0].secret_arn #=> String
    #   resp.data.connections[0].mac_sec_keys[0].ckn #=> String
    #   resp.data.connections[0].mac_sec_keys[0].state #=> String
    #   resp.data.connections[0].mac_sec_keys[0].start_on #=> String
    #   resp.data.allows_hosted_connections #=> Boolean
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.has_logical_redundancy #=> String, one of ["unknown", "yes", "no"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.provider_name #=> String
    #   resp.data.mac_sec_capable #=> Boolean
    #   resp.data.encryption_mode #=> String
    #   resp.data.mac_sec_keys #=> Array<MacSecKey>
    #
    def update_lag(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLagInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLagInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLag
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::UpdateLag
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLag,
        stubs: @stubs,
        params_class: Params::UpdateLagOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_lag
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified attributes of the specified virtual private interface.</p>
    #          <p>Setting the MTU of a virtual interface to 9001 (jumbo frames) can cause an update to
    #       the underlying physical connection if it wasn't updated to support jumbo frames. Updating
    #       the connection disrupts network connectivity for all virtual interfaces associated with
    #       the connection for up to 30 seconds. To check whether your connection supports jumbo
    #       frames, call <a>DescribeConnections</a>. To check whether your virtual q
    #       interface supports jumbo frames, call <a>DescribeVirtualInterfaces</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVirtualInterfaceAttributesInput}.
    #
    # @option params [String] :virtual_interface_id
    #   <p>The ID of the virtual private interface.</p>
    #
    # @option params [Integer] :mtu
    #   <p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>
    #
    # @option params [Boolean] :enable_site_link
    #   <p>Indicates whether to enable or disable SiteLink.</p>
    #
    # @option params [String] :virtual_interface_name
    #   <p>The name of the virtual private interface.</p>
    #
    # @return [Types::UpdateVirtualInterfaceAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_virtual_interface_attributes(
    #     virtual_interface_id: 'virtualInterfaceId', # required
    #     mtu: 1,
    #     enable_site_link: false,
    #     virtual_interface_name: 'virtualInterfaceName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVirtualInterfaceAttributesOutput
    #   resp.data.owner_account #=> String
    #   resp.data.virtual_interface_id #=> String
    #   resp.data.location #=> String
    #   resp.data.connection_id #=> String
    #   resp.data.virtual_interface_type #=> String
    #   resp.data.virtual_interface_name #=> String
    #   resp.data.vlan #=> Integer
    #   resp.data.asn #=> Integer
    #   resp.data.amazon_side_asn #=> Integer
    #   resp.data.auth_key #=> String
    #   resp.data.amazon_address #=> String
    #   resp.data.customer_address #=> String
    #   resp.data.address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.virtual_interface_state #=> String, one of ["confirming", "verifying", "pending", "available", "down", "deleting", "deleted", "rejected", "unknown"]
    #   resp.data.customer_router_config #=> String
    #   resp.data.mtu #=> Integer
    #   resp.data.jumbo_frame_capable #=> Boolean
    #   resp.data.virtual_gateway_id #=> String
    #   resp.data.direct_connect_gateway_id #=> String
    #   resp.data.route_filter_prefixes #=> Array<RouteFilterPrefix>
    #   resp.data.route_filter_prefixes[0] #=> Types::RouteFilterPrefix
    #   resp.data.route_filter_prefixes[0].cidr #=> String
    #   resp.data.bgp_peers #=> Array<BGPPeer>
    #   resp.data.bgp_peers[0] #=> Types::BGPPeer
    #   resp.data.bgp_peers[0].bgp_peer_id #=> String
    #   resp.data.bgp_peers[0].asn #=> Integer
    #   resp.data.bgp_peers[0].auth_key #=> String
    #   resp.data.bgp_peers[0].address_family #=> String, one of ["ipv4", "ipv6"]
    #   resp.data.bgp_peers[0].amazon_address #=> String
    #   resp.data.bgp_peers[0].customer_address #=> String
    #   resp.data.bgp_peers[0].bgp_peer_state #=> String, one of ["verifying", "pending", "available", "deleting", "deleted"]
    #   resp.data.bgp_peers[0].bgp_status #=> String, one of ["up", "down", "unknown"]
    #   resp.data.bgp_peers[0].aws_device_v2 #=> String
    #   resp.data.bgp_peers[0].aws_logical_device_id #=> String
    #   resp.data.region #=> String
    #   resp.data.aws_device_v2 #=> String
    #   resp.data.aws_logical_device_id #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.site_link_enabled #=> Boolean
    #
    def update_virtual_interface_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVirtualInterfaceAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVirtualInterfaceAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVirtualInterfaceAttributes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DirectConnectServerException, Errors::DirectConnectClientException]),
        data_parser: Parsers::UpdateVirtualInterfaceAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVirtualInterfaceAttributes,
        stubs: @stubs,
        params_class: Params::UpdateVirtualInterfaceAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_virtual_interface_attributes
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
