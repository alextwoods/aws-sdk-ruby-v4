# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Ivschat
  # An API client for AmazonInteractiveVideoServiceChat
  # See {#initialize} for a full list of supported configuration options
  # <p>
  #             <b>Introduction</b>
  #          </p>
  #          <p>The Amazon IVS Chat control-plane API enables you to create and manage Amazon IVS Chat
  #       resources. You also need to integrate with the <a href="https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/chat-messaging-api.html"> Amazon IVS Chat Messaging
  #         API</a>, to enable users to interact with chat rooms in real time.</p>
  #          <p>The API is an AWS regional service. For a list of supported regions and Amazon IVS Chat
  #       HTTPS service endpoints, see the Amazon IVS Chat information on the <a href="https://docs.aws.amazon.com/general/latest/gr/ivs.html">Amazon IVS page</a> in the
  #         <i>AWS General Reference</i>. </p>
  #          <p>
  #             <b>Notes on terminology:</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>You create service applications using the Amazon IVS Chat API. We refer to these as
  #             <i>applications</i>.</p>
  #             </li>
  #             <li>
  #                <p>You create front-end client applications (browser and Android/iOS apps) using the
  #           Amazon IVS Chat Messaging API. We refer to these as <i>clients</i>. </p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Resources</b>
  #          </p>
  #          <p>The following resource is part of Amazon IVS Chat:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <b>Room</b> — The central Amazon IVS Chat resource through
  #           which clients connect to and exchange chat messages. See the Room endpoints for more
  #           information.</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>API Access Security</b>
  #          </p>
  #          <p>Your Amazon IVS Chat applications (service applications and clients) must be authenticated
  #       and authorized to access Amazon IVS Chat resources. Note the differences between these
  #       concepts:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <i>Authentication</i> is about verifying identity. Requests to the
  #           Amazon IVS Chat API must be signed to verify your identity.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <i>Authorization</i> is about granting permissions. Your IAM roles need
  #           to have permissions for Amazon IVS Chat API requests.</p>
  #             </li>
  #          </ul>
  #          <p>Users (viewers) connect to a room using secure access tokens that you create using the
  #         <a>CreateChatToken</a> endpoint through the AWS SDK. You call CreateChatToken for
  #       every user’s chat session, passing identity and authorization information about the
  #       user.</p>
  #          <p>
  #             <b>Signing API Requests</b>
  #          </p>
  #          <p>HTTP API requests must be signed with an AWS SigV4 signature using your AWS security
  #       credentials. The AWS Command Line Interface (CLI) and the AWS SDKs take care of signing the
  #       underlying API calls for you. However, if your application calls the Amazon IVS Chat HTTP API
  #       directly, it’s your responsibility to sign the requests.</p>
  #          <p>You generate a signature using valid AWS credentials for an IAM role that has permission
  #       to perform the requested action. For example, DeleteMessage requests must be made using an IAM
  #       role that has the <code>ivschat:DeleteMessage</code> permission.</p>
  #          <p>For more information:</p>
  #          <ul>
  #             <li>
  #                <p>Authentication and generating signatures — See <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html">Authenticating Requests
  #               (Amazon Web Services Signature Version 4)</a> in the <i>Amazon Web Services
  #             General Reference</i>.</p>
  #             </li>
  #             <li>
  #                <p>Managing Amazon IVS permissions — See <a href="https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html">Identity and Access Management</a> on
  #           the Security page of the <i>Amazon IVS User Guide</i>.</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Messaging Endpoints</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>DeleteMessage</a> — Sends an event to a specific room which
  #           directs clients to delete a specific message; that is, unrender it from view and delete it
  #           from the client’s chat history. This event’s <code>EventName</code> is
  #             <code>aws:DELETE_MESSAGE</code>. This replicates the <a href="https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html">
  #             DeleteMessage</a> WebSocket operation in the Amazon IVS Chat Messaging API.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DisconnectUser</a> — Disconnects all connections using a specified
  #           user ID from a room. This replicates the <a href="https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html">
  #             DisconnectUser</a> WebSocket operation in the Amazon IVS Chat Messaging API.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>SendEvent</a> — Sends an event to a room. Use this within your
  #           application’s business logic to send events to clients of a room; e.g., to notify clients
  #           to change the way the chat UI is rendered.</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Chat Token Endpoint</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>CreateChatToken</a> — Creates an encrypted token that is used to
  #           establish an individual WebSocket connection to a room. The token is valid for one minute,
  #           and a connection (session) established with the token is valid for the specified
  #           duration.</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Room Endpoints</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>CreateRoom</a> — Creates a room that allows clients to connect and
  #           pass messages.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DeleteRoom</a> — Deletes the specified room.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetRoom</a> — Gets the specified room.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListRooms</a> — Gets summary information about all your rooms in
  #           the AWS region where the API request is processed. </p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UpdateRoom</a> — Updates a room’s configuration.</p>
  #             </li>
  #          </ul>
  #          <p>
  #             <b>Tags Endpoints</b>
  #          </p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <a>ListTagsForResource</a> — Gets information about AWS tags for the
  #           specified ARN.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>TagResource</a> — Adds or updates tags for the AWS resource with
  #           the specified ARN.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UntagResource</a> — Removes tags from the resource with the
  #           specified ARN.</p>
  #             </li>
  #          </ul>
  #          <p>All the above are HTTP operations. There is a separate <i>messaging</i> API
  #       for managing Chat resources; see the <a href="https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/chat-messaging-api.html"> Amazon IVS Chat Messaging API
  #         Reference</a>.</p>
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
    def initialize(config = AWS::SDK::Ivschat::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an encrypted token that is used to establish an individual WebSocket connection
    #          to a room. The token is valid for one minute, and a connection (session) established with
    #          the token is valid for the specified duration.</p>
    #          <p>Encryption keys are owned by Amazon IVS Chat and never used directly by your
    #          application.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateChatTokenInput}.
    #
    # @option params [String] :room_identifier
    #   <p>Identifier of the room that the client is trying to access. Currently this must be an
    #            ARN. </p>
    #
    # @option params [String] :user_id
    #   <p>Application-provided ID that uniquely identifies the user associated with this token.
    #            This can be any UTF-8 encoded text.</p>
    #
    # @option params [Array<String>] :capabilities
    #   <p>Set of capabilities that the user is allowed to perform in the room. Default: None (the
    #            capability to view messages is implicitly included in all requests).</p>
    #
    # @option params [Integer] :session_duration_in_minutes
    #   <p>Session duration (in minutes), after which the session expires. Default: 60 (1
    #            hour).</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>Application-provided attributes to encode into the token and attach to a chat session.
    #            Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1
    #            KB total.</p>
    #
    # @return [Types::CreateChatTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_chat_token(
    #     room_identifier: 'roomIdentifier', # required
    #     user_id: 'userId', # required
    #     capabilities: [
    #       'SEND_MESSAGE' # accepts ["SEND_MESSAGE", "DISCONNECT_USER", "DELETE_MESSAGE"]
    #     ],
    #     session_duration_in_minutes: 1,
    #     attributes: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChatTokenOutput
    #   resp.data.token #=> String
    #   resp.data.token_expiration_time #=> Time
    #   resp.data.session_expiration_time #=> Time
    #
    def create_chat_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateChatTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateChatTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateChatToken
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PendingVerification, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateChatToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateChatToken,
        stubs: @stubs,
        params_class: Params::CreateChatTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_chat_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a room that allows clients to connect and pass messages.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRoomInput}.
    #
    # @option params [String] :name
    #   <p>Room name. The value does not need to be unique.</p>
    #
    # @option params [Integer] :maximum_message_rate_per_second
    #   <p>Maximum number of messages per second that can be sent to the room (by all clients).
    #            Default: 10. </p>
    #
    # @option params [Integer] :maximum_message_length
    #   <p>Maximum number of characters in a single message. Messages are expected to be UTF-8
    #            encoded and this limit applies specifically to rune/code-point count, not number of bytes.
    #            Default: 500.</p>
    #
    # @option params [MessageReviewHandler] :message_review_handler
    #   <p>Configuration information for optional review of messages.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to attach to the resource. Array of maps, each of the form <code>string:string
    #               (key:value)</code>. </p>
    #
    # @return [Types::CreateRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_room(
    #     name: 'name',
    #     maximum_message_rate_per_second: 1,
    #     maximum_message_length: 1,
    #     message_review_handler: {
    #       uri: 'uri',
    #       fallback_result: 'ALLOW' # accepts ["ALLOW", "DENY"]
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRoomOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.create_time #=> Time
    #   resp.data.update_time #=> Time
    #   resp.data.maximum_message_rate_per_second #=> Integer
    #   resp.data.maximum_message_length #=> Integer
    #   resp.data.message_review_handler #=> Types::MessageReviewHandler
    #   resp.data.message_review_handler.uri #=> String
    #   resp.data.message_review_handler.fallback_result #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def create_room(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRoomInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRoomInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRoom
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::PendingVerification, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateRoom
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRoom,
        stubs: @stubs,
        params_class: Params::CreateRoomOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_room
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends an event to a specific room which directs clients to delete a specific message;
    #          that is, unrender it from view and delete it from the client’s chat history. This event’s
    #             <code>EventName</code> is <code>aws:DELETE_MESSAGE</code>. This replicates the <a href="https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html">
    #             DeleteMessage</a> WebSocket operation in the Amazon IVS Chat Messaging API.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMessageInput}.
    #
    # @option params [String] :room_identifier
    #   <p>Identifier of the room where the message should be deleted. Currently this must be an
    #            ARN. </p>
    #
    # @option params [String] :id
    #   <p>ID of the message to be deleted. This is the <code>Id</code> field in the received
    #            message (see <a href="https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-message-subscribe.html"> Message
    #               (Subscribe)</a> in the Chat Messaging API).</p>
    #
    # @option params [String] :reason
    #   <p>Reason for deleting the message.</p>
    #
    # @return [Types::DeleteMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_message(
    #     room_identifier: 'roomIdentifier', # required
    #     id: 'id', # required
    #     reason: 'reason'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMessageOutput
    #   resp.data.id #=> String
    #
    def delete_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMessageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMessage
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DeleteMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMessage,
        stubs: @stubs,
        params_class: Params::DeleteMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified room.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRoomInput}.
    #
    # @option params [String] :identifier
    #   <p>Identifier of the room to be deleted. Currently this must be an ARN.</p>
    #
    # @return [Types::DeleteRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_room(
    #     identifier: 'identifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRoomOutput
    #
    def delete_room(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRoomInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRoomInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRoom
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::PendingVerification, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteRoom
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRoom,
        stubs: @stubs,
        params_class: Params::DeleteRoomOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_room
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disconnects all connections using a specified user ID from a room. This replicates the
    #             <a href="https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html">
    #             DisconnectUser</a> WebSocket operation in the Amazon IVS Chat Messaging API.</p>
    #
    # @param [Hash] params
    #   See {Types::DisconnectUserInput}.
    #
    # @option params [String] :room_identifier
    #   <p>Identifier of the room from which the user's clients should be disconnected. Currently
    #            this must be an ARN.</p>
    #
    # @option params [String] :user_id
    #   <p>ID of the user (connection) to disconnect from the room.</p>
    #
    # @option params [String] :reason
    #   <p>Reason for disconnecting the user.</p>
    #
    # @return [Types::DisconnectUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disconnect_user(
    #     room_identifier: 'roomIdentifier', # required
    #     user_id: 'userId', # required
    #     reason: 'reason'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisconnectUserOutput
    #
    def disconnect_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisconnectUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisconnectUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisconnectUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::DisconnectUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisconnectUser,
        stubs: @stubs,
        params_class: Params::DisconnectUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disconnect_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the specified room.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRoomInput}.
    #
    # @option params [String] :identifier
    #   <p>Identifier of the room for which the configuration is to be retrieved. Currently this
    #            must be an ARN.</p>
    #
    # @return [Types::GetRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_room(
    #     identifier: 'identifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRoomOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.create_time #=> Time
    #   resp.data.update_time #=> Time
    #   resp.data.maximum_message_rate_per_second #=> Integer
    #   resp.data.maximum_message_length #=> Integer
    #   resp.data.message_review_handler #=> Types::MessageReviewHandler
    #   resp.data.message_review_handler.uri #=> String
    #   resp.data.message_review_handler.fallback_result #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_room(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRoomInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRoomInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRoom
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetRoom
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRoom,
        stubs: @stubs,
        params_class: Params::GetRoomOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_room
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets summary information about all your rooms in the AWS region where the API request is
    #          processed. Results are sorted in descending order of <code>updateTime</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRoomsInput}.
    #
    # @option params [String] :name
    #   <p>Filters the list to match the specified room name.</p>
    #
    # @option params [String] :next_token
    #   <p>The first room to retrieve. This is used for pagination; see the <code>nextToken</code>
    #            response field.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of rooms to return. Default: 50.</p>
    #
    # @option params [String] :message_review_handler_uri
    #   <p>Filters the list to match the specified message review handler URI.</p>
    #
    # @return [Types::ListRoomsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rooms(
    #     name: 'name',
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     message_review_handler_uri: 'messageReviewHandlerUri'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRoomsOutput
    #   resp.data.rooms #=> Array<RoomSummary>
    #   resp.data.rooms[0] #=> Types::RoomSummary
    #   resp.data.rooms[0].arn #=> String
    #   resp.data.rooms[0].id #=> String
    #   resp.data.rooms[0].name #=> String
    #   resp.data.rooms[0].message_review_handler #=> Types::MessageReviewHandler
    #   resp.data.rooms[0].message_review_handler.uri #=> String
    #   resp.data.rooms[0].message_review_handler.fallback_result #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.rooms[0].create_time #=> Time
    #   resp.data.rooms[0].update_time #=> Time
    #   resp.data.rooms[0].tags #=> Hash<String, String>
    #   resp.data.rooms[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_rooms(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRoomsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRoomsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRooms
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListRooms
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRooms,
        stubs: @stubs,
        params_class: Params::ListRoomsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_rooms
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about AWS tags for the specified ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be retrieved. The ARN must be URL-encoded.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Sends an event to a room. Use this within your application’s business logic to send
    #          events to clients of a room; e.g., to notify clients to change the way the chat UI is
    #          rendered.</p>
    #
    # @param [Hash] params
    #   See {Types::SendEventInput}.
    #
    # @option params [String] :room_identifier
    #   <p>Identifier of the room to which the event will be sent. Currently this must be an
    #            ARN.</p>
    #
    # @option params [String] :event_name
    #   <p>Application-defined name of the event to send to clients.</p>
    #
    # @option params [Hash<String, String>] :attributes
    #   <p>Application-defined metadata to attach to the event sent to clients. The maximum length
    #            of the metadata is 1 KB total.</p>
    #
    # @return [Types::SendEventOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_event(
    #     room_identifier: 'roomIdentifier', # required
    #     event_name: 'eventName', # required
    #     attributes: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendEventOutput
    #   resp.data.id #=> String
    #
    def send_event(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendEventInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendEventInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendEvent
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::SendEvent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendEvent,
        stubs: @stubs,
        params_class: Params::SendEventOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_event
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates tags for the AWS resource with the specified ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be tagged. The ARN must be URL-encoded.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Array of tags to be added or updated.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Removes tags from the resource with the specified ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be untagged. The ARN must be URL-encoded.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Array of tags to be removed.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Updates a room’s configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRoomInput}.
    #
    # @option params [String] :identifier
    #   <p>Identifier of the room to be updated. Currently this must be an ARN.</p>
    #
    # @option params [String] :name
    #   <p>Room name. The value does not need to be unique.</p>
    #
    # @option params [Integer] :maximum_message_rate_per_second
    #   <p>Maximum number of messages per second that can be sent to the room (by all clients).  Default:
    #            10.</p>
    #
    # @option params [Integer] :maximum_message_length
    #   <p>The maximum number of characters in a single message. Messages are expected to be UTF-8
    #            encoded and this limit applies specifically to rune/code-point count, not number of bytes.
    #            Default: 500.</p>
    #
    # @option params [MessageReviewHandler] :message_review_handler
    #   <p>Configuration information for optional review of messages. Specify an empty
    #               <code>uri</code> string to disassociate a message review handler from the specified
    #            room.</p>
    #
    # @return [Types::UpdateRoomOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_room(
    #     identifier: 'identifier', # required
    #     name: 'name',
    #     maximum_message_rate_per_second: 1,
    #     maximum_message_length: 1,
    #     message_review_handler: {
    #       uri: 'uri',
    #       fallback_result: 'ALLOW' # accepts ["ALLOW", "DENY"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRoomOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.create_time #=> Time
    #   resp.data.update_time #=> Time
    #   resp.data.maximum_message_rate_per_second #=> Integer
    #   resp.data.maximum_message_length #=> Integer
    #   resp.data.message_review_handler #=> Types::MessageReviewHandler
    #   resp.data.message_review_handler.uri #=> String
    #   resp.data.message_review_handler.fallback_result #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def update_room(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRoomInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRoomInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRoom
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PendingVerification, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateRoom
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRoom,
        stubs: @stubs,
        params_class: Params::UpdateRoomOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_room
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
