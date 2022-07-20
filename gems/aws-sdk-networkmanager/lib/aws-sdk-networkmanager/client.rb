# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::NetworkManager
  # An API client for NetworkManager
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Web Services enables you to centrally manage your Amazon Web Services Cloud WAN core network and your Transit Gateway network across Amazon Web Services accounts, Regions, and on-premises locations.</p>
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
    def initialize(config = AWS::SDK::NetworkManager::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Accepts a core network attachment request. </p>
    #          <p>Once the attachment request is accepted by a core network owner, the attachment is
    #          created and connected to a core network.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptAttachmentInput}.
    #
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment. </p>
    #
    # @return [Types::AcceptAttachmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_attachment(
    #     attachment_id: 'AttachmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptAttachmentOutput
    #   resp.data.attachment #=> Types::Attachment
    #   resp.data.attachment.core_network_id #=> String
    #   resp.data.attachment.core_network_arn #=> String
    #   resp.data.attachment.attachment_id #=> String
    #   resp.data.attachment.owner_account_id #=> String
    #   resp.data.attachment.attachment_type #=> String, one of ["CONNECT", "SITE_TO_SITE_VPN", "VPC"]
    #   resp.data.attachment.state #=> String, one of ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"]
    #   resp.data.attachment.edge_location #=> String
    #   resp.data.attachment.resource_arn #=> String
    #   resp.data.attachment.attachment_policy_rule_number #=> Integer
    #   resp.data.attachment.segment_name #=> String
    #   resp.data.attachment.tags #=> Array<Tag>
    #   resp.data.attachment.tags[0] #=> Types::Tag
    #   resp.data.attachment.tags[0].key #=> String
    #   resp.data.attachment.tags[0].value #=> String
    #   resp.data.attachment.proposed_segment_change #=> Types::ProposedSegmentChange
    #   resp.data.attachment.proposed_segment_change.tags #=> Array<Tag>
    #   resp.data.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.data.attachment.proposed_segment_change.segment_name #=> String
    #   resp.data.attachment.created_at #=> Time
    #   resp.data.attachment.updated_at #=> Time
    #
    def accept_attachment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptAttachmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptAttachmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptAttachment
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::AcceptAttachment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptAttachment,
        stubs: @stubs,
        params_class: Params::AcceptAttachmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_attachment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a core network Connect peer with a device and optionally, with a link. </p>
    #          <p>If you specify a link, it must be associated with the specified device. You can only
    #          associate core network Connect peers that have been created on a core network Connect
    #          attachment on a core network. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateConnectPeerInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of your global network.</p>
    #
    # @option params [String] :connect_peer_id
    #   <p>The ID of the Connect peer.</p>
    #
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    #
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    #
    # @return [Types::AssociateConnectPeerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_connect_peer(
    #     global_network_id: 'GlobalNetworkId', # required
    #     connect_peer_id: 'ConnectPeerId', # required
    #     device_id: 'DeviceId', # required
    #     link_id: 'LinkId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateConnectPeerOutput
    #   resp.data.connect_peer_association #=> Types::ConnectPeerAssociation
    #   resp.data.connect_peer_association.connect_peer_id #=> String
    #   resp.data.connect_peer_association.global_network_id #=> String
    #   resp.data.connect_peer_association.device_id #=> String
    #   resp.data.connect_peer_association.link_id #=> String
    #   resp.data.connect_peer_association.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #
    def associate_connect_peer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateConnectPeerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateConnectPeerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateConnectPeer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::AssociateConnectPeer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateConnectPeer,
        stubs: @stubs,
        params_class: Params::AssociateConnectPeerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_connect_peer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a customer gateway with a device and optionally, with a link. If you
    #             specify a link, it must be associated with the specified device. </p>
    #         <p>You can only associate customer gateways that are connected to a VPN attachment on a
    #             transit gateway or core network registered in your global network. When you register a
    #             transit gateway or core network, customer gateways that are connected to the transit
    #             gateway are automatically included in the global network. To list customer gateways
    #             that are connected to a transit gateway, use the <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeVpnConnections.html">DescribeVpnConnections</a> EC2 API and filter by
    #                 <code>transit-gateway-id</code>.</p>
    #         <p>You cannot associate a customer gateway with more than one device and link. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateCustomerGatewayInput}.
    #
    # @option params [String] :customer_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the customer gateway.</p>
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    #
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    #
    # @return [Types::AssociateCustomerGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_customer_gateway(
    #     customer_gateway_arn: 'CustomerGatewayArn', # required
    #     global_network_id: 'GlobalNetworkId', # required
    #     device_id: 'DeviceId', # required
    #     link_id: 'LinkId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateCustomerGatewayOutput
    #   resp.data.customer_gateway_association #=> Types::CustomerGatewayAssociation
    #   resp.data.customer_gateway_association.customer_gateway_arn #=> String
    #   resp.data.customer_gateway_association.global_network_id #=> String
    #   resp.data.customer_gateway_association.device_id #=> String
    #   resp.data.customer_gateway_association.link_id #=> String
    #   resp.data.customer_gateway_association.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #
    def associate_customer_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateCustomerGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateCustomerGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateCustomerGateway
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::AssociateCustomerGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateCustomerGateway,
        stubs: @stubs,
        params_class: Params::AssociateCustomerGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_customer_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateLinkInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    #
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    #
    # @return [Types::AssociateLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_link(
    #     global_network_id: 'GlobalNetworkId', # required
    #     device_id: 'DeviceId', # required
    #     link_id: 'LinkId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateLinkOutput
    #   resp.data.link_association #=> Types::LinkAssociation
    #   resp.data.link_association.global_network_id #=> String
    #   resp.data.link_association.device_id #=> String
    #   resp.data.link_association.link_id #=> String
    #   resp.data.link_association.link_association_state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #
    def associate_link(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateLinkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateLinkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateLink
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::AssociateLink
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateLink,
        stubs: @stubs,
        params_class: Params::AssociateLinkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_link
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a transit gateway Connect peer with a device, and optionally, with a link. If you
    #             specify a link, it must be associated with the specified device. </p>
    #         <p>You can only associate transit gateway Connect peers that have been created on a
    #             transit gateway that's registered in your global network.</p>
    #         <p>You cannot associate a transit gateway Connect peer with more than one device and link. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateTransitGatewayConnectPeerInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :transit_gateway_connect_peer_arn
    #   <p>The Amazon Resource Name (ARN) of the Connect peer.</p>
    #
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    #
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    #
    # @return [Types::AssociateTransitGatewayConnectPeerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_transit_gateway_connect_peer(
    #     global_network_id: 'GlobalNetworkId', # required
    #     transit_gateway_connect_peer_arn: 'TransitGatewayConnectPeerArn', # required
    #     device_id: 'DeviceId', # required
    #     link_id: 'LinkId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateTransitGatewayConnectPeerOutput
    #   resp.data.transit_gateway_connect_peer_association #=> Types::TransitGatewayConnectPeerAssociation
    #   resp.data.transit_gateway_connect_peer_association.transit_gateway_connect_peer_arn #=> String
    #   resp.data.transit_gateway_connect_peer_association.global_network_id #=> String
    #   resp.data.transit_gateway_connect_peer_association.device_id #=> String
    #   resp.data.transit_gateway_connect_peer_association.link_id #=> String
    #   resp.data.transit_gateway_connect_peer_association.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #
    def associate_transit_gateway_connect_peer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateTransitGatewayConnectPeerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateTransitGatewayConnectPeerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateTransitGatewayConnectPeer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::AssociateTransitGatewayConnectPeer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateTransitGatewayConnectPeer,
        stubs: @stubs,
        params_class: Params::AssociateTransitGatewayConnectPeerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_transit_gateway_connect_peer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a core network Connect attachment from a specified core network attachment. </p>
    #          <p>A core network Connect attachment is a GRE-based tunnel attachment that you can use to
    #          establish a connection between a core network and an appliance. A core network Connect
    #          attachment uses an existing VPC attachment as the underlying transport mechanism.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConnectAttachmentInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network where you want to create the attachment. </p>
    #
    # @option params [String] :edge_location
    #   <p>The Region where the edge is located.</p>
    #
    # @option params [String] :transport_attachment_id
    #   <p>The ID of the attachment between the two connections.</p>
    #
    # @option params [ConnectAttachmentOptions] :options
    #   <p>Options for creating an attachment.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of key-value tags associated with the request.</p>
    #
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    #
    # @return [Types::CreateConnectAttachmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connect_attachment(
    #     core_network_id: 'CoreNetworkId', # required
    #     edge_location: 'EdgeLocation', # required
    #     transport_attachment_id: 'TransportAttachmentId', # required
    #     options: {
    #       protocol: 'GRE' # accepts ["GRE"]
    #     }, # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConnectAttachmentOutput
    #   resp.data.connect_attachment #=> Types::ConnectAttachment
    #   resp.data.connect_attachment.attachment #=> Types::Attachment
    #   resp.data.connect_attachment.attachment.core_network_id #=> String
    #   resp.data.connect_attachment.attachment.core_network_arn #=> String
    #   resp.data.connect_attachment.attachment.attachment_id #=> String
    #   resp.data.connect_attachment.attachment.owner_account_id #=> String
    #   resp.data.connect_attachment.attachment.attachment_type #=> String, one of ["CONNECT", "SITE_TO_SITE_VPN", "VPC"]
    #   resp.data.connect_attachment.attachment.state #=> String, one of ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"]
    #   resp.data.connect_attachment.attachment.edge_location #=> String
    #   resp.data.connect_attachment.attachment.resource_arn #=> String
    #   resp.data.connect_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.data.connect_attachment.attachment.segment_name #=> String
    #   resp.data.connect_attachment.attachment.tags #=> Array<Tag>
    #   resp.data.connect_attachment.attachment.tags[0] #=> Types::Tag
    #   resp.data.connect_attachment.attachment.tags[0].key #=> String
    #   resp.data.connect_attachment.attachment.tags[0].value #=> String
    #   resp.data.connect_attachment.attachment.proposed_segment_change #=> Types::ProposedSegmentChange
    #   resp.data.connect_attachment.attachment.proposed_segment_change.tags #=> Array<Tag>
    #   resp.data.connect_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.data.connect_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.data.connect_attachment.attachment.created_at #=> Time
    #   resp.data.connect_attachment.attachment.updated_at #=> Time
    #   resp.data.connect_attachment.transport_attachment_id #=> String
    #   resp.data.connect_attachment.options #=> Types::ConnectAttachmentOptions
    #   resp.data.connect_attachment.options.protocol #=> String, one of ["GRE"]
    #
    def create_connect_attachment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConnectAttachmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConnectAttachmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConnectAttachment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateConnectAttachment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConnectAttachment,
        stubs: @stubs,
        params_class: Params::CreateConnectAttachmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_connect_attachment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a core network Connect peer for a specified core network connect attachment between a core network and an appliance.
    #          The peer address and transit gateway address must be the same IP address family (IPv4 or IPv6).</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConnectPeerInput}.
    #
    # @option params [String] :connect_attachment_id
    #   <p>The ID of the connection attachment.</p>
    #
    # @option params [String] :core_network_address
    #   <p>A Connect peer core network address.</p>
    #
    # @option params [String] :peer_address
    #   <p>The Connect peer address.</p>
    #
    # @option params [BgpOptions] :bgp_options
    #   <p>The Connect peer BGP options.</p>
    #
    # @option params [Array<String>] :inside_cidr_blocks
    #   <p>The inside IP addresses used for BGP peering.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags associated with the peer request.</p>
    #
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    #
    # @return [Types::CreateConnectPeerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connect_peer(
    #     connect_attachment_id: 'ConnectAttachmentId', # required
    #     core_network_address: 'CoreNetworkAddress',
    #     peer_address: 'PeerAddress', # required
    #     bgp_options: {
    #       peer_asn: 1
    #     },
    #     inside_cidr_blocks: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConnectPeerOutput
    #   resp.data.connect_peer #=> Types::ConnectPeer
    #   resp.data.connect_peer.core_network_id #=> String
    #   resp.data.connect_peer.connect_attachment_id #=> String
    #   resp.data.connect_peer.connect_peer_id #=> String
    #   resp.data.connect_peer.edge_location #=> String
    #   resp.data.connect_peer.state #=> String, one of ["CREATING", "FAILED", "AVAILABLE", "DELETING"]
    #   resp.data.connect_peer.created_at #=> Time
    #   resp.data.connect_peer.configuration #=> Types::ConnectPeerConfiguration
    #   resp.data.connect_peer.configuration.core_network_address #=> String
    #   resp.data.connect_peer.configuration.peer_address #=> String
    #   resp.data.connect_peer.configuration.inside_cidr_blocks #=> Array<String>
    #   resp.data.connect_peer.configuration.inside_cidr_blocks[0] #=> String
    #   resp.data.connect_peer.configuration.protocol #=> String, one of ["GRE"]
    #   resp.data.connect_peer.configuration.bgp_configurations #=> Array<ConnectPeerBgpConfiguration>
    #   resp.data.connect_peer.configuration.bgp_configurations[0] #=> Types::ConnectPeerBgpConfiguration
    #   resp.data.connect_peer.configuration.bgp_configurations[0].core_network_asn #=> Integer
    #   resp.data.connect_peer.configuration.bgp_configurations[0].peer_asn #=> Integer
    #   resp.data.connect_peer.configuration.bgp_configurations[0].core_network_address #=> String
    #   resp.data.connect_peer.configuration.bgp_configurations[0].peer_address #=> String
    #   resp.data.connect_peer.tags #=> Array<Tag>
    #   resp.data.connect_peer.tags[0] #=> Types::Tag
    #   resp.data.connect_peer.tags[0].key #=> String
    #   resp.data.connect_peer.tags[0].value #=> String
    #
    def create_connect_peer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateConnectPeerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateConnectPeerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateConnectPeer
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateConnectPeer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateConnectPeer,
        stubs: @stubs,
        params_class: Params::CreateConnectPeerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_connect_peer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a connection between two devices. The devices can be a physical or virtual appliance that connects to a third-party appliance in a VPC, or a physical appliance that connects to another physical appliance in an on-premises network.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConnectionInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :device_id
    #   <p>The ID of the first device in the connection.</p>
    #
    # @option params [String] :connected_device_id
    #   <p>The ID of the second device in the connection.</p>
    #
    # @option params [String] :link_id
    #   <p>The ID of the link for the first device.</p>
    #
    # @option params [String] :connected_link_id
    #   <p>The ID of the link for the second device.</p>
    #
    # @option params [String] :description
    #   <p>A description of the connection.</p>
    #           <p>Length Constraints: Maximum length of 256 characters.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to apply to the resource during creation.</p>
    #
    # @return [Types::CreateConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection(
    #     global_network_id: 'GlobalNetworkId', # required
    #     device_id: 'DeviceId', # required
    #     connected_device_id: 'ConnectedDeviceId', # required
    #     link_id: 'LinkId',
    #     connected_link_id: 'ConnectedLinkId',
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
    #   resp.data #=> Types::CreateConnectionOutput
    #   resp.data.connection #=> Types::Connection
    #   resp.data.connection.connection_id #=> String
    #   resp.data.connection.connection_arn #=> String
    #   resp.data.connection.global_network_id #=> String
    #   resp.data.connection.device_id #=> String
    #   resp.data.connection.connected_device_id #=> String
    #   resp.data.connection.link_id #=> String
    #   resp.data.connection.connected_link_id #=> String
    #   resp.data.connection.description #=> String
    #   resp.data.connection.created_at #=> Time
    #   resp.data.connection.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.connection.tags #=> Array<Tag>
    #   resp.data.connection.tags[0] #=> Types::Tag
    #   resp.data.connection.tags[0].key #=> String
    #   resp.data.connection.tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Creates a core network as part of your global network, and optionally, with a core network policy.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCoreNetworkInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network that a core network will be a part of. </p>
    #
    # @option params [String] :description
    #   <p>The description of a core network.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Key-value tags associated with a core network request.</p>
    #
    # @option params [String] :policy_document
    #   <p>The policy document for creating a core network.</p>
    #
    # @option params [String] :client_token
    #   <p>The client token associated with a core network request.</p>
    #
    # @return [Types::CreateCoreNetworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_core_network(
    #     global_network_id: 'GlobalNetworkId', # required
    #     description: 'Description',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     policy_document: 'PolicyDocument',
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCoreNetworkOutput
    #   resp.data.core_network #=> Types::CoreNetwork
    #   resp.data.core_network.global_network_id #=> String
    #   resp.data.core_network.core_network_id #=> String
    #   resp.data.core_network.core_network_arn #=> String
    #   resp.data.core_network.description #=> String
    #   resp.data.core_network.created_at #=> Time
    #   resp.data.core_network.state #=> String, one of ["CREATING", "UPDATING", "AVAILABLE", "DELETING"]
    #   resp.data.core_network.segments #=> Array<CoreNetworkSegment>
    #   resp.data.core_network.segments[0] #=> Types::CoreNetworkSegment
    #   resp.data.core_network.segments[0].name #=> String
    #   resp.data.core_network.segments[0].edge_locations #=> Array<String>
    #   resp.data.core_network.segments[0].edge_locations[0] #=> String
    #   resp.data.core_network.segments[0].shared_segments #=> Array<String>
    #   resp.data.core_network.segments[0].shared_segments[0] #=> String
    #   resp.data.core_network.edges #=> Array<CoreNetworkEdge>
    #   resp.data.core_network.edges[0] #=> Types::CoreNetworkEdge
    #   resp.data.core_network.edges[0].edge_location #=> String
    #   resp.data.core_network.edges[0].asn #=> Integer
    #   resp.data.core_network.edges[0].inside_cidr_blocks #=> Array<String>
    #   resp.data.core_network.tags #=> Array<Tag>
    #   resp.data.core_network.tags[0] #=> Types::Tag
    #   resp.data.core_network.tags[0].key #=> String
    #   resp.data.core_network.tags[0].value #=> String
    #
    def create_core_network(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCoreNetworkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCoreNetworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCoreNetwork
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException, Errors::CoreNetworkPolicyException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateCoreNetwork
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCoreNetwork,
        stubs: @stubs,
        params_class: Params::CreateCoreNetworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_core_network
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new device in a global network. If you specify both a site ID and a
    #             location, the location of the site is used for visualization in the Network Manager console.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDeviceInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [AWSLocation] :aws_location
    #   <p>The Amazon Web Services location of the device, if applicable. For an on-premises device, you can omit this parameter.</p>
    #
    # @option params [String] :description
    #   <p>A description of the device.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    # @option params [String] :type
    #   <p>The type of the device.</p>
    #
    # @option params [String] :vendor
    #   <p>The vendor of the device.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    # @option params [String] :model
    #   <p>The model of the device.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    # @option params [String] :serial_number
    #   <p>The serial number of the device.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    # @option params [Location] :location
    #   <p>The location of the device.</p>
    #
    # @option params [String] :site_id
    #   <p>The ID of the site.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to apply to the resource during creation.</p>
    #
    # @return [Types::CreateDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_device(
    #     global_network_id: 'GlobalNetworkId', # required
    #     aws_location: {
    #       zone: 'Zone',
    #       subnet_arn: 'SubnetArn'
    #     },
    #     description: 'Description',
    #     type: 'Type',
    #     vendor: 'Vendor',
    #     model: 'Model',
    #     serial_number: 'SerialNumber',
    #     location: {
    #       address: 'Address',
    #       latitude: 'Latitude',
    #       longitude: 'Longitude'
    #     },
    #     site_id: 'SiteId',
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
    #   resp.data #=> Types::CreateDeviceOutput
    #   resp.data.device #=> Types::Device
    #   resp.data.device.device_id #=> String
    #   resp.data.device.device_arn #=> String
    #   resp.data.device.global_network_id #=> String
    #   resp.data.device.aws_location #=> Types::AWSLocation
    #   resp.data.device.aws_location.zone #=> String
    #   resp.data.device.aws_location.subnet_arn #=> String
    #   resp.data.device.description #=> String
    #   resp.data.device.type #=> String
    #   resp.data.device.vendor #=> String
    #   resp.data.device.model #=> String
    #   resp.data.device.serial_number #=> String
    #   resp.data.device.location #=> Types::Location
    #   resp.data.device.location.address #=> String
    #   resp.data.device.location.latitude #=> String
    #   resp.data.device.location.longitude #=> String
    #   resp.data.device.site_id #=> String
    #   resp.data.device.created_at #=> Time
    #   resp.data.device.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.device.tags #=> Array<Tag>
    #   resp.data.device.tags[0] #=> Types::Tag
    #   resp.data.device.tags[0].key #=> String
    #   resp.data.device.tags[0].value #=> String
    #
    def create_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDevice,
        stubs: @stubs,
        params_class: Params::CreateDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new, empty global network.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGlobalNetworkInput}.
    #
    # @option params [String] :description
    #   <p>A description of the global network.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to apply to the resource during creation.</p>
    #
    # @return [Types::CreateGlobalNetworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_global_network(
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
    #   resp.data #=> Types::CreateGlobalNetworkOutput
    #   resp.data.global_network #=> Types::GlobalNetwork
    #   resp.data.global_network.global_network_id #=> String
    #   resp.data.global_network.global_network_arn #=> String
    #   resp.data.global_network.description #=> String
    #   resp.data.global_network.created_at #=> Time
    #   resp.data.global_network.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.global_network.tags #=> Array<Tag>
    #   resp.data.global_network.tags[0] #=> Types::Tag
    #   resp.data.global_network.tags[0].key #=> String
    #   resp.data.global_network.tags[0].value #=> String
    #
    def create_global_network(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGlobalNetworkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGlobalNetworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGlobalNetwork
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateGlobalNetwork
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGlobalNetwork,
        stubs: @stubs,
        params_class: Params::CreateGlobalNetworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_global_network
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new link for a specified site.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLinkInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :description
    #   <p>A description of the link.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    # @option params [String] :type
    #   <p>The type of the link.</p>
    #           <p>Constraints: Maximum length of 128 characters. Cannot include the following characters: | \ ^</p>
    #
    # @option params [Bandwidth] :bandwidth
    #   <p> The upload speed and download speed in Mbps. </p>
    #
    # @option params [String] :provider
    #   <p>The provider of the link.</p>
    #           <p>Constraints: Maximum length of 128 characters. Cannot include the following characters: | \ ^</p>
    #
    # @option params [String] :site_id
    #   <p>The ID of the site.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to apply to the resource during creation.</p>
    #
    # @return [Types::CreateLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_link(
    #     global_network_id: 'GlobalNetworkId', # required
    #     description: 'Description',
    #     type: 'Type',
    #     bandwidth: {
    #       upload_speed: 1,
    #       download_speed: 1
    #     }, # required
    #     provider: 'Provider',
    #     site_id: 'SiteId', # required
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
    #   resp.data #=> Types::CreateLinkOutput
    #   resp.data.link #=> Types::Link
    #   resp.data.link.link_id #=> String
    #   resp.data.link.link_arn #=> String
    #   resp.data.link.global_network_id #=> String
    #   resp.data.link.site_id #=> String
    #   resp.data.link.description #=> String
    #   resp.data.link.type #=> String
    #   resp.data.link.bandwidth #=> Types::Bandwidth
    #   resp.data.link.bandwidth.upload_speed #=> Integer
    #   resp.data.link.bandwidth.download_speed #=> Integer
    #   resp.data.link.provider #=> String
    #   resp.data.link.created_at #=> Time
    #   resp.data.link.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.link.tags #=> Array<Tag>
    #   resp.data.link.tags[0] #=> Types::Tag
    #   resp.data.link.tags[0].key #=> String
    #   resp.data.link.tags[0].value #=> String
    #
    def create_link(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLinkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLinkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLink
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateLink
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLink,
        stubs: @stubs,
        params_class: Params::CreateLinkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_link
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new site in a global network.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSiteInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :description
    #   <p>A description of your site.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    # @option params [Location] :location
    #   <p>The site location. This information is used for visualization in the Network Manager console. If you specify the address, the latitude and longitude are automatically calculated.</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>Address</code>: The physical address of the site.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Latitude</code>: The latitude of the site. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Longitude</code>: The longitude of the site.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to apply to the resource during creation.</p>
    #
    # @return [Types::CreateSiteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_site(
    #     global_network_id: 'GlobalNetworkId', # required
    #     description: 'Description',
    #     location: {
    #       address: 'Address',
    #       latitude: 'Latitude',
    #       longitude: 'Longitude'
    #     },
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
    #   resp.data #=> Types::CreateSiteOutput
    #   resp.data.site #=> Types::Site
    #   resp.data.site.site_id #=> String
    #   resp.data.site.site_arn #=> String
    #   resp.data.site.global_network_id #=> String
    #   resp.data.site.description #=> String
    #   resp.data.site.location #=> Types::Location
    #   resp.data.site.location.address #=> String
    #   resp.data.site.location.latitude #=> String
    #   resp.data.site.location.longitude #=> String
    #   resp.data.site.created_at #=> Time
    #   resp.data.site.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.site.tags #=> Array<Tag>
    #   resp.data.site.tags[0] #=> Types::Tag
    #   resp.data.site.tags[0].key #=> String
    #   resp.data.site.tags[0].value #=> String
    #
    def create_site(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSiteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSiteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSite
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateSite
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSite,
        stubs: @stubs,
        params_class: Params::CreateSiteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_site
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Web Services site-to-site VPN attachment on an edge location of a core network.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSiteToSiteVpnAttachmentInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network where you're creating a site-to-site VPN attachment.</p>
    #
    # @option params [String] :vpn_connection_arn
    #   <p>The ARN identifying the VPN attachment.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags associated with the request.</p>
    #
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    #
    # @return [Types::CreateSiteToSiteVpnAttachmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_site_to_site_vpn_attachment(
    #     core_network_id: 'CoreNetworkId', # required
    #     vpn_connection_arn: 'VpnConnectionArn', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateSiteToSiteVpnAttachmentOutput
    #   resp.data.site_to_site_vpn_attachment #=> Types::SiteToSiteVpnAttachment
    #   resp.data.site_to_site_vpn_attachment.attachment #=> Types::Attachment
    #   resp.data.site_to_site_vpn_attachment.attachment.core_network_id #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.core_network_arn #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.attachment_id #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.owner_account_id #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.attachment_type #=> String, one of ["CONNECT", "SITE_TO_SITE_VPN", "VPC"]
    #   resp.data.site_to_site_vpn_attachment.attachment.state #=> String, one of ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"]
    #   resp.data.site_to_site_vpn_attachment.attachment.edge_location #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.resource_arn #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.data.site_to_site_vpn_attachment.attachment.segment_name #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.tags #=> Array<Tag>
    #   resp.data.site_to_site_vpn_attachment.attachment.tags[0] #=> Types::Tag
    #   resp.data.site_to_site_vpn_attachment.attachment.tags[0].key #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.tags[0].value #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.proposed_segment_change #=> Types::ProposedSegmentChange
    #   resp.data.site_to_site_vpn_attachment.attachment.proposed_segment_change.tags #=> Array<Tag>
    #   resp.data.site_to_site_vpn_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.data.site_to_site_vpn_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.created_at #=> Time
    #   resp.data.site_to_site_vpn_attachment.attachment.updated_at #=> Time
    #   resp.data.site_to_site_vpn_attachment.vpn_connection_arn #=> String
    #
    def create_site_to_site_vpn_attachment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSiteToSiteVpnAttachmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSiteToSiteVpnAttachmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSiteToSiteVpnAttachment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateSiteToSiteVpnAttachment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSiteToSiteVpnAttachment,
        stubs: @stubs,
        params_class: Params::CreateSiteToSiteVpnAttachmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_site_to_site_vpn_attachment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a VPC attachment on an edge location of a core network.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateVpcAttachmentInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network for the VPC attachment.</p>
    #
    # @option params [String] :vpc_arn
    #   <p>The ARN of the VPC.</p>
    #
    # @option params [Array<String>] :subnet_arns
    #   <p>The subnet ARN of the VPC attachment.</p>
    #
    # @option params [VpcOptions] :options
    #   <p>Options for the VPC attachment.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The key-value tags associated with the request.</p>
    #
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    #
    # @return [Types::CreateVpcAttachmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vpc_attachment(
    #     core_network_id: 'CoreNetworkId', # required
    #     vpc_arn: 'VpcArn', # required
    #     subnet_arns: [
    #       'member'
    #     ], # required
    #     options: {
    #       ipv6_support: false
    #     },
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ],
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateVpcAttachmentOutput
    #   resp.data.vpc_attachment #=> Types::VpcAttachment
    #   resp.data.vpc_attachment.attachment #=> Types::Attachment
    #   resp.data.vpc_attachment.attachment.core_network_id #=> String
    #   resp.data.vpc_attachment.attachment.core_network_arn #=> String
    #   resp.data.vpc_attachment.attachment.attachment_id #=> String
    #   resp.data.vpc_attachment.attachment.owner_account_id #=> String
    #   resp.data.vpc_attachment.attachment.attachment_type #=> String, one of ["CONNECT", "SITE_TO_SITE_VPN", "VPC"]
    #   resp.data.vpc_attachment.attachment.state #=> String, one of ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"]
    #   resp.data.vpc_attachment.attachment.edge_location #=> String
    #   resp.data.vpc_attachment.attachment.resource_arn #=> String
    #   resp.data.vpc_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.data.vpc_attachment.attachment.segment_name #=> String
    #   resp.data.vpc_attachment.attachment.tags #=> Array<Tag>
    #   resp.data.vpc_attachment.attachment.tags[0] #=> Types::Tag
    #   resp.data.vpc_attachment.attachment.tags[0].key #=> String
    #   resp.data.vpc_attachment.attachment.tags[0].value #=> String
    #   resp.data.vpc_attachment.attachment.proposed_segment_change #=> Types::ProposedSegmentChange
    #   resp.data.vpc_attachment.attachment.proposed_segment_change.tags #=> Array<Tag>
    #   resp.data.vpc_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.data.vpc_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.data.vpc_attachment.attachment.created_at #=> Time
    #   resp.data.vpc_attachment.attachment.updated_at #=> Time
    #   resp.data.vpc_attachment.subnet_arns #=> Array<String>
    #   resp.data.vpc_attachment.subnet_arns[0] #=> String
    #   resp.data.vpc_attachment.options #=> Types::VpcOptions
    #   resp.data.vpc_attachment.options.ipv6_support #=> Boolean
    #
    def create_vpc_attachment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVpcAttachmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVpcAttachmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVpcAttachment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateVpcAttachment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVpcAttachment,
        stubs: @stubs,
        params_class: Params::CreateVpcAttachmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_vpc_attachment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an attachment. Supports all attachment types.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAttachmentInput}.
    #
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment to delete.</p>
    #
    # @return [Types::DeleteAttachmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_attachment(
    #     attachment_id: 'AttachmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAttachmentOutput
    #   resp.data.attachment #=> Types::Attachment
    #   resp.data.attachment.core_network_id #=> String
    #   resp.data.attachment.core_network_arn #=> String
    #   resp.data.attachment.attachment_id #=> String
    #   resp.data.attachment.owner_account_id #=> String
    #   resp.data.attachment.attachment_type #=> String, one of ["CONNECT", "SITE_TO_SITE_VPN", "VPC"]
    #   resp.data.attachment.state #=> String, one of ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"]
    #   resp.data.attachment.edge_location #=> String
    #   resp.data.attachment.resource_arn #=> String
    #   resp.data.attachment.attachment_policy_rule_number #=> Integer
    #   resp.data.attachment.segment_name #=> String
    #   resp.data.attachment.tags #=> Array<Tag>
    #   resp.data.attachment.tags[0] #=> Types::Tag
    #   resp.data.attachment.tags[0].key #=> String
    #   resp.data.attachment.tags[0].value #=> String
    #   resp.data.attachment.proposed_segment_change #=> Types::ProposedSegmentChange
    #   resp.data.attachment.proposed_segment_change.tags #=> Array<Tag>
    #   resp.data.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.data.attachment.proposed_segment_change.segment_name #=> String
    #   resp.data.attachment.created_at #=> Time
    #   resp.data.attachment.updated_at #=> Time
    #
    def delete_attachment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAttachmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAttachmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAttachment
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteAttachment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAttachment,
        stubs: @stubs,
        params_class: Params::DeleteAttachmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_attachment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Connect peer.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConnectPeerInput}.
    #
    # @option params [String] :connect_peer_id
    #   <p>The ID of the deleted Connect peer.</p>
    #
    # @return [Types::DeleteConnectPeerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connect_peer(
    #     connect_peer_id: 'ConnectPeerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConnectPeerOutput
    #   resp.data.connect_peer #=> Types::ConnectPeer
    #   resp.data.connect_peer.core_network_id #=> String
    #   resp.data.connect_peer.connect_attachment_id #=> String
    #   resp.data.connect_peer.connect_peer_id #=> String
    #   resp.data.connect_peer.edge_location #=> String
    #   resp.data.connect_peer.state #=> String, one of ["CREATING", "FAILED", "AVAILABLE", "DELETING"]
    #   resp.data.connect_peer.created_at #=> Time
    #   resp.data.connect_peer.configuration #=> Types::ConnectPeerConfiguration
    #   resp.data.connect_peer.configuration.core_network_address #=> String
    #   resp.data.connect_peer.configuration.peer_address #=> String
    #   resp.data.connect_peer.configuration.inside_cidr_blocks #=> Array<String>
    #   resp.data.connect_peer.configuration.inside_cidr_blocks[0] #=> String
    #   resp.data.connect_peer.configuration.protocol #=> String, one of ["GRE"]
    #   resp.data.connect_peer.configuration.bgp_configurations #=> Array<ConnectPeerBgpConfiguration>
    #   resp.data.connect_peer.configuration.bgp_configurations[0] #=> Types::ConnectPeerBgpConfiguration
    #   resp.data.connect_peer.configuration.bgp_configurations[0].core_network_asn #=> Integer
    #   resp.data.connect_peer.configuration.bgp_configurations[0].peer_asn #=> Integer
    #   resp.data.connect_peer.configuration.bgp_configurations[0].core_network_address #=> String
    #   resp.data.connect_peer.configuration.bgp_configurations[0].peer_address #=> String
    #   resp.data.connect_peer.tags #=> Array<Tag>
    #   resp.data.connect_peer.tags[0] #=> Types::Tag
    #   resp.data.connect_peer.tags[0].key #=> String
    #   resp.data.connect_peer.tags[0].value #=> String
    #
    def delete_connect_peer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteConnectPeerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteConnectPeerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteConnectPeer
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteConnectPeer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteConnectPeer,
        stubs: @stubs,
        params_class: Params::DeleteConnectPeerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_connect_peer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified connection in your global network.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConnectionInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    #
    # @return [Types::DeleteConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection(
    #     global_network_id: 'GlobalNetworkId', # required
    #     connection_id: 'ConnectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConnectionOutput
    #   resp.data.connection #=> Types::Connection
    #   resp.data.connection.connection_id #=> String
    #   resp.data.connection.connection_arn #=> String
    #   resp.data.connection.global_network_id #=> String
    #   resp.data.connection.device_id #=> String
    #   resp.data.connection.connected_device_id #=> String
    #   resp.data.connection.link_id #=> String
    #   resp.data.connection.connected_link_id #=> String
    #   resp.data.connection.description #=> String
    #   resp.data.connection.created_at #=> Time
    #   resp.data.connection.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.connection.tags #=> Array<Tag>
    #   resp.data.connection.tags[0] #=> Types::Tag
    #   resp.data.connection.tags[0].key #=> String
    #   resp.data.connection.tags[0].value #=> String
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Deletes a core network along with all core network policies. This can only be done if there are no attachments on a core network.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCoreNetworkInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The network ID of the deleted core network.</p>
    #
    # @return [Types::DeleteCoreNetworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_core_network(
    #     core_network_id: 'CoreNetworkId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCoreNetworkOutput
    #   resp.data.core_network #=> Types::CoreNetwork
    #   resp.data.core_network.global_network_id #=> String
    #   resp.data.core_network.core_network_id #=> String
    #   resp.data.core_network.core_network_arn #=> String
    #   resp.data.core_network.description #=> String
    #   resp.data.core_network.created_at #=> Time
    #   resp.data.core_network.state #=> String, one of ["CREATING", "UPDATING", "AVAILABLE", "DELETING"]
    #   resp.data.core_network.segments #=> Array<CoreNetworkSegment>
    #   resp.data.core_network.segments[0] #=> Types::CoreNetworkSegment
    #   resp.data.core_network.segments[0].name #=> String
    #   resp.data.core_network.segments[0].edge_locations #=> Array<String>
    #   resp.data.core_network.segments[0].edge_locations[0] #=> String
    #   resp.data.core_network.segments[0].shared_segments #=> Array<String>
    #   resp.data.core_network.segments[0].shared_segments[0] #=> String
    #   resp.data.core_network.edges #=> Array<CoreNetworkEdge>
    #   resp.data.core_network.edges[0] #=> Types::CoreNetworkEdge
    #   resp.data.core_network.edges[0].edge_location #=> String
    #   resp.data.core_network.edges[0].asn #=> Integer
    #   resp.data.core_network.edges[0].inside_cidr_blocks #=> Array<String>
    #   resp.data.core_network.tags #=> Array<Tag>
    #   resp.data.core_network.tags[0] #=> Types::Tag
    #   resp.data.core_network.tags[0].key #=> String
    #   resp.data.core_network.tags[0].value #=> String
    #
    def delete_core_network(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCoreNetworkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCoreNetworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCoreNetwork
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteCoreNetwork
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCoreNetwork,
        stubs: @stubs,
        params_class: Params::DeleteCoreNetworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_core_network
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a policy version from a core network. You can't delete the current LIVE policy.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCoreNetworkPolicyVersionInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network for the deleted policy.</p>
    #
    # @option params [Integer] :policy_version_id
    #   <p>The version ID of the deleted policy.</p>
    #
    # @return [Types::DeleteCoreNetworkPolicyVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_core_network_policy_version(
    #     core_network_id: 'CoreNetworkId', # required
    #     policy_version_id: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCoreNetworkPolicyVersionOutput
    #   resp.data.core_network_policy #=> Types::CoreNetworkPolicy
    #   resp.data.core_network_policy.core_network_id #=> String
    #   resp.data.core_network_policy.policy_version_id #=> Integer
    #   resp.data.core_network_policy.alias #=> String, one of ["LIVE", "LATEST"]
    #   resp.data.core_network_policy.description #=> String
    #   resp.data.core_network_policy.created_at #=> Time
    #   resp.data.core_network_policy.change_set_state #=> String, one of ["PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"]
    #   resp.data.core_network_policy.policy_errors #=> Array<CoreNetworkPolicyError>
    #   resp.data.core_network_policy.policy_errors[0] #=> Types::CoreNetworkPolicyError
    #   resp.data.core_network_policy.policy_errors[0].error_code #=> String
    #   resp.data.core_network_policy.policy_errors[0].message #=> String
    #   resp.data.core_network_policy.policy_errors[0].path #=> String
    #   resp.data.core_network_policy.policy_document #=> String
    #
    def delete_core_network_policy_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCoreNetworkPolicyVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCoreNetworkPolicyVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCoreNetworkPolicyVersion
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteCoreNetworkPolicyVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCoreNetworkPolicyVersion,
        stubs: @stubs,
        params_class: Params::DeleteCoreNetworkPolicyVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_core_network_policy_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing device. You must first disassociate the device from any links and
    #             customer gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDeviceInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    #
    # @return [Types::DeleteDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device(
    #     global_network_id: 'GlobalNetworkId', # required
    #     device_id: 'DeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDeviceOutput
    #   resp.data.device #=> Types::Device
    #   resp.data.device.device_id #=> String
    #   resp.data.device.device_arn #=> String
    #   resp.data.device.global_network_id #=> String
    #   resp.data.device.aws_location #=> Types::AWSLocation
    #   resp.data.device.aws_location.zone #=> String
    #   resp.data.device.aws_location.subnet_arn #=> String
    #   resp.data.device.description #=> String
    #   resp.data.device.type #=> String
    #   resp.data.device.vendor #=> String
    #   resp.data.device.model #=> String
    #   resp.data.device.serial_number #=> String
    #   resp.data.device.location #=> Types::Location
    #   resp.data.device.location.address #=> String
    #   resp.data.device.location.latitude #=> String
    #   resp.data.device.location.longitude #=> String
    #   resp.data.device.site_id #=> String
    #   resp.data.device.created_at #=> Time
    #   resp.data.device.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.device.tags #=> Array<Tag>
    #   resp.data.device.tags[0] #=> Types::Tag
    #   resp.data.device.tags[0].key #=> String
    #   resp.data.device.tags[0].value #=> String
    #
    def delete_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDevice
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDevice,
        stubs: @stubs,
        params_class: Params::DeleteDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing global network. You must first delete all global network objects
    #             (devices, links, and sites), deregister all transit gateways, and delete any core networks.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGlobalNetworkInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @return [Types::DeleteGlobalNetworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_global_network(
    #     global_network_id: 'GlobalNetworkId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGlobalNetworkOutput
    #   resp.data.global_network #=> Types::GlobalNetwork
    #   resp.data.global_network.global_network_id #=> String
    #   resp.data.global_network.global_network_arn #=> String
    #   resp.data.global_network.description #=> String
    #   resp.data.global_network.created_at #=> Time
    #   resp.data.global_network.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.global_network.tags #=> Array<Tag>
    #   resp.data.global_network.tags[0] #=> Types::Tag
    #   resp.data.global_network.tags[0].key #=> String
    #   resp.data.global_network.tags[0].value #=> String
    #
    def delete_global_network(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGlobalNetworkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGlobalNetworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGlobalNetwork
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteGlobalNetwork
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGlobalNetwork,
        stubs: @stubs,
        params_class: Params::DeleteGlobalNetworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_global_network
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing link. You must first disassociate the link from any devices and
    #             customer gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLinkInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    #
    # @return [Types::DeleteLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_link(
    #     global_network_id: 'GlobalNetworkId', # required
    #     link_id: 'LinkId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLinkOutput
    #   resp.data.link #=> Types::Link
    #   resp.data.link.link_id #=> String
    #   resp.data.link.link_arn #=> String
    #   resp.data.link.global_network_id #=> String
    #   resp.data.link.site_id #=> String
    #   resp.data.link.description #=> String
    #   resp.data.link.type #=> String
    #   resp.data.link.bandwidth #=> Types::Bandwidth
    #   resp.data.link.bandwidth.upload_speed #=> Integer
    #   resp.data.link.bandwidth.download_speed #=> Integer
    #   resp.data.link.provider #=> String
    #   resp.data.link.created_at #=> Time
    #   resp.data.link.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.link.tags #=> Array<Tag>
    #   resp.data.link.tags[0] #=> Types::Tag
    #   resp.data.link.tags[0].key #=> String
    #   resp.data.link.tags[0].value #=> String
    #
    def delete_link(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLinkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLinkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLink
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteLink
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLink,
        stubs: @stubs,
        params_class: Params::DeleteLinkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_link
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a resource policy for the specified resource. This revokes the access of the principals specified in the resource policy.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the policy to delete.</p>
    #
    # @return [Types::DeleteResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourcePolicyOutput
    #
    def delete_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourcePolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourcePolicy,
        stubs: @stubs,
        params_class: Params::DeleteResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing site. The site cannot be associated with any device or link.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSiteInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :site_id
    #   <p>The ID of the site.</p>
    #
    # @return [Types::DeleteSiteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_site(
    #     global_network_id: 'GlobalNetworkId', # required
    #     site_id: 'SiteId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSiteOutput
    #   resp.data.site #=> Types::Site
    #   resp.data.site.site_id #=> String
    #   resp.data.site.site_arn #=> String
    #   resp.data.site.global_network_id #=> String
    #   resp.data.site.description #=> String
    #   resp.data.site.location #=> Types::Location
    #   resp.data.site.location.address #=> String
    #   resp.data.site.location.latitude #=> String
    #   resp.data.site.location.longitude #=> String
    #   resp.data.site.created_at #=> Time
    #   resp.data.site.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.site.tags #=> Array<Tag>
    #   resp.data.site.tags[0] #=> Types::Tag
    #   resp.data.site.tags[0].key #=> String
    #   resp.data.site.tags[0].value #=> String
    #
    def delete_site(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSiteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSiteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSite
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteSite
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSite,
        stubs: @stubs,
        params_class: Params::DeleteSiteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_site
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters a transit gateway from your global network. This action does not delete
    #             your transit gateway, or modify any of its attachments. This action removes any customer gateway associations.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterTransitGatewayInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :transit_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway.</p>
    #
    # @return [Types::DeregisterTransitGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_transit_gateway(
    #     global_network_id: 'GlobalNetworkId', # required
    #     transit_gateway_arn: 'TransitGatewayArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterTransitGatewayOutput
    #   resp.data.transit_gateway_registration #=> Types::TransitGatewayRegistration
    #   resp.data.transit_gateway_registration.global_network_id #=> String
    #   resp.data.transit_gateway_registration.transit_gateway_arn #=> String
    #   resp.data.transit_gateway_registration.state #=> Types::TransitGatewayRegistrationStateReason
    #   resp.data.transit_gateway_registration.state.code #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED", "FAILED"]
    #   resp.data.transit_gateway_registration.state.message #=> String
    #
    def deregister_transit_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterTransitGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterTransitGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterTransitGateway
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeregisterTransitGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterTransitGateway,
        stubs: @stubs,
        params_class: Params::DeregisterTransitGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_transit_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes one or more global networks. By default, all global networks are
    #             described. To describe the objects in your global network, you must use the appropriate
    #                 <code>Get*</code> action. For example, to list the transit gateways in your global
    #             network, use <a>GetTransitGatewayRegistrations</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGlobalNetworksInput}.
    #
    # @option params [Array<String>] :global_network_ids
    #   <p>The IDs of one or more global networks. The maximum is 10.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::DescribeGlobalNetworksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_global_networks(
    #     global_network_ids: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGlobalNetworksOutput
    #   resp.data.global_networks #=> Array<GlobalNetwork>
    #   resp.data.global_networks[0] #=> Types::GlobalNetwork
    #   resp.data.global_networks[0].global_network_id #=> String
    #   resp.data.global_networks[0].global_network_arn #=> String
    #   resp.data.global_networks[0].description #=> String
    #   resp.data.global_networks[0].created_at #=> Time
    #   resp.data.global_networks[0].state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.global_networks[0].tags #=> Array<Tag>
    #   resp.data.global_networks[0].tags[0] #=> Types::Tag
    #   resp.data.global_networks[0].tags[0].key #=> String
    #   resp.data.global_networks[0].tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def describe_global_networks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGlobalNetworksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGlobalNetworksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGlobalNetworks
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeGlobalNetworks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGlobalNetworks,
        stubs: @stubs,
        params_class: Params::DescribeGlobalNetworksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_global_networks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a core network Connect peer from a device and a link. </p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateConnectPeerInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :connect_peer_id
    #   <p>The ID of the Connect peer to disassociate from a device.</p>
    #
    # @return [Types::DisassociateConnectPeerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_connect_peer(
    #     global_network_id: 'GlobalNetworkId', # required
    #     connect_peer_id: 'ConnectPeerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateConnectPeerOutput
    #   resp.data.connect_peer_association #=> Types::ConnectPeerAssociation
    #   resp.data.connect_peer_association.connect_peer_id #=> String
    #   resp.data.connect_peer_association.global_network_id #=> String
    #   resp.data.connect_peer_association.device_id #=> String
    #   resp.data.connect_peer_association.link_id #=> String
    #   resp.data.connect_peer_association.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #
    def disassociate_connect_peer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateConnectPeerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateConnectPeerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateConnectPeer
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateConnectPeer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateConnectPeer,
        stubs: @stubs,
        params_class: Params::DisassociateConnectPeerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_connect_peer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a customer gateway from a device and a link.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateCustomerGatewayInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :customer_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the customer gateway.</p>
    #
    # @return [Types::DisassociateCustomerGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_customer_gateway(
    #     global_network_id: 'GlobalNetworkId', # required
    #     customer_gateway_arn: 'CustomerGatewayArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateCustomerGatewayOutput
    #   resp.data.customer_gateway_association #=> Types::CustomerGatewayAssociation
    #   resp.data.customer_gateway_association.customer_gateway_arn #=> String
    #   resp.data.customer_gateway_association.global_network_id #=> String
    #   resp.data.customer_gateway_association.device_id #=> String
    #   resp.data.customer_gateway_association.link_id #=> String
    #   resp.data.customer_gateway_association.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #
    def disassociate_customer_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateCustomerGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateCustomerGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateCustomerGateway
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateCustomerGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateCustomerGateway,
        stubs: @stubs,
        params_class: Params::DisassociateCustomerGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_customer_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates an existing device from a link. You must first disassociate any customer
    #             gateways that are associated with the link.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateLinkInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    #
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    #
    # @return [Types::DisassociateLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_link(
    #     global_network_id: 'GlobalNetworkId', # required
    #     device_id: 'DeviceId', # required
    #     link_id: 'LinkId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateLinkOutput
    #   resp.data.link_association #=> Types::LinkAssociation
    #   resp.data.link_association.global_network_id #=> String
    #   resp.data.link_association.device_id #=> String
    #   resp.data.link_association.link_id #=> String
    #   resp.data.link_association.link_association_state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #
    def disassociate_link(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateLinkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateLinkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateLink
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateLink
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateLink,
        stubs: @stubs,
        params_class: Params::DisassociateLinkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_link
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a transit gateway Connect peer from a device and link.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateTransitGatewayConnectPeerInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :transit_gateway_connect_peer_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway Connect peer.</p>
    #
    # @return [Types::DisassociateTransitGatewayConnectPeerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_transit_gateway_connect_peer(
    #     global_network_id: 'GlobalNetworkId', # required
    #     transit_gateway_connect_peer_arn: 'TransitGatewayConnectPeerArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateTransitGatewayConnectPeerOutput
    #   resp.data.transit_gateway_connect_peer_association #=> Types::TransitGatewayConnectPeerAssociation
    #   resp.data.transit_gateway_connect_peer_association.transit_gateway_connect_peer_arn #=> String
    #   resp.data.transit_gateway_connect_peer_association.global_network_id #=> String
    #   resp.data.transit_gateway_connect_peer_association.device_id #=> String
    #   resp.data.transit_gateway_connect_peer_association.link_id #=> String
    #   resp.data.transit_gateway_connect_peer_association.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #
    def disassociate_transit_gateway_connect_peer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateTransitGatewayConnectPeerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateTransitGatewayConnectPeerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateTransitGatewayConnectPeer
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateTransitGatewayConnectPeer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateTransitGatewayConnectPeer,
        stubs: @stubs,
        params_class: Params::DisassociateTransitGatewayConnectPeerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_transit_gateway_connect_peer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Executes a change set on your core network. Deploys changes globally based on the policy submitted..</p>
    #
    # @param [Hash] params
    #   See {Types::ExecuteCoreNetworkChangeSetInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    #
    # @option params [Integer] :policy_version_id
    #   <p>The ID of the policy version.</p>
    #
    # @return [Types::ExecuteCoreNetworkChangeSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_core_network_change_set(
    #     core_network_id: 'CoreNetworkId', # required
    #     policy_version_id: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExecuteCoreNetworkChangeSetOutput
    #
    def execute_core_network_change_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExecuteCoreNetworkChangeSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExecuteCoreNetworkChangeSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExecuteCoreNetworkChangeSet
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ExecuteCoreNetworkChangeSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExecuteCoreNetworkChangeSet,
        stubs: @stubs,
        params_class: Params::ExecuteCoreNetworkChangeSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :execute_core_network_change_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a core network Connect attachment.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConnectAttachmentInput}.
    #
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment.</p>
    #
    # @return [Types::GetConnectAttachmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connect_attachment(
    #     attachment_id: 'AttachmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConnectAttachmentOutput
    #   resp.data.connect_attachment #=> Types::ConnectAttachment
    #   resp.data.connect_attachment.attachment #=> Types::Attachment
    #   resp.data.connect_attachment.attachment.core_network_id #=> String
    #   resp.data.connect_attachment.attachment.core_network_arn #=> String
    #   resp.data.connect_attachment.attachment.attachment_id #=> String
    #   resp.data.connect_attachment.attachment.owner_account_id #=> String
    #   resp.data.connect_attachment.attachment.attachment_type #=> String, one of ["CONNECT", "SITE_TO_SITE_VPN", "VPC"]
    #   resp.data.connect_attachment.attachment.state #=> String, one of ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"]
    #   resp.data.connect_attachment.attachment.edge_location #=> String
    #   resp.data.connect_attachment.attachment.resource_arn #=> String
    #   resp.data.connect_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.data.connect_attachment.attachment.segment_name #=> String
    #   resp.data.connect_attachment.attachment.tags #=> Array<Tag>
    #   resp.data.connect_attachment.attachment.tags[0] #=> Types::Tag
    #   resp.data.connect_attachment.attachment.tags[0].key #=> String
    #   resp.data.connect_attachment.attachment.tags[0].value #=> String
    #   resp.data.connect_attachment.attachment.proposed_segment_change #=> Types::ProposedSegmentChange
    #   resp.data.connect_attachment.attachment.proposed_segment_change.tags #=> Array<Tag>
    #   resp.data.connect_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.data.connect_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.data.connect_attachment.attachment.created_at #=> Time
    #   resp.data.connect_attachment.attachment.updated_at #=> Time
    #   resp.data.connect_attachment.transport_attachment_id #=> String
    #   resp.data.connect_attachment.options #=> Types::ConnectAttachmentOptions
    #   resp.data.connect_attachment.options.protocol #=> String, one of ["GRE"]
    #
    def get_connect_attachment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConnectAttachmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConnectAttachmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConnectAttachment
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetConnectAttachment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConnectAttachment,
        stubs: @stubs,
        params_class: Params::GetConnectAttachmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_connect_attachment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a core network Connect peer.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConnectPeerInput}.
    #
    # @option params [String] :connect_peer_id
    #   <p>The ID of the Connect peer.</p>
    #
    # @return [Types::GetConnectPeerOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connect_peer(
    #     connect_peer_id: 'ConnectPeerId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConnectPeerOutput
    #   resp.data.connect_peer #=> Types::ConnectPeer
    #   resp.data.connect_peer.core_network_id #=> String
    #   resp.data.connect_peer.connect_attachment_id #=> String
    #   resp.data.connect_peer.connect_peer_id #=> String
    #   resp.data.connect_peer.edge_location #=> String
    #   resp.data.connect_peer.state #=> String, one of ["CREATING", "FAILED", "AVAILABLE", "DELETING"]
    #   resp.data.connect_peer.created_at #=> Time
    #   resp.data.connect_peer.configuration #=> Types::ConnectPeerConfiguration
    #   resp.data.connect_peer.configuration.core_network_address #=> String
    #   resp.data.connect_peer.configuration.peer_address #=> String
    #   resp.data.connect_peer.configuration.inside_cidr_blocks #=> Array<String>
    #   resp.data.connect_peer.configuration.inside_cidr_blocks[0] #=> String
    #   resp.data.connect_peer.configuration.protocol #=> String, one of ["GRE"]
    #   resp.data.connect_peer.configuration.bgp_configurations #=> Array<ConnectPeerBgpConfiguration>
    #   resp.data.connect_peer.configuration.bgp_configurations[0] #=> Types::ConnectPeerBgpConfiguration
    #   resp.data.connect_peer.configuration.bgp_configurations[0].core_network_asn #=> Integer
    #   resp.data.connect_peer.configuration.bgp_configurations[0].peer_asn #=> Integer
    #   resp.data.connect_peer.configuration.bgp_configurations[0].core_network_address #=> String
    #   resp.data.connect_peer.configuration.bgp_configurations[0].peer_address #=> String
    #   resp.data.connect_peer.tags #=> Array<Tag>
    #   resp.data.connect_peer.tags[0] #=> Types::Tag
    #   resp.data.connect_peer.tags[0].key #=> String
    #   resp.data.connect_peer.tags[0].value #=> String
    #
    def get_connect_peer(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConnectPeerInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConnectPeerInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConnectPeer
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetConnectPeer
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConnectPeer,
        stubs: @stubs,
        params_class: Params::GetConnectPeerOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_connect_peer
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a core network Connect peer associations.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConnectPeerAssociationsInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [Array<String>] :connect_peer_ids
    #   <p>The IDs of the Connect peers.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::GetConnectPeerAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connect_peer_associations(
    #     global_network_id: 'GlobalNetworkId', # required
    #     connect_peer_ids: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConnectPeerAssociationsOutput
    #   resp.data.connect_peer_associations #=> Array<ConnectPeerAssociation>
    #   resp.data.connect_peer_associations[0] #=> Types::ConnectPeerAssociation
    #   resp.data.connect_peer_associations[0].connect_peer_id #=> String
    #   resp.data.connect_peer_associations[0].global_network_id #=> String
    #   resp.data.connect_peer_associations[0].device_id #=> String
    #   resp.data.connect_peer_associations[0].link_id #=> String
    #   resp.data.connect_peer_associations[0].state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #   resp.data.next_token #=> String
    #
    def get_connect_peer_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConnectPeerAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConnectPeerAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConnectPeerAssociations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetConnectPeerAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConnectPeerAssociations,
        stubs: @stubs,
        params_class: Params::GetConnectPeerAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_connect_peer_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about one or more of your connections in a global network.</p>
    #
    # @param [Hash] params
    #   See {Types::GetConnectionsInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [Array<String>] :connection_ids
    #   <p>One or more connection IDs.</p>
    #
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::GetConnectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_connections(
    #     global_network_id: 'GlobalNetworkId', # required
    #     connection_ids: [
    #       'member'
    #     ],
    #     device_id: 'DeviceId',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetConnectionsOutput
    #   resp.data.connections #=> Array<Connection>
    #   resp.data.connections[0] #=> Types::Connection
    #   resp.data.connections[0].connection_id #=> String
    #   resp.data.connections[0].connection_arn #=> String
    #   resp.data.connections[0].global_network_id #=> String
    #   resp.data.connections[0].device_id #=> String
    #   resp.data.connections[0].connected_device_id #=> String
    #   resp.data.connections[0].link_id #=> String
    #   resp.data.connections[0].connected_link_id #=> String
    #   resp.data.connections[0].description #=> String
    #   resp.data.connections[0].created_at #=> Time
    #   resp.data.connections[0].state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.connections[0].tags #=> Array<Tag>
    #   resp.data.connections[0].tags[0] #=> Types::Tag
    #   resp.data.connections[0].tags[0].key #=> String
    #   resp.data.connections[0].tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def get_connections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetConnectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetConnectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetConnections
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetConnections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetConnections,
        stubs: @stubs,
        params_class: Params::GetConnectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_connections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the LIVE policy for a core network.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCoreNetworkInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    #
    # @return [Types::GetCoreNetworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_core_network(
    #     core_network_id: 'CoreNetworkId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCoreNetworkOutput
    #   resp.data.core_network #=> Types::CoreNetwork
    #   resp.data.core_network.global_network_id #=> String
    #   resp.data.core_network.core_network_id #=> String
    #   resp.data.core_network.core_network_arn #=> String
    #   resp.data.core_network.description #=> String
    #   resp.data.core_network.created_at #=> Time
    #   resp.data.core_network.state #=> String, one of ["CREATING", "UPDATING", "AVAILABLE", "DELETING"]
    #   resp.data.core_network.segments #=> Array<CoreNetworkSegment>
    #   resp.data.core_network.segments[0] #=> Types::CoreNetworkSegment
    #   resp.data.core_network.segments[0].name #=> String
    #   resp.data.core_network.segments[0].edge_locations #=> Array<String>
    #   resp.data.core_network.segments[0].edge_locations[0] #=> String
    #   resp.data.core_network.segments[0].shared_segments #=> Array<String>
    #   resp.data.core_network.segments[0].shared_segments[0] #=> String
    #   resp.data.core_network.edges #=> Array<CoreNetworkEdge>
    #   resp.data.core_network.edges[0] #=> Types::CoreNetworkEdge
    #   resp.data.core_network.edges[0].edge_location #=> String
    #   resp.data.core_network.edges[0].asn #=> Integer
    #   resp.data.core_network.edges[0].inside_cidr_blocks #=> Array<String>
    #   resp.data.core_network.tags #=> Array<Tag>
    #   resp.data.core_network.tags[0] #=> Types::Tag
    #   resp.data.core_network.tags[0].key #=> String
    #   resp.data.core_network.tags[0].value #=> String
    #
    def get_core_network(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCoreNetworkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCoreNetworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCoreNetwork
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetCoreNetwork
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCoreNetwork,
        stubs: @stubs,
        params_class: Params::GetCoreNetworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_core_network
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a change set between the LIVE core network policy and a submitted policy.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCoreNetworkChangeSetInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    #
    # @option params [Integer] :policy_version_id
    #   <p>The ID of the policy version.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::GetCoreNetworkChangeSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_core_network_change_set(
    #     core_network_id: 'CoreNetworkId', # required
    #     policy_version_id: 1, # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCoreNetworkChangeSetOutput
    #   resp.data.core_network_changes #=> Array<CoreNetworkChange>
    #   resp.data.core_network_changes[0] #=> Types::CoreNetworkChange
    #   resp.data.core_network_changes[0].type #=> String, one of ["CORE_NETWORK_SEGMENT", "CORE_NETWORK_EDGE", "ATTACHMENT_MAPPING", "ATTACHMENT_ROUTE_PROPAGATION", "ATTACHMENT_ROUTE_STATIC"]
    #   resp.data.core_network_changes[0].action #=> String, one of ["ADD", "MODIFY", "REMOVE"]
    #   resp.data.core_network_changes[0].identifier #=> String
    #   resp.data.core_network_changes[0].previous_values #=> Types::CoreNetworkChangeValues
    #   resp.data.core_network_changes[0].previous_values.segment_name #=> String
    #   resp.data.core_network_changes[0].previous_values.edge_locations #=> Array<String>
    #   resp.data.core_network_changes[0].previous_values.edge_locations[0] #=> String
    #   resp.data.core_network_changes[0].previous_values.asn #=> Integer
    #   resp.data.core_network_changes[0].previous_values.cidr #=> String
    #   resp.data.core_network_changes[0].previous_values.destination_identifier #=> String
    #   resp.data.core_network_changes[0].previous_values.inside_cidr_blocks #=> Array<String>
    #   resp.data.core_network_changes[0].previous_values.inside_cidr_blocks[0] #=> String
    #   resp.data.core_network_changes[0].previous_values.shared_segments #=> Array<String>
    #   resp.data.core_network_changes[0].new_values #=> Types::CoreNetworkChangeValues
    #   resp.data.next_token #=> String
    #
    def get_core_network_change_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCoreNetworkChangeSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCoreNetworkChangeSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCoreNetworkChangeSet
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetCoreNetworkChangeSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCoreNetworkChangeSet,
        stubs: @stubs,
        params_class: Params::GetCoreNetworkChangeSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_core_network_change_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details about a core network policy. You can get details about your current live policy or any previous policy version.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCoreNetworkPolicyInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    #
    # @option params [Integer] :policy_version_id
    #   <p>The ID of a core network policy version.</p>
    #
    # @option params [String] :alias
    #   <p>The alias of a core network policy </p>
    #
    # @return [Types::GetCoreNetworkPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_core_network_policy(
    #     core_network_id: 'CoreNetworkId', # required
    #     policy_version_id: 1,
    #     alias: 'LIVE' # accepts ["LIVE", "LATEST"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCoreNetworkPolicyOutput
    #   resp.data.core_network_policy #=> Types::CoreNetworkPolicy
    #   resp.data.core_network_policy.core_network_id #=> String
    #   resp.data.core_network_policy.policy_version_id #=> Integer
    #   resp.data.core_network_policy.alias #=> String, one of ["LIVE", "LATEST"]
    #   resp.data.core_network_policy.description #=> String
    #   resp.data.core_network_policy.created_at #=> Time
    #   resp.data.core_network_policy.change_set_state #=> String, one of ["PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"]
    #   resp.data.core_network_policy.policy_errors #=> Array<CoreNetworkPolicyError>
    #   resp.data.core_network_policy.policy_errors[0] #=> Types::CoreNetworkPolicyError
    #   resp.data.core_network_policy.policy_errors[0].error_code #=> String
    #   resp.data.core_network_policy.policy_errors[0].message #=> String
    #   resp.data.core_network_policy.policy_errors[0].path #=> String
    #   resp.data.core_network_policy.policy_document #=> String
    #
    def get_core_network_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCoreNetworkPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCoreNetworkPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCoreNetworkPolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetCoreNetworkPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCoreNetworkPolicy,
        stubs: @stubs,
        params_class: Params::GetCoreNetworkPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_core_network_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the association information for customer gateways that are associated with
    #             devices and links in your global network.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCustomerGatewayAssociationsInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [Array<String>] :customer_gateway_arns
    #   <p>One or more customer gateway Amazon Resource Names (ARNs). The maximum is 10.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::GetCustomerGatewayAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_customer_gateway_associations(
    #     global_network_id: 'GlobalNetworkId', # required
    #     customer_gateway_arns: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCustomerGatewayAssociationsOutput
    #   resp.data.customer_gateway_associations #=> Array<CustomerGatewayAssociation>
    #   resp.data.customer_gateway_associations[0] #=> Types::CustomerGatewayAssociation
    #   resp.data.customer_gateway_associations[0].customer_gateway_arn #=> String
    #   resp.data.customer_gateway_associations[0].global_network_id #=> String
    #   resp.data.customer_gateway_associations[0].device_id #=> String
    #   resp.data.customer_gateway_associations[0].link_id #=> String
    #   resp.data.customer_gateway_associations[0].state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #   resp.data.next_token #=> String
    #
    def get_customer_gateway_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCustomerGatewayAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCustomerGatewayAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCustomerGatewayAssociations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetCustomerGatewayAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCustomerGatewayAssociations,
        stubs: @stubs,
        params_class: Params::GetCustomerGatewayAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_customer_gateway_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about one or more of your devices in a global network.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDevicesInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [Array<String>] :device_ids
    #   <p>One or more device IDs. The maximum is 10.</p>
    #
    # @option params [String] :site_id
    #   <p>The ID of the site.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::GetDevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_devices(
    #     global_network_id: 'GlobalNetworkId', # required
    #     device_ids: [
    #       'member'
    #     ],
    #     site_id: 'SiteId',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDevicesOutput
    #   resp.data.devices #=> Array<Device>
    #   resp.data.devices[0] #=> Types::Device
    #   resp.data.devices[0].device_id #=> String
    #   resp.data.devices[0].device_arn #=> String
    #   resp.data.devices[0].global_network_id #=> String
    #   resp.data.devices[0].aws_location #=> Types::AWSLocation
    #   resp.data.devices[0].aws_location.zone #=> String
    #   resp.data.devices[0].aws_location.subnet_arn #=> String
    #   resp.data.devices[0].description #=> String
    #   resp.data.devices[0].type #=> String
    #   resp.data.devices[0].vendor #=> String
    #   resp.data.devices[0].model #=> String
    #   resp.data.devices[0].serial_number #=> String
    #   resp.data.devices[0].location #=> Types::Location
    #   resp.data.devices[0].location.address #=> String
    #   resp.data.devices[0].location.latitude #=> String
    #   resp.data.devices[0].location.longitude #=> String
    #   resp.data.devices[0].site_id #=> String
    #   resp.data.devices[0].created_at #=> Time
    #   resp.data.devices[0].state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.devices[0].tags #=> Array<Tag>
    #   resp.data.devices[0].tags[0] #=> Types::Tag
    #   resp.data.devices[0].tags[0].key #=> String
    #   resp.data.devices[0].tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def get_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDevicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDevices
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetDevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDevices,
        stubs: @stubs,
        params_class: Params::GetDevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the link associations for a device or a link. Either the device ID or the link ID
    #             must be specified.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLinkAssociationsInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    #
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::GetLinkAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_link_associations(
    #     global_network_id: 'GlobalNetworkId', # required
    #     device_id: 'DeviceId',
    #     link_id: 'LinkId',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLinkAssociationsOutput
    #   resp.data.link_associations #=> Array<LinkAssociation>
    #   resp.data.link_associations[0] #=> Types::LinkAssociation
    #   resp.data.link_associations[0].global_network_id #=> String
    #   resp.data.link_associations[0].device_id #=> String
    #   resp.data.link_associations[0].link_id #=> String
    #   resp.data.link_associations[0].link_association_state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #   resp.data.next_token #=> String
    #
    def get_link_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLinkAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLinkAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLinkAssociations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetLinkAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLinkAssociations,
        stubs: @stubs,
        params_class: Params::GetLinkAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_link_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about one or more links in a specified global network.</p>
    #         <p>If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLinksInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [Array<String>] :link_ids
    #   <p>One or more link IDs. The maximum is 10.</p>
    #
    # @option params [String] :site_id
    #   <p>The ID of the site.</p>
    #
    # @option params [String] :type
    #   <p>The link type.</p>
    #
    # @option params [String] :provider
    #   <p>The link provider.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::GetLinksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_links(
    #     global_network_id: 'GlobalNetworkId', # required
    #     link_ids: [
    #       'member'
    #     ],
    #     site_id: 'SiteId',
    #     type: 'Type',
    #     provider: 'Provider',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLinksOutput
    #   resp.data.links #=> Array<Link>
    #   resp.data.links[0] #=> Types::Link
    #   resp.data.links[0].link_id #=> String
    #   resp.data.links[0].link_arn #=> String
    #   resp.data.links[0].global_network_id #=> String
    #   resp.data.links[0].site_id #=> String
    #   resp.data.links[0].description #=> String
    #   resp.data.links[0].type #=> String
    #   resp.data.links[0].bandwidth #=> Types::Bandwidth
    #   resp.data.links[0].bandwidth.upload_speed #=> Integer
    #   resp.data.links[0].bandwidth.download_speed #=> Integer
    #   resp.data.links[0].provider #=> String
    #   resp.data.links[0].created_at #=> Time
    #   resp.data.links[0].state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.links[0].tags #=> Array<Tag>
    #   resp.data.links[0].tags[0] #=> Types::Tag
    #   resp.data.links[0].tags[0].key #=> String
    #   resp.data.links[0].tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def get_links(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLinksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLinksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLinks
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetLinks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLinks,
        stubs: @stubs,
        params_class: Params::GetLinksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_links
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the count of network resources, by resource type, for the specified global network.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNetworkResourceCountsInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :resource_type
    #   <p>The resource type.</p>
    #            <p>The following are the supported resource types for Direct Connect:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>dxcon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dx-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dx-vif</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #           <p>The following are the supported resource types for Network Manager:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>connection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>device</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>link</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>site</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #           <p>The following are the supported resource types for Amazon VPC:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>customer-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-attachment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-route-table</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>vpn-connection</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::GetNetworkResourceCountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_resource_counts(
    #     global_network_id: 'GlobalNetworkId', # required
    #     resource_type: 'ResourceType',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNetworkResourceCountsOutput
    #   resp.data.network_resource_counts #=> Array<NetworkResourceCount>
    #   resp.data.network_resource_counts[0] #=> Types::NetworkResourceCount
    #   resp.data.network_resource_counts[0].resource_type #=> String
    #   resp.data.network_resource_counts[0].count #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_network_resource_counts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNetworkResourceCountsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNetworkResourceCountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNetworkResourceCounts
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetNetworkResourceCounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNetworkResourceCounts,
        stubs: @stubs,
        params_class: Params::GetNetworkResourceCountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_network_resource_counts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the network resource relationships for the specified global network.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNetworkResourceRelationshipsInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    #
    # @option params [String] :registered_gateway_arn
    #   <p>The ARN of the registered gateway.</p>
    #
    # @option params [String] :aws_region
    #   <p>The Amazon Web Services Region.</p>
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :resource_type
    #   <p>The resource type.</p>
    #           <p>The following are the supported resource types for Direct Connect:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>dxcon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dx-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dx-vif</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #           <p>The following are the supported resource types for Network Manager:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>connection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>device</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>link</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>site</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #           <p>The following are the supported resource types for Amazon VPC:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>customer-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-attachment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-route-table</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>vpn-connection</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the gateway.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::GetNetworkResourceRelationshipsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_resource_relationships(
    #     global_network_id: 'GlobalNetworkId', # required
    #     core_network_id: 'CoreNetworkId',
    #     registered_gateway_arn: 'RegisteredGatewayArn',
    #     aws_region: 'AwsRegion',
    #     account_id: 'AccountId',
    #     resource_type: 'ResourceType',
    #     resource_arn: 'ResourceArn',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNetworkResourceRelationshipsOutput
    #   resp.data.relationships #=> Array<Relationship>
    #   resp.data.relationships[0] #=> Types::Relationship
    #   resp.data.relationships[0].from #=> String
    #   resp.data.relationships[0].to #=> String
    #   resp.data.next_token #=> String
    #
    def get_network_resource_relationships(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNetworkResourceRelationshipsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNetworkResourceRelationshipsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNetworkResourceRelationships
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetNetworkResourceRelationships
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNetworkResourceRelationships,
        stubs: @stubs,
        params_class: Params::GetNetworkResourceRelationshipsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_network_resource_relationships
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the network resources for the specified global network.</p>
    #          <p>The results include information from the corresponding Describe call for the resource, minus any sensitive information such as pre-shared keys.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNetworkResourcesInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    #
    # @option params [String] :registered_gateway_arn
    #   <p>The ARN of the gateway.</p>
    #
    # @option params [String] :aws_region
    #   <p>The Amazon Web Services Region.</p>
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :resource_type
    #   <p>The resource type.</p>
    #            <p>The following are the supported resource types for Direct Connect:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>dxcon</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/directconnect/latest/APIReference/API_Connection.html">Connection</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dx-gateway</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DirectConnectGateway.html">DirectConnectGateway</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>dx-vif</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/directconnect/latest/APIReference/API_VirtualInterface.html">VirtualInterface</a>.</p>
    #               </li>
    #            </ul>
    #
    #            <p>The following are the supported resource types for Network Manager:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>connection</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Connection.html">Connection</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>device</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Device.html">Device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>link</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Link.html">Link</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>site</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Site.html">Site</a>.</p>
    #               </li>
    #            </ul>
    #
    #            <p>The following are the supported resource types for Amazon VPC:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>customer-gateway</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CustomerGateway.html">CustomerGateway</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGateway.html">TransitGateway</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-attachment</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayAttachment.html">TransitGatewayAttachment</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-connect-peer</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayConnectPeer.html">TransitGatewayConnectPeer</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>transit-gateway-route-table</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayRouteTable.html">TransitGatewayRouteTable</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vpn-connection</code> - The definition model is
    #                       <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpnConnection.html">VpnConnection</a>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::GetNetworkResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_resources(
    #     global_network_id: 'GlobalNetworkId', # required
    #     core_network_id: 'CoreNetworkId',
    #     registered_gateway_arn: 'RegisteredGatewayArn',
    #     aws_region: 'AwsRegion',
    #     account_id: 'AccountId',
    #     resource_type: 'ResourceType',
    #     resource_arn: 'ResourceArn',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNetworkResourcesOutput
    #   resp.data.network_resources #=> Array<NetworkResource>
    #   resp.data.network_resources[0] #=> Types::NetworkResource
    #   resp.data.network_resources[0].registered_gateway_arn #=> String
    #   resp.data.network_resources[0].core_network_id #=> String
    #   resp.data.network_resources[0].aws_region #=> String
    #   resp.data.network_resources[0].account_id #=> String
    #   resp.data.network_resources[0].resource_type #=> String
    #   resp.data.network_resources[0].resource_id #=> String
    #   resp.data.network_resources[0].resource_arn #=> String
    #   resp.data.network_resources[0].definition #=> String
    #   resp.data.network_resources[0].definition_timestamp #=> Time
    #   resp.data.network_resources[0].tags #=> Array<Tag>
    #   resp.data.network_resources[0].tags[0] #=> Types::Tag
    #   resp.data.network_resources[0].tags[0].key #=> String
    #   resp.data.network_resources[0].tags[0].value #=> String
    #   resp.data.network_resources[0].metadata #=> Hash<String, String>
    #   resp.data.network_resources[0].metadata['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def get_network_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNetworkResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNetworkResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNetworkResources
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetNetworkResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNetworkResources,
        stubs: @stubs,
        params_class: Params::GetNetworkResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_network_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the network routes of the specified global network.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNetworkRoutesInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [RouteTableIdentifier] :route_table_identifier
    #   <p>The ID of the route table.</p>
    #
    # @option params [Array<String>] :exact_cidr_matches
    #   <p>An exact CIDR block.</p>
    #
    # @option params [Array<String>] :longest_prefix_matches
    #   <p>The most specific route that matches the traffic (longest prefix match).</p>
    #
    # @option params [Array<String>] :subnet_of_matches
    #   <p>The routes with a subnet that match the specified CIDR filter.</p>
    #
    # @option params [Array<String>] :supernet_of_matches
    #   <p>The routes with a CIDR that encompasses the CIDR filter. Example: If you specify 10.0.1.0/30, then the result returns 10.0.1.0/29.</p>
    #
    # @option params [Array<String>] :prefix_list_ids
    #   <p>The IDs of the prefix lists.</p>
    #
    # @option params [Array<String>] :states
    #   <p>The route states.</p>
    #
    # @option params [Array<String>] :types
    #   <p>The route types.</p>
    #
    # @option params [Hash<String, Array<String>>] :destination_filters
    #   <p>Filter by route table destination. Possible Values: TRANSIT_GATEWAY_ATTACHMENT_ID, RESOURCE_ID, or RESOURCE_TYPE.</p>
    #
    # @return [Types::GetNetworkRoutesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_routes(
    #     global_network_id: 'GlobalNetworkId', # required
    #     route_table_identifier: {
    #       transit_gateway_route_table_arn: 'TransitGatewayRouteTableArn',
    #       core_network_segment_edge: {
    #         core_network_id: 'CoreNetworkId',
    #         segment_name: 'SegmentName',
    #         edge_location: 'EdgeLocation'
    #       }
    #     }, # required
    #     exact_cidr_matches: [
    #       'member'
    #     ],
    #     states: [
    #       'ACTIVE' # accepts ["ACTIVE", "BLACKHOLE"]
    #     ],
    #     types: [
    #       'PROPAGATED' # accepts ["PROPAGATED", "STATIC"]
    #     ],
    #     destination_filters: {
    #       'key' => [
    #         'member'
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNetworkRoutesOutput
    #   resp.data.route_table_arn #=> String
    #   resp.data.core_network_segment_edge #=> Types::CoreNetworkSegmentEdgeIdentifier
    #   resp.data.core_network_segment_edge.core_network_id #=> String
    #   resp.data.core_network_segment_edge.segment_name #=> String
    #   resp.data.core_network_segment_edge.edge_location #=> String
    #   resp.data.route_table_type #=> String, one of ["TRANSIT_GATEWAY_ROUTE_TABLE", "CORE_NETWORK_SEGMENT"]
    #   resp.data.route_table_timestamp #=> Time
    #   resp.data.network_routes #=> Array<NetworkRoute>
    #   resp.data.network_routes[0] #=> Types::NetworkRoute
    #   resp.data.network_routes[0].destination_cidr_block #=> String
    #   resp.data.network_routes[0].destinations #=> Array<NetworkRouteDestination>
    #   resp.data.network_routes[0].destinations[0] #=> Types::NetworkRouteDestination
    #   resp.data.network_routes[0].destinations[0].core_network_attachment_id #=> String
    #   resp.data.network_routes[0].destinations[0].transit_gateway_attachment_id #=> String
    #   resp.data.network_routes[0].destinations[0].segment_name #=> String
    #   resp.data.network_routes[0].destinations[0].edge_location #=> String
    #   resp.data.network_routes[0].destinations[0].resource_type #=> String
    #   resp.data.network_routes[0].destinations[0].resource_id #=> String
    #   resp.data.network_routes[0].prefix_list_id #=> String
    #   resp.data.network_routes[0].state #=> String, one of ["ACTIVE", "BLACKHOLE"]
    #   resp.data.network_routes[0].type #=> String, one of ["PROPAGATED", "STATIC"]
    #
    def get_network_routes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNetworkRoutesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNetworkRoutesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNetworkRoutes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetNetworkRoutes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNetworkRoutes,
        stubs: @stubs,
        params_class: Params::GetNetworkRoutesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_network_routes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the network telemetry of the specified global network.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNetworkTelemetryInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    #
    # @option params [String] :registered_gateway_arn
    #   <p>The ARN of the gateway.</p>
    #
    # @option params [String] :aws_region
    #   <p>The Amazon Web Services Region.</p>
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account ID.</p>
    #
    # @option params [String] :resource_type
    #   <p>The resource type.</p>
    #           <p>The following are the supported resource types for Direct Connect:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>dxcon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dx-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>dx-vif</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #           <p>The following are the supported resource types for Network Manager:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>connection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>device</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>link</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>site</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #           <p>The following are the supported resource types for Amazon VPC:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>customer-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-attachment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-connect-peer</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>transit-gateway-route-table</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>vpn-connection</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::GetNetworkTelemetryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_telemetry(
    #     global_network_id: 'GlobalNetworkId', # required
    #     core_network_id: 'CoreNetworkId',
    #     registered_gateway_arn: 'RegisteredGatewayArn',
    #     aws_region: 'AwsRegion',
    #     account_id: 'AccountId',
    #     resource_type: 'ResourceType',
    #     resource_arn: 'ResourceArn',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNetworkTelemetryOutput
    #   resp.data.network_telemetry #=> Array<NetworkTelemetry>
    #   resp.data.network_telemetry[0] #=> Types::NetworkTelemetry
    #   resp.data.network_telemetry[0].registered_gateway_arn #=> String
    #   resp.data.network_telemetry[0].core_network_id #=> String
    #   resp.data.network_telemetry[0].aws_region #=> String
    #   resp.data.network_telemetry[0].account_id #=> String
    #   resp.data.network_telemetry[0].resource_type #=> String
    #   resp.data.network_telemetry[0].resource_id #=> String
    #   resp.data.network_telemetry[0].resource_arn #=> String
    #   resp.data.network_telemetry[0].address #=> String
    #   resp.data.network_telemetry[0].health #=> Types::ConnectionHealth
    #   resp.data.network_telemetry[0].health.type #=> String, one of ["BGP", "IPSEC"]
    #   resp.data.network_telemetry[0].health.status #=> String, one of ["UP", "DOWN"]
    #   resp.data.network_telemetry[0].health.timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def get_network_telemetry(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNetworkTelemetryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNetworkTelemetryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNetworkTelemetry
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetNetworkTelemetry
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNetworkTelemetry,
        stubs: @stubs,
        params_class: Params::GetNetworkTelemetryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_network_telemetry
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a resource policy.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @return [Types::GetResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourcePolicyOutput
    #   resp.data.policy_document #=> String
    #
    def get_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourcePolicy
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourcePolicy,
        stubs: @stubs,
        params_class: Params::GetResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the specified route analysis.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRouteAnalysisInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :route_analysis_id
    #   <p>The ID of the route analysis.</p>
    #
    # @return [Types::GetRouteAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_route_analysis(
    #     global_network_id: 'GlobalNetworkId', # required
    #     route_analysis_id: 'RouteAnalysisId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRouteAnalysisOutput
    #   resp.data.route_analysis #=> Types::RouteAnalysis
    #   resp.data.route_analysis.global_network_id #=> String
    #   resp.data.route_analysis.owner_account_id #=> String
    #   resp.data.route_analysis.route_analysis_id #=> String
    #   resp.data.route_analysis.start_timestamp #=> Time
    #   resp.data.route_analysis.status #=> String, one of ["RUNNING", "COMPLETED", "FAILED"]
    #   resp.data.route_analysis.source #=> Types::RouteAnalysisEndpointOptions
    #   resp.data.route_analysis.source.transit_gateway_attachment_arn #=> String
    #   resp.data.route_analysis.source.transit_gateway_arn #=> String
    #   resp.data.route_analysis.source.ip_address #=> String
    #   resp.data.route_analysis.destination #=> Types::RouteAnalysisEndpointOptions
    #   resp.data.route_analysis.include_return_path #=> Boolean
    #   resp.data.route_analysis.use_middleboxes #=> Boolean
    #   resp.data.route_analysis.forward_path #=> Types::RouteAnalysisPath
    #   resp.data.route_analysis.forward_path.completion_status #=> Types::RouteAnalysisCompletion
    #   resp.data.route_analysis.forward_path.completion_status.result_code #=> String, one of ["CONNECTED", "NOT_CONNECTED"]
    #   resp.data.route_analysis.forward_path.completion_status.reason_code #=> String, one of ["TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY", "CYCLIC_PATH_DETECTED", "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND", "ROUTE_NOT_FOUND", "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND", "INACTIVE_ROUTE_FOR_DESTINATION_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH", "MAX_HOPS_EXCEEDED", "POSSIBLE_MIDDLEBOX", "NO_DESTINATION_ARN_PROVIDED"]
    #   resp.data.route_analysis.forward_path.completion_status.reason_context #=> Hash<String, String>
    #   resp.data.route_analysis.forward_path.completion_status.reason_context['key'] #=> String
    #   resp.data.route_analysis.forward_path.path #=> Array<PathComponent>
    #   resp.data.route_analysis.forward_path.path[0] #=> Types::PathComponent
    #   resp.data.route_analysis.forward_path.path[0].sequence #=> Integer
    #   resp.data.route_analysis.forward_path.path[0].resource #=> Types::NetworkResourceSummary
    #   resp.data.route_analysis.forward_path.path[0].resource.registered_gateway_arn #=> String
    #   resp.data.route_analysis.forward_path.path[0].resource.resource_arn #=> String
    #   resp.data.route_analysis.forward_path.path[0].resource.resource_type #=> String
    #   resp.data.route_analysis.forward_path.path[0].resource.definition #=> String
    #   resp.data.route_analysis.forward_path.path[0].resource.name_tag #=> String
    #   resp.data.route_analysis.forward_path.path[0].resource.is_middlebox #=> Boolean
    #   resp.data.route_analysis.forward_path.path[0].destination_cidr_block #=> String
    #   resp.data.route_analysis.return_path #=> Types::RouteAnalysisPath
    #
    def get_route_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRouteAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRouteAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRouteAnalysis
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetRouteAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRouteAnalysis,
        stubs: @stubs,
        params_class: Params::GetRouteAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_route_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a site-to-site VPN attachment.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSiteToSiteVpnAttachmentInput}.
    #
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment.</p>
    #
    # @return [Types::GetSiteToSiteVpnAttachmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_site_to_site_vpn_attachment(
    #     attachment_id: 'AttachmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSiteToSiteVpnAttachmentOutput
    #   resp.data.site_to_site_vpn_attachment #=> Types::SiteToSiteVpnAttachment
    #   resp.data.site_to_site_vpn_attachment.attachment #=> Types::Attachment
    #   resp.data.site_to_site_vpn_attachment.attachment.core_network_id #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.core_network_arn #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.attachment_id #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.owner_account_id #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.attachment_type #=> String, one of ["CONNECT", "SITE_TO_SITE_VPN", "VPC"]
    #   resp.data.site_to_site_vpn_attachment.attachment.state #=> String, one of ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"]
    #   resp.data.site_to_site_vpn_attachment.attachment.edge_location #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.resource_arn #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.data.site_to_site_vpn_attachment.attachment.segment_name #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.tags #=> Array<Tag>
    #   resp.data.site_to_site_vpn_attachment.attachment.tags[0] #=> Types::Tag
    #   resp.data.site_to_site_vpn_attachment.attachment.tags[0].key #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.tags[0].value #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.proposed_segment_change #=> Types::ProposedSegmentChange
    #   resp.data.site_to_site_vpn_attachment.attachment.proposed_segment_change.tags #=> Array<Tag>
    #   resp.data.site_to_site_vpn_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.data.site_to_site_vpn_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.data.site_to_site_vpn_attachment.attachment.created_at #=> Time
    #   resp.data.site_to_site_vpn_attachment.attachment.updated_at #=> Time
    #   resp.data.site_to_site_vpn_attachment.vpn_connection_arn #=> String
    #
    def get_site_to_site_vpn_attachment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSiteToSiteVpnAttachmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSiteToSiteVpnAttachmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSiteToSiteVpnAttachment
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetSiteToSiteVpnAttachment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSiteToSiteVpnAttachment,
        stubs: @stubs,
        params_class: Params::GetSiteToSiteVpnAttachmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_site_to_site_vpn_attachment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about one or more of your sites in a global network.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSitesInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [Array<String>] :site_ids
    #   <p>One or more site IDs. The maximum is 10.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::GetSitesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_sites(
    #     global_network_id: 'GlobalNetworkId', # required
    #     site_ids: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSitesOutput
    #   resp.data.sites #=> Array<Site>
    #   resp.data.sites[0] #=> Types::Site
    #   resp.data.sites[0].site_id #=> String
    #   resp.data.sites[0].site_arn #=> String
    #   resp.data.sites[0].global_network_id #=> String
    #   resp.data.sites[0].description #=> String
    #   resp.data.sites[0].location #=> Types::Location
    #   resp.data.sites[0].location.address #=> String
    #   resp.data.sites[0].location.latitude #=> String
    #   resp.data.sites[0].location.longitude #=> String
    #   resp.data.sites[0].created_at #=> Time
    #   resp.data.sites[0].state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.sites[0].tags #=> Array<Tag>
    #   resp.data.sites[0].tags[0] #=> Types::Tag
    #   resp.data.sites[0].tags[0].key #=> String
    #   resp.data.sites[0].tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def get_sites(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSitesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSitesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSites
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetSites
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSites,
        stubs: @stubs,
        params_class: Params::GetSitesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_sites
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about one or more of your transit gateway Connect peer associations in a global network.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTransitGatewayConnectPeerAssociationsInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [Array<String>] :transit_gateway_connect_peer_arns
    #   <p>One or more transit gateway Connect peer Amazon Resource Names (ARNs).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::GetTransitGatewayConnectPeerAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transit_gateway_connect_peer_associations(
    #     global_network_id: 'GlobalNetworkId', # required
    #     transit_gateway_connect_peer_arns: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTransitGatewayConnectPeerAssociationsOutput
    #   resp.data.transit_gateway_connect_peer_associations #=> Array<TransitGatewayConnectPeerAssociation>
    #   resp.data.transit_gateway_connect_peer_associations[0] #=> Types::TransitGatewayConnectPeerAssociation
    #   resp.data.transit_gateway_connect_peer_associations[0].transit_gateway_connect_peer_arn #=> String
    #   resp.data.transit_gateway_connect_peer_associations[0].global_network_id #=> String
    #   resp.data.transit_gateway_connect_peer_associations[0].device_id #=> String
    #   resp.data.transit_gateway_connect_peer_associations[0].link_id #=> String
    #   resp.data.transit_gateway_connect_peer_associations[0].state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED"]
    #   resp.data.next_token #=> String
    #
    def get_transit_gateway_connect_peer_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTransitGatewayConnectPeerAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTransitGatewayConnectPeerAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTransitGatewayConnectPeerAssociations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetTransitGatewayConnectPeerAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTransitGatewayConnectPeerAssociations,
        stubs: @stubs,
        params_class: Params::GetTransitGatewayConnectPeerAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_transit_gateway_connect_peer_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the transit gateway registrations in a specified
    #             global network.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTransitGatewayRegistrationsInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [Array<String>] :transit_gateway_arns
    #   <p>The Amazon Resource Names (ARNs) of one or more transit gateways. The maximum is
    #               10.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::GetTransitGatewayRegistrationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transit_gateway_registrations(
    #     global_network_id: 'GlobalNetworkId', # required
    #     transit_gateway_arns: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTransitGatewayRegistrationsOutput
    #   resp.data.transit_gateway_registrations #=> Array<TransitGatewayRegistration>
    #   resp.data.transit_gateway_registrations[0] #=> Types::TransitGatewayRegistration
    #   resp.data.transit_gateway_registrations[0].global_network_id #=> String
    #   resp.data.transit_gateway_registrations[0].transit_gateway_arn #=> String
    #   resp.data.transit_gateway_registrations[0].state #=> Types::TransitGatewayRegistrationStateReason
    #   resp.data.transit_gateway_registrations[0].state.code #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED", "FAILED"]
    #   resp.data.transit_gateway_registrations[0].state.message #=> String
    #   resp.data.next_token #=> String
    #
    def get_transit_gateway_registrations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTransitGatewayRegistrationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTransitGatewayRegistrationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTransitGatewayRegistrations
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetTransitGatewayRegistrations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTransitGatewayRegistrations,
        stubs: @stubs,
        params_class: Params::GetTransitGatewayRegistrationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_transit_gateway_registrations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a VPC attachment.</p>
    #
    # @param [Hash] params
    #   See {Types::GetVpcAttachmentInput}.
    #
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment.</p>
    #
    # @return [Types::GetVpcAttachmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vpc_attachment(
    #     attachment_id: 'AttachmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetVpcAttachmentOutput
    #   resp.data.vpc_attachment #=> Types::VpcAttachment
    #   resp.data.vpc_attachment.attachment #=> Types::Attachment
    #   resp.data.vpc_attachment.attachment.core_network_id #=> String
    #   resp.data.vpc_attachment.attachment.core_network_arn #=> String
    #   resp.data.vpc_attachment.attachment.attachment_id #=> String
    #   resp.data.vpc_attachment.attachment.owner_account_id #=> String
    #   resp.data.vpc_attachment.attachment.attachment_type #=> String, one of ["CONNECT", "SITE_TO_SITE_VPN", "VPC"]
    #   resp.data.vpc_attachment.attachment.state #=> String, one of ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"]
    #   resp.data.vpc_attachment.attachment.edge_location #=> String
    #   resp.data.vpc_attachment.attachment.resource_arn #=> String
    #   resp.data.vpc_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.data.vpc_attachment.attachment.segment_name #=> String
    #   resp.data.vpc_attachment.attachment.tags #=> Array<Tag>
    #   resp.data.vpc_attachment.attachment.tags[0] #=> Types::Tag
    #   resp.data.vpc_attachment.attachment.tags[0].key #=> String
    #   resp.data.vpc_attachment.attachment.tags[0].value #=> String
    #   resp.data.vpc_attachment.attachment.proposed_segment_change #=> Types::ProposedSegmentChange
    #   resp.data.vpc_attachment.attachment.proposed_segment_change.tags #=> Array<Tag>
    #   resp.data.vpc_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.data.vpc_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.data.vpc_attachment.attachment.created_at #=> Time
    #   resp.data.vpc_attachment.attachment.updated_at #=> Time
    #   resp.data.vpc_attachment.subnet_arns #=> Array<String>
    #   resp.data.vpc_attachment.subnet_arns[0] #=> String
    #   resp.data.vpc_attachment.options #=> Types::VpcOptions
    #   resp.data.vpc_attachment.options.ipv6_support #=> Boolean
    #
    def get_vpc_attachment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetVpcAttachmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetVpcAttachmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetVpcAttachment
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetVpcAttachment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetVpcAttachment,
        stubs: @stubs,
        params_class: Params::GetVpcAttachmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_vpc_attachment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of core network attachments.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAttachmentsInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    #
    # @option params [String] :attachment_type
    #   <p>The type of attachment.</p>
    #
    # @option params [String] :edge_location
    #   <p>The Region where the edge is located.</p>
    #
    # @option params [String] :state
    #   <p>The state of the attachment.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::ListAttachmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attachments(
    #     core_network_id: 'CoreNetworkId',
    #     attachment_type: 'CONNECT', # accepts ["CONNECT", "SITE_TO_SITE_VPN", "VPC"]
    #     edge_location: 'EdgeLocation',
    #     state: 'REJECTED', # accepts ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAttachmentsOutput
    #   resp.data.attachments #=> Array<Attachment>
    #   resp.data.attachments[0] #=> Types::Attachment
    #   resp.data.attachments[0].core_network_id #=> String
    #   resp.data.attachments[0].core_network_arn #=> String
    #   resp.data.attachments[0].attachment_id #=> String
    #   resp.data.attachments[0].owner_account_id #=> String
    #   resp.data.attachments[0].attachment_type #=> String, one of ["CONNECT", "SITE_TO_SITE_VPN", "VPC"]
    #   resp.data.attachments[0].state #=> String, one of ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"]
    #   resp.data.attachments[0].edge_location #=> String
    #   resp.data.attachments[0].resource_arn #=> String
    #   resp.data.attachments[0].attachment_policy_rule_number #=> Integer
    #   resp.data.attachments[0].segment_name #=> String
    #   resp.data.attachments[0].tags #=> Array<Tag>
    #   resp.data.attachments[0].tags[0] #=> Types::Tag
    #   resp.data.attachments[0].tags[0].key #=> String
    #   resp.data.attachments[0].tags[0].value #=> String
    #   resp.data.attachments[0].proposed_segment_change #=> Types::ProposedSegmentChange
    #   resp.data.attachments[0].proposed_segment_change.tags #=> Array<Tag>
    #   resp.data.attachments[0].proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.data.attachments[0].proposed_segment_change.segment_name #=> String
    #   resp.data.attachments[0].created_at #=> Time
    #   resp.data.attachments[0].updated_at #=> Time
    #   resp.data.next_token #=> String
    #
    def list_attachments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAttachmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAttachmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAttachments
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListAttachments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAttachments,
        stubs: @stubs,
        params_class: Params::ListAttachmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_attachments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of core network Connect peers.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConnectPeersInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    #
    # @option params [String] :connect_attachment_id
    #   <p>The ID of the attachment.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::ListConnectPeersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connect_peers(
    #     core_network_id: 'CoreNetworkId',
    #     connect_attachment_id: 'ConnectAttachmentId',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConnectPeersOutput
    #   resp.data.connect_peers #=> Array<ConnectPeerSummary>
    #   resp.data.connect_peers[0] #=> Types::ConnectPeerSummary
    #   resp.data.connect_peers[0].core_network_id #=> String
    #   resp.data.connect_peers[0].connect_attachment_id #=> String
    #   resp.data.connect_peers[0].connect_peer_id #=> String
    #   resp.data.connect_peers[0].edge_location #=> String
    #   resp.data.connect_peers[0].connect_peer_state #=> String, one of ["CREATING", "FAILED", "AVAILABLE", "DELETING"]
    #   resp.data.connect_peers[0].created_at #=> Time
    #   resp.data.connect_peers[0].tags #=> Array<Tag>
    #   resp.data.connect_peers[0].tags[0] #=> Types::Tag
    #   resp.data.connect_peers[0].tags[0].key #=> String
    #   resp.data.connect_peers[0].tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def list_connect_peers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConnectPeersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConnectPeersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConnectPeers
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListConnectPeers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConnectPeers,
        stubs: @stubs,
        params_class: Params::ListConnectPeersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_connect_peers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of core network policy versions.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCoreNetworkPolicyVersionsInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::ListCoreNetworkPolicyVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_core_network_policy_versions(
    #     core_network_id: 'CoreNetworkId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCoreNetworkPolicyVersionsOutput
    #   resp.data.core_network_policy_versions #=> Array<CoreNetworkPolicyVersion>
    #   resp.data.core_network_policy_versions[0] #=> Types::CoreNetworkPolicyVersion
    #   resp.data.core_network_policy_versions[0].core_network_id #=> String
    #   resp.data.core_network_policy_versions[0].policy_version_id #=> Integer
    #   resp.data.core_network_policy_versions[0].alias #=> String, one of ["LIVE", "LATEST"]
    #   resp.data.core_network_policy_versions[0].description #=> String
    #   resp.data.core_network_policy_versions[0].created_at #=> Time
    #   resp.data.core_network_policy_versions[0].change_set_state #=> String, one of ["PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"]
    #   resp.data.next_token #=> String
    #
    def list_core_network_policy_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCoreNetworkPolicyVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCoreNetworkPolicyVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCoreNetworkPolicyVersions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListCoreNetworkPolicyVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCoreNetworkPolicyVersions,
        stubs: @stubs,
        params_class: Params::ListCoreNetworkPolicyVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_core_network_policy_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of owned and shared core networks.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCoreNetworksInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next page of results.</p>
    #
    # @return [Types::ListCoreNetworksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_core_networks(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCoreNetworksOutput
    #   resp.data.core_networks #=> Array<CoreNetworkSummary>
    #   resp.data.core_networks[0] #=> Types::CoreNetworkSummary
    #   resp.data.core_networks[0].core_network_id #=> String
    #   resp.data.core_networks[0].core_network_arn #=> String
    #   resp.data.core_networks[0].global_network_id #=> String
    #   resp.data.core_networks[0].owner_account_id #=> String
    #   resp.data.core_networks[0].state #=> String, one of ["CREATING", "UPDATING", "AVAILABLE", "DELETING"]
    #   resp.data.core_networks[0].description #=> String
    #   resp.data.core_networks[0].tags #=> Array<Tag>
    #   resp.data.core_networks[0].tags[0] #=> Types::Tag
    #   resp.data.core_networks[0].tags[0].key #=> String
    #   resp.data.core_networks[0].tags[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def list_core_networks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCoreNetworksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCoreNetworksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCoreNetworks
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListCoreNetworks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCoreNetworks,
        stubs: @stubs,
        params_class: Params::ListCoreNetworksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_core_networks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # @param [Hash] params
    #   See {Types::ListOrganizationServiceAccessStatusInput}.
    #
    # @return [Types::ListOrganizationServiceAccessStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_service_access_status(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOrganizationServiceAccessStatusOutput
    #   resp.data.organization_status #=> Types::OrganizationStatus
    #   resp.data.organization_status.organization_id #=> String
    #   resp.data.organization_status.organization_aws_service_access_status #=> String
    #   resp.data.organization_status.slr_deployment_status #=> String
    #   resp.data.organization_status.account_status_list #=> Array<AccountStatus>
    #   resp.data.organization_status.account_status_list[0] #=> Types::AccountStatus
    #   resp.data.organization_status.account_status_list[0].account_id #=> String
    #   resp.data.organization_status.account_status_list[0].slr_deployment_status #=> String
    #   resp.data.next_token #=> String
    #
    def list_organization_service_access_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOrganizationServiceAccessStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOrganizationServiceAccessStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOrganizationServiceAccessStatus
      )
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
        data_parser: Parsers::ListOrganizationServiceAccessStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOrganizationServiceAccessStatus,
        stubs: @stubs,
        params_class: Params::ListOrganizationServiceAccessStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_organization_service_access_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for a specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Creates a new, immutable version of a core network policy. A subsequent change set is created showing the differences between the LIVE policy and the submitted policy.</p>
    #
    # @param [Hash] params
    #   See {Types::PutCoreNetworkPolicyInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    #
    # @option params [String] :policy_document
    #   <p>The policy document.</p>
    #
    # @option params [String] :description
    #   <p>a core network policy description.</p>
    #
    # @option params [Integer] :latest_version_id
    #   <p>The ID of a core network policy. </p>
    #
    # @option params [String] :client_token
    #   <p>The client token associated with the request.</p>
    #
    # @return [Types::PutCoreNetworkPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_core_network_policy(
    #     core_network_id: 'CoreNetworkId', # required
    #     policy_document: 'PolicyDocument', # required
    #     description: 'Description',
    #     latest_version_id: 1,
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutCoreNetworkPolicyOutput
    #   resp.data.core_network_policy #=> Types::CoreNetworkPolicy
    #   resp.data.core_network_policy.core_network_id #=> String
    #   resp.data.core_network_policy.policy_version_id #=> Integer
    #   resp.data.core_network_policy.alias #=> String, one of ["LIVE", "LATEST"]
    #   resp.data.core_network_policy.description #=> String
    #   resp.data.core_network_policy.created_at #=> Time
    #   resp.data.core_network_policy.change_set_state #=> String, one of ["PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"]
    #   resp.data.core_network_policy.policy_errors #=> Array<CoreNetworkPolicyError>
    #   resp.data.core_network_policy.policy_errors[0] #=> Types::CoreNetworkPolicyError
    #   resp.data.core_network_policy.policy_errors[0].error_code #=> String
    #   resp.data.core_network_policy.policy_errors[0].message #=> String
    #   resp.data.core_network_policy.policy_errors[0].path #=> String
    #   resp.data.core_network_policy.policy_document #=> String
    #
    def put_core_network_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutCoreNetworkPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutCoreNetworkPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutCoreNetworkPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::CoreNetworkPolicyException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::PutCoreNetworkPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutCoreNetworkPolicy,
        stubs: @stubs,
        params_class: Params::PutCoreNetworkPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_core_network_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a resource policy.</p>
    #
    # @param [Hash] params
    #   See {Types::PutResourcePolicyInput}.
    #
    # @option params [String] :policy_document
    #   <p>The JSON resource policy document.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource policy. </p>
    #
    # @return [Types::PutResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy(
    #     policy_document: 'PolicyDocument', # required
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutResourcePolicyOutput
    #
    def put_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutResourcePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutResourcePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::PutResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutResourcePolicy,
        stubs: @stubs,
        params_class: Params::PutResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a transit gateway in your global network. The transit gateway can be in any
    #             Amazon Web Services Region, but it must be owned by the same Amazon Web Services account that owns
    #             the global network. You cannot register a transit gateway in more than one global network.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterTransitGatewayInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :transit_gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the transit gateway.</p>
    #
    # @return [Types::RegisterTransitGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_transit_gateway(
    #     global_network_id: 'GlobalNetworkId', # required
    #     transit_gateway_arn: 'TransitGatewayArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterTransitGatewayOutput
    #   resp.data.transit_gateway_registration #=> Types::TransitGatewayRegistration
    #   resp.data.transit_gateway_registration.global_network_id #=> String
    #   resp.data.transit_gateway_registration.transit_gateway_arn #=> String
    #   resp.data.transit_gateway_registration.state #=> Types::TransitGatewayRegistrationStateReason
    #   resp.data.transit_gateway_registration.state.code #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "DELETED", "FAILED"]
    #   resp.data.transit_gateway_registration.state.message #=> String
    #
    def register_transit_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterTransitGatewayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterTransitGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterTransitGateway
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::RegisterTransitGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterTransitGateway,
        stubs: @stubs,
        params_class: Params::RegisterTransitGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_transit_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Rejects a core network attachment request.</p>
    #
    # @param [Hash] params
    #   See {Types::RejectAttachmentInput}.
    #
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment.</p>
    #
    # @return [Types::RejectAttachmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_attachment(
    #     attachment_id: 'AttachmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectAttachmentOutput
    #   resp.data.attachment #=> Types::Attachment
    #   resp.data.attachment.core_network_id #=> String
    #   resp.data.attachment.core_network_arn #=> String
    #   resp.data.attachment.attachment_id #=> String
    #   resp.data.attachment.owner_account_id #=> String
    #   resp.data.attachment.attachment_type #=> String, one of ["CONNECT", "SITE_TO_SITE_VPN", "VPC"]
    #   resp.data.attachment.state #=> String, one of ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"]
    #   resp.data.attachment.edge_location #=> String
    #   resp.data.attachment.resource_arn #=> String
    #   resp.data.attachment.attachment_policy_rule_number #=> Integer
    #   resp.data.attachment.segment_name #=> String
    #   resp.data.attachment.tags #=> Array<Tag>
    #   resp.data.attachment.tags[0] #=> Types::Tag
    #   resp.data.attachment.tags[0].key #=> String
    #   resp.data.attachment.tags[0].value #=> String
    #   resp.data.attachment.proposed_segment_change #=> Types::ProposedSegmentChange
    #   resp.data.attachment.proposed_segment_change.tags #=> Array<Tag>
    #   resp.data.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.data.attachment.proposed_segment_change.segment_name #=> String
    #   resp.data.attachment.created_at #=> Time
    #   resp.data.attachment.updated_at #=> Time
    #
    def reject_attachment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectAttachmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectAttachmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectAttachment
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::RejectAttachment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectAttachment,
        stubs: @stubs,
        params_class: Params::RejectAttachmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_attachment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Restores a previous policy version as a new, immutable version of a core network policy. A subsequent change set is created showing the differences between the LIVE policy and restored policy.</p>
    #
    # @param [Hash] params
    #   See {Types::RestoreCoreNetworkPolicyVersionInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    #
    # @option params [Integer] :policy_version_id
    #   <p>The ID of the policy version to restore.</p>
    #
    # @return [Types::RestoreCoreNetworkPolicyVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_core_network_policy_version(
    #     core_network_id: 'CoreNetworkId', # required
    #     policy_version_id: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RestoreCoreNetworkPolicyVersionOutput
    #   resp.data.core_network_policy #=> Types::CoreNetworkPolicy
    #   resp.data.core_network_policy.core_network_id #=> String
    #   resp.data.core_network_policy.policy_version_id #=> Integer
    #   resp.data.core_network_policy.alias #=> String, one of ["LIVE", "LATEST"]
    #   resp.data.core_network_policy.description #=> String
    #   resp.data.core_network_policy.created_at #=> Time
    #   resp.data.core_network_policy.change_set_state #=> String, one of ["PENDING_GENERATION", "FAILED_GENERATION", "READY_TO_EXECUTE", "EXECUTING", "EXECUTION_SUCCEEDED", "OUT_OF_DATE"]
    #   resp.data.core_network_policy.policy_errors #=> Array<CoreNetworkPolicyError>
    #   resp.data.core_network_policy.policy_errors[0] #=> Types::CoreNetworkPolicyError
    #   resp.data.core_network_policy.policy_errors[0].error_code #=> String
    #   resp.data.core_network_policy.policy_errors[0].message #=> String
    #   resp.data.core_network_policy.policy_errors[0].path #=> String
    #   resp.data.core_network_policy.policy_document #=> String
    #
    def restore_core_network_policy_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RestoreCoreNetworkPolicyVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RestoreCoreNetworkPolicyVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RestoreCoreNetworkPolicyVersion
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::RestoreCoreNetworkPolicyVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RestoreCoreNetworkPolicyVersion,
        stubs: @stubs,
        params_class: Params::RestoreCoreNetworkPolicyVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :restore_core_network_policy_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # @param [Hash] params
    #   See {Types::StartOrganizationServiceAccessUpdateInput}.
    #
    # @return [Types::StartOrganizationServiceAccessUpdateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_organization_service_access_update(
    #     action: 'Action' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartOrganizationServiceAccessUpdateOutput
    #   resp.data.organization_status #=> Types::OrganizationStatus
    #   resp.data.organization_status.organization_id #=> String
    #   resp.data.organization_status.organization_aws_service_access_status #=> String
    #   resp.data.organization_status.slr_deployment_status #=> String
    #   resp.data.organization_status.account_status_list #=> Array<AccountStatus>
    #   resp.data.organization_status.account_status_list[0] #=> Types::AccountStatus
    #   resp.data.organization_status.account_status_list[0].account_id #=> String
    #   resp.data.organization_status.account_status_list[0].slr_deployment_status #=> String
    #
    def start_organization_service_access_update(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartOrganizationServiceAccessUpdateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartOrganizationServiceAccessUpdateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartOrganizationServiceAccessUpdate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::StartOrganizationServiceAccessUpdate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartOrganizationServiceAccessUpdate,
        stubs: @stubs,
        params_class: Params::StartOrganizationServiceAccessUpdateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_organization_service_access_update
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts analyzing the routing path between the specified source and destination. For more information,
    #             see <a href="https://docs.aws.amazon.com/vpc/latest/tgw/route-analyzer.html">Route Analyzer</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartRouteAnalysisInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [RouteAnalysisEndpointOptionsSpecification] :source
    #   <p>The source from which traffic originates.</p>
    #
    # @option params [RouteAnalysisEndpointOptionsSpecification] :destination
    #   <p>The destination.</p>
    #
    # @option params [Boolean] :include_return_path
    #   <p>Indicates whether to analyze the return path. The default is <code>false</code>.</p>
    #
    # @option params [Boolean] :use_middleboxes
    #   <p>Indicates whether to include the location of middlebox appliances in the route analysis.
    #               The default is <code>false</code>.</p>
    #
    # @return [Types::StartRouteAnalysisOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_route_analysis(
    #     global_network_id: 'GlobalNetworkId', # required
    #     source: {
    #       transit_gateway_attachment_arn: 'TransitGatewayAttachmentArn',
    #       ip_address: 'IpAddress'
    #     }, # required
    #     include_return_path: false,
    #     use_middleboxes: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartRouteAnalysisOutput
    #   resp.data.route_analysis #=> Types::RouteAnalysis
    #   resp.data.route_analysis.global_network_id #=> String
    #   resp.data.route_analysis.owner_account_id #=> String
    #   resp.data.route_analysis.route_analysis_id #=> String
    #   resp.data.route_analysis.start_timestamp #=> Time
    #   resp.data.route_analysis.status #=> String, one of ["RUNNING", "COMPLETED", "FAILED"]
    #   resp.data.route_analysis.source #=> Types::RouteAnalysisEndpointOptions
    #   resp.data.route_analysis.source.transit_gateway_attachment_arn #=> String
    #   resp.data.route_analysis.source.transit_gateway_arn #=> String
    #   resp.data.route_analysis.source.ip_address #=> String
    #   resp.data.route_analysis.destination #=> Types::RouteAnalysisEndpointOptions
    #   resp.data.route_analysis.include_return_path #=> Boolean
    #   resp.data.route_analysis.use_middleboxes #=> Boolean
    #   resp.data.route_analysis.forward_path #=> Types::RouteAnalysisPath
    #   resp.data.route_analysis.forward_path.completion_status #=> Types::RouteAnalysisCompletion
    #   resp.data.route_analysis.forward_path.completion_status.result_code #=> String, one of ["CONNECTED", "NOT_CONNECTED"]
    #   resp.data.route_analysis.forward_path.completion_status.reason_code #=> String, one of ["TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY", "CYCLIC_PATH_DETECTED", "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND", "ROUTE_NOT_FOUND", "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND", "INACTIVE_ROUTE_FOR_DESTINATION_FOUND", "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH", "MAX_HOPS_EXCEEDED", "POSSIBLE_MIDDLEBOX", "NO_DESTINATION_ARN_PROVIDED"]
    #   resp.data.route_analysis.forward_path.completion_status.reason_context #=> Hash<String, String>
    #   resp.data.route_analysis.forward_path.completion_status.reason_context['key'] #=> String
    #   resp.data.route_analysis.forward_path.path #=> Array<PathComponent>
    #   resp.data.route_analysis.forward_path.path[0] #=> Types::PathComponent
    #   resp.data.route_analysis.forward_path.path[0].sequence #=> Integer
    #   resp.data.route_analysis.forward_path.path[0].resource #=> Types::NetworkResourceSummary
    #   resp.data.route_analysis.forward_path.path[0].resource.registered_gateway_arn #=> String
    #   resp.data.route_analysis.forward_path.path[0].resource.resource_arn #=> String
    #   resp.data.route_analysis.forward_path.path[0].resource.resource_type #=> String
    #   resp.data.route_analysis.forward_path.path[0].resource.definition #=> String
    #   resp.data.route_analysis.forward_path.path[0].resource.name_tag #=> String
    #   resp.data.route_analysis.forward_path.path[0].resource.is_middlebox #=> Boolean
    #   resp.data.route_analysis.forward_path.path[0].destination_cidr_block #=> String
    #   resp.data.route_analysis.return_path #=> Types::RouteAnalysisPath
    #
    def start_route_analysis(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartRouteAnalysisInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartRouteAnalysisInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartRouteAnalysis
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::StartRouteAnalysis
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartRouteAnalysis,
        stubs: @stubs,
        params_class: Params::StartRouteAnalysisOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_route_analysis
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tags a specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to apply to the specified resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Removes tags from a specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove from the specified resource.</p>
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Updates the information for an existing connection. To remove information for any of the parameters,
    #             specify an empty string.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConnectionInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :connection_id
    #   <p>The ID of the connection.</p>
    #
    # @option params [String] :link_id
    #   <p>The ID of the link for the first device in the connection.</p>
    #
    # @option params [String] :connected_link_id
    #   <p>The ID of the link for the second device in the connection.</p>
    #
    # @option params [String] :description
    #   <p>A description of the connection.</p>
    #           <p>Length Constraints: Maximum length of 256 characters.</p>
    #
    # @return [Types::UpdateConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connection(
    #     global_network_id: 'GlobalNetworkId', # required
    #     connection_id: 'ConnectionId', # required
    #     link_id: 'LinkId',
    #     connected_link_id: 'ConnectedLinkId',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConnectionOutput
    #   resp.data.connection #=> Types::Connection
    #   resp.data.connection.connection_id #=> String
    #   resp.data.connection.connection_arn #=> String
    #   resp.data.connection.global_network_id #=> String
    #   resp.data.connection.device_id #=> String
    #   resp.data.connection.connected_device_id #=> String
    #   resp.data.connection.link_id #=> String
    #   resp.data.connection.connected_link_id #=> String
    #   resp.data.connection.description #=> String
    #   resp.data.connection.created_at #=> Time
    #   resp.data.connection.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.connection.tags #=> Array<Tag>
    #   resp.data.connection.tags[0] #=> Types::Tag
    #   resp.data.connection.tags[0].key #=> String
    #   resp.data.connection.tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Updates the description of a core network.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCoreNetworkInput}.
    #
    # @option params [String] :core_network_id
    #   <p>The ID of a core network.</p>
    #
    # @option params [String] :description
    #   <p>The description of the update.</p>
    #
    # @return [Types::UpdateCoreNetworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_core_network(
    #     core_network_id: 'CoreNetworkId', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCoreNetworkOutput
    #   resp.data.core_network #=> Types::CoreNetwork
    #   resp.data.core_network.global_network_id #=> String
    #   resp.data.core_network.core_network_id #=> String
    #   resp.data.core_network.core_network_arn #=> String
    #   resp.data.core_network.description #=> String
    #   resp.data.core_network.created_at #=> Time
    #   resp.data.core_network.state #=> String, one of ["CREATING", "UPDATING", "AVAILABLE", "DELETING"]
    #   resp.data.core_network.segments #=> Array<CoreNetworkSegment>
    #   resp.data.core_network.segments[0] #=> Types::CoreNetworkSegment
    #   resp.data.core_network.segments[0].name #=> String
    #   resp.data.core_network.segments[0].edge_locations #=> Array<String>
    #   resp.data.core_network.segments[0].edge_locations[0] #=> String
    #   resp.data.core_network.segments[0].shared_segments #=> Array<String>
    #   resp.data.core_network.segments[0].shared_segments[0] #=> String
    #   resp.data.core_network.edges #=> Array<CoreNetworkEdge>
    #   resp.data.core_network.edges[0] #=> Types::CoreNetworkEdge
    #   resp.data.core_network.edges[0].edge_location #=> String
    #   resp.data.core_network.edges[0].asn #=> Integer
    #   resp.data.core_network.edges[0].inside_cidr_blocks #=> Array<String>
    #   resp.data.core_network.tags #=> Array<Tag>
    #   resp.data.core_network.tags[0] #=> Types::Tag
    #   resp.data.core_network.tags[0].key #=> String
    #   resp.data.core_network.tags[0].value #=> String
    #
    def update_core_network(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCoreNetworkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCoreNetworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCoreNetwork
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateCoreNetwork
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCoreNetwork,
        stubs: @stubs,
        params_class: Params::UpdateCoreNetworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_core_network
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the details for an existing device. To remove information for any of the
    #             parameters, specify an empty string.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDeviceInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :device_id
    #   <p>The ID of the device.</p>
    #
    # @option params [AWSLocation] :aws_location
    #   <p>The Amazon Web Services location of the device, if applicable. For an on-premises device, you can omit this parameter.</p>
    #
    # @option params [String] :description
    #   <p>A description of the device.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    # @option params [String] :type
    #   <p>The type of the device.</p>
    #
    # @option params [String] :vendor
    #   <p>The vendor of the device.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    # @option params [String] :model
    #   <p>The model of the device.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    # @option params [String] :serial_number
    #   <p>The serial number of the device.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    # @option params [Location] :location
    #   <p>Describes a location.</p>
    #
    # @option params [String] :site_id
    #   <p>The ID of the site.</p>
    #
    # @return [Types::UpdateDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device(
    #     global_network_id: 'GlobalNetworkId', # required
    #     device_id: 'DeviceId', # required
    #     aws_location: {
    #       zone: 'Zone',
    #       subnet_arn: 'SubnetArn'
    #     },
    #     description: 'Description',
    #     type: 'Type',
    #     vendor: 'Vendor',
    #     model: 'Model',
    #     serial_number: 'SerialNumber',
    #     location: {
    #       address: 'Address',
    #       latitude: 'Latitude',
    #       longitude: 'Longitude'
    #     },
    #     site_id: 'SiteId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDeviceOutput
    #   resp.data.device #=> Types::Device
    #   resp.data.device.device_id #=> String
    #   resp.data.device.device_arn #=> String
    #   resp.data.device.global_network_id #=> String
    #   resp.data.device.aws_location #=> Types::AWSLocation
    #   resp.data.device.aws_location.zone #=> String
    #   resp.data.device.aws_location.subnet_arn #=> String
    #   resp.data.device.description #=> String
    #   resp.data.device.type #=> String
    #   resp.data.device.vendor #=> String
    #   resp.data.device.model #=> String
    #   resp.data.device.serial_number #=> String
    #   resp.data.device.location #=> Types::Location
    #   resp.data.device.location.address #=> String
    #   resp.data.device.location.latitude #=> String
    #   resp.data.device.location.longitude #=> String
    #   resp.data.device.site_id #=> String
    #   resp.data.device.created_at #=> Time
    #   resp.data.device.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.device.tags #=> Array<Tag>
    #   resp.data.device.tags[0] #=> Types::Tag
    #   resp.data.device.tags[0].key #=> String
    #   resp.data.device.tags[0].value #=> String
    #
    def update_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDevice,
        stubs: @stubs,
        params_class: Params::UpdateDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing global network. To remove information for any of the parameters,
    #             specify an empty string.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateGlobalNetworkInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of your global network.</p>
    #
    # @option params [String] :description
    #   <p>A description of the global network.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    # @return [Types::UpdateGlobalNetworkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_global_network(
    #     global_network_id: 'GlobalNetworkId', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGlobalNetworkOutput
    #   resp.data.global_network #=> Types::GlobalNetwork
    #   resp.data.global_network.global_network_id #=> String
    #   resp.data.global_network.global_network_arn #=> String
    #   resp.data.global_network.description #=> String
    #   resp.data.global_network.created_at #=> Time
    #   resp.data.global_network.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.global_network.tags #=> Array<Tag>
    #   resp.data.global_network.tags[0] #=> Types::Tag
    #   resp.data.global_network.tags[0].key #=> String
    #   resp.data.global_network.tags[0].value #=> String
    #
    def update_global_network(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGlobalNetworkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGlobalNetworkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGlobalNetwork
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateGlobalNetwork
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGlobalNetwork,
        stubs: @stubs,
        params_class: Params::UpdateGlobalNetworkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_global_network
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the details for an existing link. To remove information for any of the
    #             parameters, specify an empty string.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLinkInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :link_id
    #   <p>The ID of the link.</p>
    #
    # @option params [String] :description
    #   <p>A description of the link.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    # @option params [String] :type
    #   <p>The type of the link.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    # @option params [Bandwidth] :bandwidth
    #   <p>The upload and download speed in Mbps. </p>
    #
    # @option params [String] :provider
    #   <p>The provider of the link.</p>
    #           <p>Constraints: Maximum length of 128 characters.</p>
    #
    # @return [Types::UpdateLinkOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_link(
    #     global_network_id: 'GlobalNetworkId', # required
    #     link_id: 'LinkId', # required
    #     description: 'Description',
    #     type: 'Type',
    #     bandwidth: {
    #       upload_speed: 1,
    #       download_speed: 1
    #     },
    #     provider: 'Provider'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLinkOutput
    #   resp.data.link #=> Types::Link
    #   resp.data.link.link_id #=> String
    #   resp.data.link.link_arn #=> String
    #   resp.data.link.global_network_id #=> String
    #   resp.data.link.site_id #=> String
    #   resp.data.link.description #=> String
    #   resp.data.link.type #=> String
    #   resp.data.link.bandwidth #=> Types::Bandwidth
    #   resp.data.link.bandwidth.upload_speed #=> Integer
    #   resp.data.link.bandwidth.download_speed #=> Integer
    #   resp.data.link.provider #=> String
    #   resp.data.link.created_at #=> Time
    #   resp.data.link.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.link.tags #=> Array<Tag>
    #   resp.data.link.tags[0] #=> Types::Tag
    #   resp.data.link.tags[0].key #=> String
    #   resp.data.link.tags[0].value #=> String
    #
    def update_link(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLinkInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLinkInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLink
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateLink
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLink,
        stubs: @stubs,
        params_class: Params::UpdateLinkOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_link
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the resource metadata for the specified global network.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateNetworkResourceMetadataInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Hash<String, String>] :metadata
    #   <p>The resource metadata.</p>
    #
    # @return [Types::UpdateNetworkResourceMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_resource_metadata(
    #     global_network_id: 'GlobalNetworkId', # required
    #     resource_arn: 'ResourceArn', # required
    #     metadata: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNetworkResourceMetadataOutput
    #   resp.data.resource_arn #=> String
    #   resp.data.metadata #=> Hash<String, String>
    #   resp.data.metadata['key'] #=> String
    #
    def update_network_resource_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNetworkResourceMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNetworkResourceMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNetworkResourceMetadata
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateNetworkResourceMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNetworkResourceMetadata,
        stubs: @stubs,
        params_class: Params::UpdateNetworkResourceMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_network_resource_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the information for an existing site. To remove information for any of the
    #             parameters, specify an empty string.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSiteInput}.
    #
    # @option params [String] :global_network_id
    #   <p>The ID of the global network.</p>
    #
    # @option params [String] :site_id
    #   <p>The ID of your site.</p>
    #
    # @option params [String] :description
    #   <p>A description of your site.</p>
    #           <p>Constraints: Maximum length of 256 characters.</p>
    #
    # @option params [Location] :location
    #   <p>The site location:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>Address</code>: The physical address of the site.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Latitude</code>: The latitude of the site. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Longitude</code>: The longitude of the site.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateSiteOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_site(
    #     global_network_id: 'GlobalNetworkId', # required
    #     site_id: 'SiteId', # required
    #     description: 'Description',
    #     location: {
    #       address: 'Address',
    #       latitude: 'Latitude',
    #       longitude: 'Longitude'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSiteOutput
    #   resp.data.site #=> Types::Site
    #   resp.data.site.site_id #=> String
    #   resp.data.site.site_arn #=> String
    #   resp.data.site.global_network_id #=> String
    #   resp.data.site.description #=> String
    #   resp.data.site.location #=> Types::Location
    #   resp.data.site.location.address #=> String
    #   resp.data.site.location.latitude #=> String
    #   resp.data.site.location.longitude #=> String
    #   resp.data.site.created_at #=> Time
    #   resp.data.site.state #=> String, one of ["PENDING", "AVAILABLE", "DELETING", "UPDATING"]
    #   resp.data.site.tags #=> Array<Tag>
    #   resp.data.site.tags[0] #=> Types::Tag
    #   resp.data.site.tags[0].key #=> String
    #   resp.data.site.tags[0].value #=> String
    #
    def update_site(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSiteInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSiteInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSite
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateSite
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSite,
        stubs: @stubs,
        params_class: Params::UpdateSiteOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_site
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a VPC attachment.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateVpcAttachmentInput}.
    #
    # @option params [String] :attachment_id
    #   <p>The ID of the attachment.</p>
    #
    # @option params [Array<String>] :add_subnet_arns
    #   <p>Adds a subnet ARN to the VPC attachment.</p>
    #
    # @option params [Array<String>] :remove_subnet_arns
    #   <p>Removes a subnet ARN from the attachment.</p>
    #
    # @option params [VpcOptions] :options
    #   <p>Additional options for updating the VPC attachment. </p>
    #
    # @return [Types::UpdateVpcAttachmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vpc_attachment(
    #     attachment_id: 'AttachmentId', # required
    #     add_subnet_arns: [
    #       'member'
    #     ],
    #     options: {
    #       ipv6_support: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateVpcAttachmentOutput
    #   resp.data.vpc_attachment #=> Types::VpcAttachment
    #   resp.data.vpc_attachment.attachment #=> Types::Attachment
    #   resp.data.vpc_attachment.attachment.core_network_id #=> String
    #   resp.data.vpc_attachment.attachment.core_network_arn #=> String
    #   resp.data.vpc_attachment.attachment.attachment_id #=> String
    #   resp.data.vpc_attachment.attachment.owner_account_id #=> String
    #   resp.data.vpc_attachment.attachment.attachment_type #=> String, one of ["CONNECT", "SITE_TO_SITE_VPN", "VPC"]
    #   resp.data.vpc_attachment.attachment.state #=> String, one of ["REJECTED", "PENDING_ATTACHMENT_ACCEPTANCE", "CREATING", "FAILED", "AVAILABLE", "UPDATING", "PENDING_NETWORK_UPDATE", "PENDING_TAG_ACCEPTANCE", "DELETING"]
    #   resp.data.vpc_attachment.attachment.edge_location #=> String
    #   resp.data.vpc_attachment.attachment.resource_arn #=> String
    #   resp.data.vpc_attachment.attachment.attachment_policy_rule_number #=> Integer
    #   resp.data.vpc_attachment.attachment.segment_name #=> String
    #   resp.data.vpc_attachment.attachment.tags #=> Array<Tag>
    #   resp.data.vpc_attachment.attachment.tags[0] #=> Types::Tag
    #   resp.data.vpc_attachment.attachment.tags[0].key #=> String
    #   resp.data.vpc_attachment.attachment.tags[0].value #=> String
    #   resp.data.vpc_attachment.attachment.proposed_segment_change #=> Types::ProposedSegmentChange
    #   resp.data.vpc_attachment.attachment.proposed_segment_change.tags #=> Array<Tag>
    #   resp.data.vpc_attachment.attachment.proposed_segment_change.attachment_policy_rule_number #=> Integer
    #   resp.data.vpc_attachment.attachment.proposed_segment_change.segment_name #=> String
    #   resp.data.vpc_attachment.attachment.created_at #=> Time
    #   resp.data.vpc_attachment.attachment.updated_at #=> Time
    #   resp.data.vpc_attachment.subnet_arns #=> Array<String>
    #   resp.data.vpc_attachment.subnet_arns[0] #=> String
    #   resp.data.vpc_attachment.options #=> Types::VpcOptions
    #   resp.data.vpc_attachment.options.ipv6_support #=> Boolean
    #
    def update_vpc_attachment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateVpcAttachmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateVpcAttachmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateVpcAttachment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateVpcAttachment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateVpcAttachment,
        stubs: @stubs,
        params_class: Params::UpdateVpcAttachmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_vpc_attachment
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
