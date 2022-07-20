# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::KinesisVideoSignaling
  # An API client for AWSAcuitySignalingService
  # See {#initialize} for a full list of supported configuration options
  # <p>Kinesis Video Streams Signaling Service is a intermediate service that establishes a
  #             communication channel for discovering peers, transmitting offers and answers in order to
  #             establish peer-to-peer connection in webRTC technology.</p>
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
    def initialize(config = AWS::SDK::KinesisVideoSignaling::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Gets the Interactive Connectivity Establishment (ICE) server configuration
    #             information, including URIs, username, and password which can be used to configure the
    #             WebRTC connection. The ICE component uses this configuration information to setup the
    #             WebRTC connection, including authenticating with the Traversal Using Relays around NAT
    #             (TURN) relay server. </p>
    #         <p>TURN is a protocol that is used to improve the connectivity of peer-to-peer
    #             applications. By providing a cloud-based relay service, TURN ensures that a connection
    #             can be established even when one or more peers are incapable of a direct peer-to-peer
    #             connection. For more information, see <a href="https://tools.ietf.org/html/draft-uberti-rtcweb-turn-rest-00">A REST API For
    #                 Access To TURN Services</a>.</p>
    #         <p> You can invoke this API to establish a fallback mechanism in case either of the peers
    #             is unable to establish a direct peer-to-peer connection over a signaling channel. You
    #             must specify either a signaling channel ARN or the client ID in order to invoke this
    #             API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIceServerConfigInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the signaling channel to be used for the peer-to-peer connection between
    #               configured peers. </p>
    #
    # @option params [String] :client_id
    #   <p>Unique identifier for the viewer. Must be unique within the signaling channel.</p>
    #
    # @option params [String] :service
    #   <p>Specifies the desired service. Currently, <code>TURN</code> is the only valid
    #               value.</p>
    #
    # @option params [String] :username
    #   <p>An optional user ID to be associated with the credentials.</p>
    #
    # @return [Types::GetIceServerConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ice_server_config(
    #     channel_arn: 'ChannelARN', # required
    #     client_id: 'ClientId',
    #     service: 'TURN', # accepts ["TURN"]
    #     username: 'Username'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIceServerConfigOutput
    #   resp.data.ice_server_list #=> Array<IceServer>
    #   resp.data.ice_server_list[0] #=> Types::IceServer
    #   resp.data.ice_server_list[0].uris #=> Array<String>
    #   resp.data.ice_server_list[0].uris[0] #=> String
    #   resp.data.ice_server_list[0].username #=> String
    #   resp.data.ice_server_list[0].password #=> String
    #   resp.data.ice_server_list[0].ttl #=> Integer
    #
    def get_ice_server_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIceServerConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIceServerConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIceServerConfig
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotAuthorizedException, Errors::SessionExpiredException, Errors::InvalidClientException, Errors::InvalidArgumentException, Errors::ClientLimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetIceServerConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIceServerConfig,
        stubs: @stubs,
        params_class: Params::GetIceServerConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_ice_server_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API allows you to connect WebRTC-enabled devices with Alexa display devices. When
    #             invoked, it sends the Alexa Session Description Protocol (SDP) offer to the master peer.
    #             The offer is delivered as soon as the master is connected to the specified signaling
    #             channel. This API returns the SDP answer from the connected master. If the master is not
    #             connected to the signaling channel, redelivery requests are made until the message
    #             expires.</p>
    #
    # @param [Hash] params
    #   See {Types::SendAlexaOfferToMasterInput}.
    #
    # @option params [String] :channel_arn
    #   <p>The ARN of the signaling channel by which Alexa and the master peer
    #               communicate.</p>
    #
    # @option params [String] :sender_client_id
    #   <p>The unique identifier for the sender client.</p>
    #
    # @option params [String] :message_payload
    #   <p>The base64-encoded SDP offer content.</p>
    #
    # @return [Types::SendAlexaOfferToMasterOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_alexa_offer_to_master(
    #     channel_arn: 'ChannelARN', # required
    #     sender_client_id: 'SenderClientId', # required
    #     message_payload: 'MessagePayload' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendAlexaOfferToMasterOutput
    #   resp.data.answer #=> String
    #
    def send_alexa_offer_to_master(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendAlexaOfferToMasterInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendAlexaOfferToMasterInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendAlexaOfferToMaster
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NotAuthorizedException, Errors::InvalidArgumentException, Errors::ClientLimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::SendAlexaOfferToMaster
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendAlexaOfferToMaster,
        stubs: @stubs,
        params_class: Params::SendAlexaOfferToMasterOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_alexa_offer_to_master
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
