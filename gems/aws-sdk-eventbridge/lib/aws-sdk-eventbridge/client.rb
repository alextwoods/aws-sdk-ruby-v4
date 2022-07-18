# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::EventBridge
  # An API client for AWSEvents
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon EventBridge helps you to respond to state changes in your Amazon Web Services resources. When your
  #       resources change state, they automatically send events to an event stream. You can create
  #       rules that match selected events in the stream and route them to targets to take action. You
  #       can also use rules to take action on a predetermined schedule. For example, you can configure
  #       rules to:</p>
  #          <ul>
  #             <li>
  #                <p>Automatically invoke an Lambda function to update DNS entries when an event
  #           notifies you that Amazon EC2 instance enters the running state.</p>
  #             </li>
  #             <li>
  #                <p>Direct specific API records from CloudTrail to an Amazon Kinesis data stream for
  #           detailed analysis of potential security or availability risks.</p>
  #             </li>
  #             <li>
  #                <p>Periodically invoke a built-in target to create a snapshot of an Amazon EBS
  #           volume.</p>
  #             </li>
  #          </ul>
  #          <p>For more information about the features of Amazon EventBridge, see the <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide">Amazon EventBridge User
  #         Guide</a>.</p>
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
    def initialize(config = AWS::SDK::EventBridge::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Activates a partner event source that has been deactivated. Once activated, your matching
    #       event bus will start receiving events from the event source.</p>
    #
    # @param [Hash] params
    #   See {Types::ActivateEventSourceInput}.
    #
    # @option params [String] :name
    #   <p>The name of the partner event source to activate.</p>
    #
    # @return [Types::ActivateEventSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_event_source(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ActivateEventSourceOutput
    #
    def activate_event_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ActivateEventSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ActivateEventSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ActivateEventSource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidStateException, Errors::InternalException, Errors::OperationDisabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ActivateEventSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ActivateEventSource,
        stubs: @stubs,
        params_class: Params::ActivateEventSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :activate_event_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels the specified replay.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelReplayInput}.
    #
    # @option params [String] :replay_name
    #   <p>The name of the replay to cancel.</p>
    #
    # @return [Types::CancelReplayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_replay(
    #     replay_name: 'ReplayName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelReplayOutput
    #   resp.data.replay_arn #=> String
    #   resp.data.state #=> String, one of ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"]
    #   resp.data.state_reason #=> String
    #
    def cancel_replay(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelReplayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelReplayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelReplay
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IllegalStatusException, Errors::ConcurrentModificationException, Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CancelReplay
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelReplay,
        stubs: @stubs,
        params_class: Params::CancelReplayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_replay
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an API destination, which is an HTTP invocation endpoint configured as a target
    #       for events.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApiDestinationInput}.
    #
    # @option params [String] :name
    #   <p>The name for the API destination to create.</p>
    #
    # @option params [String] :description
    #   <p>A description for the API destination to create.</p>
    #
    # @option params [String] :connection_arn
    #   <p>The ARN of the connection to use for the API destination. The destination endpoint must
    #         support the authorization type specified for the connection.</p>
    #
    # @option params [String] :invocation_endpoint
    #   <p>The URL to the HTTP invocation endpoint for the API destination.</p>
    #
    # @option params [String] :http_method
    #   <p>The method to use for the request to the HTTP invocation endpoint.</p>
    #
    # @option params [Integer] :invocation_rate_limit_per_second
    #   <p>The maximum number of requests per second to send to the HTTP invocation endpoint.</p>
    #
    # @return [Types::CreateApiDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_api_destination(
    #     name: 'Name', # required
    #     description: 'Description',
    #     connection_arn: 'ConnectionArn', # required
    #     invocation_endpoint: 'InvocationEndpoint', # required
    #     http_method: 'POST', # required - accepts ["POST", "GET", "HEAD", "OPTIONS", "PUT", "PATCH", "DELETE"]
    #     invocation_rate_limit_per_second: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApiDestinationOutput
    #   resp.data.api_destination_arn #=> String
    #   resp.data.api_destination_state #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modified_time #=> Time
    #
    def create_api_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApiDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApiDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApiDestination
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InternalException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateApiDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApiDestination,
        stubs: @stubs,
        params_class: Params::CreateApiDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_api_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an archive of events with the specified settings. When you create an archive,
    #       incoming events might not immediately start being sent to the archive. Allow a short period of
    #       time for changes to take effect. If you do not specify a pattern to filter events sent to the
    #       archive, all events are sent to the archive except replayed events. Replayed events are not
    #       sent to an archive.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateArchiveInput}.
    #
    # @option params [String] :archive_name
    #   <p>The name for the archive to create.</p>
    #
    # @option params [String] :event_source_arn
    #   <p>The ARN of the event bus that sends events to the archive.</p>
    #
    # @option params [String] :description
    #   <p>A description for the archive.</p>
    #
    # @option params [String] :event_pattern
    #   <p>An event pattern to use to filter events sent to the archive.</p>
    #
    # @option params [Integer] :retention_days
    #   <p>The number of days to retain events for. Default value is 0. If set to 0, events are
    #         retained indefinitely</p>
    #
    # @return [Types::CreateArchiveOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_archive(
    #     archive_name: 'ArchiveName', # required
    #     event_source_arn: 'EventSourceArn', # required
    #     description: 'Description',
    #     event_pattern: 'EventPattern',
    #     retention_days: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateArchiveOutput
    #   resp.data.archive_arn #=> String
    #   resp.data.state #=> String, one of ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.state_reason #=> String
    #   resp.data.creation_time #=> Time
    #
    def create_archive(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateArchiveInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateArchiveInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateArchive
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::ConcurrentModificationException, Errors::InvalidEventPatternException, Errors::InternalException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateArchive
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateArchive,
        stubs: @stubs,
        params_class: Params::CreateArchiveOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_archive
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a connection. A connection defines the authorization type and credentials to use
    #       for authorization with an API destination HTTP endpoint.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateConnectionInput}.
    #
    # @option params [String] :name
    #   <p>The name for the connection to create.</p>
    #
    # @option params [String] :description
    #   <p>A description for the connection to create.</p>
    #
    # @option params [String] :authorization_type
    #   <p>The type of authorization to use for the connection.</p>
    #
    # @option params [CreateConnectionAuthRequestParameters] :auth_parameters
    #   <p>A <code>CreateConnectionAuthRequestParameters</code> object that contains the
    #         authorization parameters to use to authorize with the endpoint. </p>
    #
    # @return [Types::CreateConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_connection(
    #     name: 'Name', # required
    #     description: 'Description',
    #     authorization_type: 'BASIC', # required - accepts ["BASIC", "OAUTH_CLIENT_CREDENTIALS", "API_KEY"]
    #     auth_parameters: {
    #       basic_auth_parameters: {
    #         username: 'Username', # required
    #         password: 'Password' # required
    #       },
    #       o_auth_parameters: {
    #         client_parameters: {
    #           client_id: 'ClientID', # required
    #           client_secret: 'ClientSecret' # required
    #         }, # required
    #         authorization_endpoint: 'AuthorizationEndpoint', # required
    #         http_method: 'GET', # required - accepts ["GET", "POST", "PUT"]
    #         o_auth_http_parameters: {
    #           header_parameters: [
    #             {
    #               key: 'Key',
    #               value: 'Value',
    #               is_value_secret: false
    #             }
    #           ],
    #           query_string_parameters: [
    #             {
    #               key: 'Key',
    #               value: 'Value',
    #               is_value_secret: false
    #             }
    #           ],
    #           body_parameters: [
    #             {
    #               key: 'Key',
    #               value: 'Value',
    #               is_value_secret: false
    #             }
    #           ]
    #         }
    #       },
    #       api_key_auth_parameters: {
    #         api_key_name: 'ApiKeyName', # required
    #         api_key_value: 'ApiKeyValue' # required
    #       },
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateConnectionOutput
    #   resp.data.connection_arn #=> String
    #   resp.data.connection_state #=> String, one of ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING"]
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modified_time #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InternalException, Errors::LimitExceededException]),
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

    # <p>Creates a global endpoint. Global endpoints improve your application's availability by making it regional-fault tolerant. To do this, you define a primary and secondary Region
    #       with event buses in each Region. You also create a Amazon Route 53 health check that will tell EventBridge to route events to the secondary Region when an "unhealthy" state
    #       is encountered and events will be routed back to the primary Region when the health check reports a "healthy" state.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEndpointInput}.
    #
    # @option params [String] :name
    #   <p>The name of the global endpoint. For example, <code>"Name":"us-east-2-custom_bus_A-endpoint"</code>.</p>
    #
    # @option params [String] :description
    #   <p>A description of the global endpoint.</p>
    #
    # @option params [RoutingConfig] :routing_config
    #   <p>Configure the routing policy, including the health check and secondary Region..</p>
    #
    # @option params [ReplicationConfig] :replication_config
    #   <p>Enable or disable event replication.</p>
    #
    # @option params [Array<EndpointEventBus>] :event_buses
    #   <p>Define the event buses used. </p>
    #            <important>
    #               <p>The names of the event buses must be identical in each Region.</p>
    #            </important>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the role used for replication.</p>
    #
    # @return [Types::CreateEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_endpoint(
    #     name: 'Name', # required
    #     description: 'Description',
    #     routing_config: {
    #       failover_config: {
    #         primary: {
    #           health_check: 'HealthCheck' # required
    #         }, # required
    #         secondary: {
    #           route: 'Route' # required
    #         } # required
    #       } # required
    #     }, # required
    #     replication_config: {
    #       state: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #     },
    #     event_buses: [
    #       {
    #         event_bus_arn: 'EventBusArn' # required
    #       }
    #     ], # required
    #     role_arn: 'RoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEndpointOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.routing_config #=> Types::RoutingConfig
    #   resp.data.routing_config.failover_config #=> Types::FailoverConfig
    #   resp.data.routing_config.failover_config.primary #=> Types::Primary
    #   resp.data.routing_config.failover_config.primary.health_check #=> String
    #   resp.data.routing_config.failover_config.secondary #=> Types::Secondary
    #   resp.data.routing_config.failover_config.secondary.route #=> String
    #   resp.data.replication_config #=> Types::ReplicationConfig
    #   resp.data.replication_config.state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.event_buses #=> Array<EndpointEventBus>
    #   resp.data.event_buses[0] #=> Types::EndpointEventBus
    #   resp.data.event_buses[0].event_bus_arn #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.state #=> String, one of ["ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"]
    #
    def create_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEndpoint
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InternalException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEndpoint,
        stubs: @stubs,
        params_class: Params::CreateEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new event bus within your account. This can be a custom event bus which you can
    #       use to receive events from your custom applications and services, or it can be a partner event
    #       bus which can be matched to a partner event source.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEventBusInput}.
    #
    # @option params [String] :name
    #   <p>The name of the new event bus. </p>
    #            <p>Event bus names cannot contain the / character. You can't use the name
    #           <code>default</code> for a custom event bus, as this name is already used for your account's
    #         default event bus.</p>
    #            <p>If this is a partner event bus, the name must exactly match the name of the partner event
    #         source that this event bus is matched to.</p>
    #
    # @option params [String] :event_source_name
    #   <p>If you are creating a partner event bus, this specifies the partner event source that the
    #         new event bus will be matched with.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags to associate with the event bus.</p>
    #
    # @return [Types::CreateEventBusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_bus(
    #     name: 'Name', # required
    #     event_source_name: 'EventSourceName',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEventBusOutput
    #   resp.data.event_bus_arn #=> String
    #
    def create_event_bus(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEventBusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEventBusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEventBus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::ConcurrentModificationException, Errors::InvalidStateException, Errors::InternalException, Errors::OperationDisabledException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateEventBus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEventBus,
        stubs: @stubs,
        params_class: Params::CreateEventBusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_event_bus
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Called by an SaaS partner to create a partner event source. This operation is not used by
    #       Amazon Web Services customers.</p>
    #          <p>Each partner event source can be used by one Amazon Web Services account to create a matching partner
    #       event bus in that Amazon Web Services account. A SaaS partner must create one partner event source for each
    #       Amazon Web Services account that wants to receive those event types. </p>
    #          <p>A partner event source creates events based on resources within the SaaS partner's service
    #       or application.</p>
    #          <p>An Amazon Web Services account that creates a partner event bus that matches the partner event source can
    #       use that event bus to receive events from the partner, and then process them using Amazon Web Services Events
    #       rules and targets.</p>
    #          <p>Partner event source names follow this format:</p>
    #          <p>
    #             <code>
    #                <i>partner_name</i>/<i>event_namespace</i>/<i>event_name</i>
    #             </code>
    #          </p>
    #          <p>
    #             <i>partner_name</i> is determined during partner registration and identifies
    #       the partner to Amazon Web Services customers. <i>event_namespace</i> is determined by the
    #       partner and is a way for the partner to categorize their events.
    #         <i>event_name</i> is determined by the partner, and should uniquely identify
    #       an event-generating resource within the partner system. The combination of
    #         <i>event_namespace</i> and <i>event_name</i> should help Amazon Web Services
    #       customers decide whether to create an event bus to receive these events.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePartnerEventSourceInput}.
    #
    # @option params [String] :name
    #   <p>The name of the partner event source. This name must be unique and must be in the format
    #             <code>
    #                  <i>partner_name</i>/<i>event_namespace</i>/<i>event_name</i>
    #               </code>.
    #         The Amazon Web Services account that wants to use this partner event source must create a partner event bus
    #         with a name that matches the name of the partner event source.</p>
    #
    # @option params [String] :account
    #   <p>The Amazon Web Services account ID that is permitted to create a matching partner event bus for this
    #         partner event source.</p>
    #
    # @return [Types::CreatePartnerEventSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_partner_event_source(
    #     name: 'Name', # required
    #     account: 'Account' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePartnerEventSourceOutput
    #   resp.data.event_source_arn #=> String
    #
    def create_partner_event_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePartnerEventSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePartnerEventSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePartnerEventSource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::ConcurrentModificationException, Errors::InternalException, Errors::OperationDisabledException, Errors::LimitExceededException]),
        data_parser: Parsers::CreatePartnerEventSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePartnerEventSource,
        stubs: @stubs,
        params_class: Params::CreatePartnerEventSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_partner_event_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>You can use this operation to temporarily stop receiving events from the specified partner
    #       event source. The matching event bus is not deleted. </p>
    #          <p>When you deactivate a partner event source, the source goes into PENDING state. If it
    #       remains in PENDING state for more than two weeks, it is deleted.</p>
    #          <p>To activate a deactivated partner event source, use <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ActivateEventSource.html">ActivateEventSource</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeactivateEventSourceInput}.
    #
    # @option params [String] :name
    #   <p>The name of the partner event source to deactivate.</p>
    #
    # @return [Types::DeactivateEventSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_event_source(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeactivateEventSourceOutput
    #
    def deactivate_event_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeactivateEventSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeactivateEventSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeactivateEventSource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidStateException, Errors::InternalException, Errors::OperationDisabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeactivateEventSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeactivateEventSource,
        stubs: @stubs,
        params_class: Params::DeactivateEventSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deactivate_event_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes all authorization parameters from the connection. This lets you remove the secret
    #       from the connection so you can reuse it without having to create a new connection.</p>
    #
    # @param [Hash] params
    #   See {Types::DeauthorizeConnectionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the connection to remove authorization from.</p>
    #
    # @return [Types::DeauthorizeConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deauthorize_connection(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeauthorizeConnectionOutput
    #   resp.data.connection_arn #=> String
    #   resp.data.connection_state #=> String, one of ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING"]
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modified_time #=> Time
    #   resp.data.last_authorized_time #=> Time
    #
    def deauthorize_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeauthorizeConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeauthorizeConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeauthorizeConnection
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeauthorizeConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeauthorizeConnection,
        stubs: @stubs,
        params_class: Params::DeauthorizeConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deauthorize_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified API destination.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApiDestinationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the destination to delete.</p>
    #
    # @return [Types::DeleteApiDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_api_destination(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApiDestinationOutput
    #
    def delete_api_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApiDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApiDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApiDestination
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteApiDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApiDestination,
        stubs: @stubs,
        params_class: Params::DeleteApiDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_api_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified archive.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteArchiveInput}.
    #
    # @option params [String] :archive_name
    #   <p>The name of the archive to delete.</p>
    #
    # @return [Types::DeleteArchiveOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_archive(
    #     archive_name: 'ArchiveName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteArchiveOutput
    #
    def delete_archive(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteArchiveInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteArchiveInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteArchive
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteArchive
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteArchive,
        stubs: @stubs,
        params_class: Params::DeleteArchiveOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_archive
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a connection.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteConnectionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the connection to delete.</p>
    #
    # @return [Types::DeleteConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_connection(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteConnectionOutput
    #   resp.data.connection_arn #=> String
    #   resp.data.connection_state #=> String, one of ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING"]
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modified_time #=> Time
    #   resp.data.last_authorized_time #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::ResourceNotFoundException]),
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

    # <p>Delete an existing global endpoint. For more information about global endpoints, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html">Making applications Regional-fault tolerant with global endpoints and event replication</a> in the Amazon EventBridge User Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEndpointInput}.
    #
    # @option params [String] :name
    #   <p>The name of the endpoint you want to delete. For example, <code>"Name":"us-east-2-custom_bus_A-endpoint"</code>..</p>
    #
    # @return [Types::DeleteEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_endpoint(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEndpointOutput
    #
    def delete_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEndpoint
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEndpoint,
        stubs: @stubs,
        params_class: Params::DeleteEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified custom event bus or partner event bus. All rules associated with
    #       this event bus need to be deleted. You can't delete your account's default event bus.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventBusInput}.
    #
    # @option params [String] :name
    #   <p>The name of the event bus to delete.</p>
    #
    # @return [Types::DeleteEventBusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_bus(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEventBusOutput
    #
    def delete_event_bus(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventBusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventBusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEventBus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException]),
        data_parser: Parsers::DeleteEventBus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEventBus,
        stubs: @stubs,
        params_class: Params::DeleteEventBusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_event_bus
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation is used by SaaS partners to delete a partner event source. This operation
    #       is not used by Amazon Web Services customers.</p>
    #          <p>When you delete an event source, the status of the corresponding partner event bus in the
    #       Amazon Web Services customer account becomes DELETED.</p>
    #          <p></p>
    #
    # @param [Hash] params
    #   See {Types::DeletePartnerEventSourceInput}.
    #
    # @option params [String] :name
    #   <p>The name of the event source to delete.</p>
    #
    # @option params [String] :account
    #   <p>The Amazon Web Services account ID of the Amazon Web Services customer that the event source was created for.</p>
    #
    # @return [Types::DeletePartnerEventSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_partner_event_source(
    #     name: 'Name', # required
    #     account: 'Account' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePartnerEventSourceOutput
    #
    def delete_partner_event_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePartnerEventSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePartnerEventSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePartnerEventSource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::OperationDisabledException]),
        data_parser: Parsers::DeletePartnerEventSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePartnerEventSource,
        stubs: @stubs,
        params_class: Params::DeletePartnerEventSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_partner_event_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified rule.</p>
    #          <p>Before you can delete the rule, you must remove all targets, using <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_RemoveTargets.html">RemoveTargets</a>.</p>
    #
    #          <p>When you delete a rule, incoming events might continue to match to the deleted rule. Allow
    #       a short period of time for changes to take effect.</p>
    #
    #          <p>If you call delete rule multiple times for the same rule, all calls will succeed. When you
    #       call delete rule for a non-existent custom eventbus, <code>ResourceNotFoundException</code> is
    #       returned.</p>
    #
    #          <p>Managed rules are rules created and managed by another Amazon Web Services service on your behalf. These
    #       rules are created by those other Amazon Web Services services to support functionality in those services. You
    #       can delete these rules using the <code>Force</code> option, but you should do so only if you
    #       are sure the other service is not still using that rule.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRuleInput}.
    #
    # @option params [String] :name
    #   <p>The name of the rule.</p>
    #
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    # @option params [Boolean] :force
    #   <p>If this is a managed rule, created by an Amazon Web Services service on your behalf, you must specify
    #           <code>Force</code> as <code>True</code> to delete the rule. This parameter is ignored for
    #         rules that are not managed rules. You can check whether a rule is a managed rule by using
    #           <code>DescribeRule</code> or <code>ListRules</code> and checking the <code>ManagedBy</code>
    #         field of the response.</p>
    #
    # @return [Types::DeleteRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_rule(
    #     name: 'Name', # required
    #     event_bus_name: 'EventBusName',
    #     force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRuleOutput
    #
    def delete_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::ManagedRuleException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRule,
        stubs: @stubs,
        params_class: Params::DeleteRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details about an API destination.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeApiDestinationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the API destination to retrieve.</p>
    #
    # @return [Types::DescribeApiDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_api_destination(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeApiDestinationOutput
    #   resp.data.api_destination_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.api_destination_state #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.connection_arn #=> String
    #   resp.data.invocation_endpoint #=> String
    #   resp.data.http_method #=> String, one of ["POST", "GET", "HEAD", "OPTIONS", "PUT", "PATCH", "DELETE"]
    #   resp.data.invocation_rate_limit_per_second #=> Integer
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modified_time #=> Time
    #
    def describe_api_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeApiDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeApiDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApiDestination
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeApiDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApiDestination,
        stubs: @stubs,
        params_class: Params::DescribeApiDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_api_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details about an archive.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeArchiveInput}.
    #
    # @option params [String] :archive_name
    #   <p>The name of the archive to retrieve.</p>
    #
    # @return [Types::DescribeArchiveOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_archive(
    #     archive_name: 'ArchiveName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeArchiveOutput
    #   resp.data.archive_arn #=> String
    #   resp.data.archive_name #=> String
    #   resp.data.event_source_arn #=> String
    #   resp.data.description #=> String
    #   resp.data.event_pattern #=> String
    #   resp.data.state #=> String, one of ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.state_reason #=> String
    #   resp.data.retention_days #=> Integer
    #   resp.data.size_bytes #=> Integer
    #   resp.data.event_count #=> Integer
    #   resp.data.creation_time #=> Time
    #
    def describe_archive(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeArchiveInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeArchiveInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeArchive
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeArchive
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeArchive,
        stubs: @stubs,
        params_class: Params::DescribeArchiveOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_archive
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details about a connection.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeConnectionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the connection to retrieve.</p>
    #
    # @return [Types::DescribeConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_connection(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConnectionOutput
    #   resp.data.connection_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.connection_state #=> String, one of ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING"]
    #   resp.data.state_reason #=> String
    #   resp.data.authorization_type #=> String, one of ["BASIC", "OAUTH_CLIENT_CREDENTIALS", "API_KEY"]
    #   resp.data.secret_arn #=> String
    #   resp.data.auth_parameters #=> Types::ConnectionAuthResponseParameters
    #   resp.data.auth_parameters.basic_auth_parameters #=> Types::ConnectionBasicAuthResponseParameters
    #   resp.data.auth_parameters.basic_auth_parameters.username #=> String
    #   resp.data.auth_parameters.o_auth_parameters #=> Types::ConnectionOAuthResponseParameters
    #   resp.data.auth_parameters.o_auth_parameters.client_parameters #=> Types::ConnectionOAuthClientResponseParameters
    #   resp.data.auth_parameters.o_auth_parameters.client_parameters.client_id #=> String
    #   resp.data.auth_parameters.o_auth_parameters.authorization_endpoint #=> String
    #   resp.data.auth_parameters.o_auth_parameters.http_method #=> String, one of ["GET", "POST", "PUT"]
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters #=> Types::ConnectionHttpParameters
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.header_parameters #=> Array<ConnectionHeaderParameter>
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.header_parameters[0] #=> Types::ConnectionHeaderParameter
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.header_parameters[0].key #=> String
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.header_parameters[0].value #=> String
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.header_parameters[0].is_value_secret #=> Boolean
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.query_string_parameters #=> Array<ConnectionQueryStringParameter>
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.query_string_parameters[0] #=> Types::ConnectionQueryStringParameter
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.query_string_parameters[0].key #=> String
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.query_string_parameters[0].value #=> String
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.query_string_parameters[0].is_value_secret #=> Boolean
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.body_parameters #=> Array<ConnectionBodyParameter>
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.body_parameters[0] #=> Types::ConnectionBodyParameter
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.body_parameters[0].key #=> String
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.body_parameters[0].value #=> String
    #   resp.data.auth_parameters.o_auth_parameters.o_auth_http_parameters.body_parameters[0].is_value_secret #=> Boolean
    #   resp.data.auth_parameters.api_key_auth_parameters #=> Types::ConnectionApiKeyAuthResponseParameters
    #   resp.data.auth_parameters.api_key_auth_parameters.api_key_name #=> String
    #   resp.data.auth_parameters.invocation_http_parameters #=> Types::ConnectionHttpParameters
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modified_time #=> Time
    #   resp.data.last_authorized_time #=> Time
    #
    def describe_connection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConnectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConnectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConnection
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeConnection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConnection,
        stubs: @stubs,
        params_class: Params::DescribeConnectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_connection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get the information about an existing global endpoint. For more information about global endpoints, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html">Making applications Regional-fault tolerant with global endpoints and event replication</a> in the Amazon EventBridge User Guide..</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEndpointInput}.
    #
    # @option params [String] :name
    #   <p>The name of the endpoint you want to get information about. For example, <code>"Name":"us-east-2-custom_bus_A-endpoint"</code>.</p>
    #
    # @option params [String] :home_region
    #   <p>The primary Region of the endpoint you want to get information about. For example <code>"HomeRegion": "us-east-1"</code>.</p>
    #
    # @return [Types::DescribeEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint(
    #     name: 'Name', # required
    #     home_region: 'HomeRegion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEndpointOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.arn #=> String
    #   resp.data.routing_config #=> Types::RoutingConfig
    #   resp.data.routing_config.failover_config #=> Types::FailoverConfig
    #   resp.data.routing_config.failover_config.primary #=> Types::Primary
    #   resp.data.routing_config.failover_config.primary.health_check #=> String
    #   resp.data.routing_config.failover_config.secondary #=> Types::Secondary
    #   resp.data.routing_config.failover_config.secondary.route #=> String
    #   resp.data.replication_config #=> Types::ReplicationConfig
    #   resp.data.replication_config.state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.event_buses #=> Array<EndpointEventBus>
    #   resp.data.event_buses[0] #=> Types::EndpointEventBus
    #   resp.data.event_buses[0].event_bus_arn #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.endpoint_id #=> String
    #   resp.data.endpoint_url #=> String
    #   resp.data.state #=> String, one of ["ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"]
    #   resp.data.state_reason #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modified_time #=> Time
    #
    def describe_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEndpoint
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEndpoint,
        stubs: @stubs,
        params_class: Params::DescribeEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays details about an event bus in your account. This can include the external Amazon Web Services
    #       accounts that are permitted to write events to your default event bus, and the associated
    #       policy. For custom event buses and partner event buses, it displays the name, ARN, policy,
    #       state, and creation time.</p>
    #          <p> To enable your account to receive events from other accounts on its default event bus,
    #       use <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutPermission.html">PutPermission</a>.</p>
    #          <p>For more information about partner event buses, see <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html">CreateEventBus</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventBusInput}.
    #
    # @option params [String] :name
    #   <p>The name or ARN of the event bus to show details for. If you omit this, the default event
    #         bus is displayed.</p>
    #
    # @return [Types::DescribeEventBusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_bus(
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventBusOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.policy #=> String
    #
    def describe_event_bus(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventBusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventBusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventBus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeEventBus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventBus,
        stubs: @stubs,
        params_class: Params::DescribeEventBusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_event_bus
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This operation lists details about a partner event source that is shared with your
    #       account.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEventSourceInput}.
    #
    # @option params [String] :name
    #   <p>The name of the partner event source to display the details of.</p>
    #
    # @return [Types::DescribeEventSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_event_source(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEventSourceOutput
    #   resp.data.arn #=> String
    #   resp.data.created_by #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.expiration_time #=> Time
    #   resp.data.name #=> String
    #   resp.data.state #=> String, one of ["PENDING", "ACTIVE", "DELETED"]
    #
    def describe_event_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEventSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEventSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEventSource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::OperationDisabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeEventSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEventSource,
        stubs: @stubs,
        params_class: Params::DescribeEventSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_event_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>An SaaS partner can use this operation to list details about a partner event source that
    #       they have created. Amazon Web Services customers do not use this operation. Instead, Amazon Web Services customers can use <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DescribeEventSource.html">DescribeEventSource</a>
    #       to see details about a partner event source that is
    #       shared with them.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePartnerEventSourceInput}.
    #
    # @option params [String] :name
    #   <p>The name of the event source to display.</p>
    #
    # @return [Types::DescribePartnerEventSourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_partner_event_source(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePartnerEventSourceOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #
    def describe_partner_event_source(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePartnerEventSourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePartnerEventSourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePartnerEventSource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::OperationDisabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribePartnerEventSource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePartnerEventSource,
        stubs: @stubs,
        params_class: Params::DescribePartnerEventSourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_partner_event_source
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details about a replay. Use <code>DescribeReplay</code> to determine the
    #       progress of a running replay. A replay processes events to replay based on the time in the
    #       event, and replays them using 1 minute intervals. If you use <code>StartReplay</code> and
    #       specify an <code>EventStartTime</code> and an <code>EventEndTime</code> that covers a 20
    #       minute time range, the events are replayed from the first minute of that 20 minute range
    #       first. Then the events from the second minute are replayed. You can use
    #         <code>DescribeReplay</code> to determine the progress of a replay. The value returned for
    #         <code>EventLastReplayedTime</code> indicates the time within the specified time range
    #       associated with the last event replayed.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeReplayInput}.
    #
    # @option params [String] :replay_name
    #   <p>The name of the replay to retrieve.</p>
    #
    # @return [Types::DescribeReplayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replay(
    #     replay_name: 'ReplayName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeReplayOutput
    #   resp.data.replay_name #=> String
    #   resp.data.replay_arn #=> String
    #   resp.data.description #=> String
    #   resp.data.state #=> String, one of ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"]
    #   resp.data.state_reason #=> String
    #   resp.data.event_source_arn #=> String
    #   resp.data.destination #=> Types::ReplayDestination
    #   resp.data.destination.arn #=> String
    #   resp.data.destination.filter_arns #=> Array<String>
    #   resp.data.destination.filter_arns[0] #=> String
    #   resp.data.event_start_time #=> Time
    #   resp.data.event_end_time #=> Time
    #   resp.data.event_last_replayed_time #=> Time
    #   resp.data.replay_start_time #=> Time
    #   resp.data.replay_end_time #=> Time
    #
    def describe_replay(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeReplayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeReplayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeReplay
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeReplay
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeReplay,
        stubs: @stubs,
        params_class: Params::DescribeReplayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_replay
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified rule.</p>
    #          <p>DescribeRule does not list the targets of a rule. To see the targets associated with a
    #       rule, use <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ListTargetsByRule.html">ListTargetsByRule</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRuleInput}.
    #
    # @option params [String] :name
    #   <p>The name of the rule.</p>
    #
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    # @return [Types::DescribeRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_rule(
    #     name: 'Name', # required
    #     event_bus_name: 'EventBusName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRuleOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.event_pattern #=> String
    #   resp.data.schedule_expression #=> String
    #   resp.data.state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.description #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.managed_by #=> String
    #   resp.data.event_bus_name #=> String
    #   resp.data.created_by #=> String
    #
    def describe_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRule,
        stubs: @stubs,
        params_class: Params::DescribeRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the specified rule. A disabled rule won't match any events, and won't
    #       self-trigger if it has a schedule expression.</p>
    #
    #          <p>When you disable a rule, incoming events might continue to match to the disabled rule.
    #       Allow a short period of time for changes to take effect.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableRuleInput}.
    #
    # @option params [String] :name
    #   <p>The name of the rule.</p>
    #
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    # @return [Types::DisableRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_rule(
    #     name: 'Name', # required
    #     event_bus_name: 'EventBusName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableRuleOutput
    #
    def disable_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::ManagedRuleException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DisableRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableRule,
        stubs: @stubs,
        params_class: Params::DisableRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the specified rule. If the rule does not exist, the operation fails.</p>
    #
    #          <p>When you enable a rule, incoming events might not immediately start matching to a newly
    #       enabled rule. Allow a short period of time for changes to take effect.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableRuleInput}.
    #
    # @option params [String] :name
    #   <p>The name of the rule.</p>
    #
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    # @return [Types::EnableRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_rule(
    #     name: 'Name', # required
    #     event_bus_name: 'EventBusName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableRuleOutput
    #
    def enable_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::ManagedRuleException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::EnableRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableRule,
        stubs: @stubs,
        params_class: Params::EnableRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of API destination in the account in the current Region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApiDestinationsInput}.
    #
    # @option params [String] :name_prefix
    #   <p>A name prefix to filter results returned. Only API destinations with a name that starts
    #         with the prefix are returned.</p>
    #
    # @option params [String] :connection_arn
    #   <p>The ARN of the connection specified for the API destination.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of API destinations to include in the response.</p>
    #
    # @return [Types::ListApiDestinationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_api_destinations(
    #     name_prefix: 'NamePrefix',
    #     connection_arn: 'ConnectionArn',
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApiDestinationsOutput
    #   resp.data.api_destinations #=> Array<ApiDestination>
    #   resp.data.api_destinations[0] #=> Types::ApiDestination
    #   resp.data.api_destinations[0].api_destination_arn #=> String
    #   resp.data.api_destinations[0].name #=> String
    #   resp.data.api_destinations[0].api_destination_state #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.api_destinations[0].connection_arn #=> String
    #   resp.data.api_destinations[0].invocation_endpoint #=> String
    #   resp.data.api_destinations[0].http_method #=> String, one of ["POST", "GET", "HEAD", "OPTIONS", "PUT", "PATCH", "DELETE"]
    #   resp.data.api_destinations[0].invocation_rate_limit_per_second #=> Integer
    #   resp.data.api_destinations[0].creation_time #=> Time
    #   resp.data.api_destinations[0].last_modified_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_api_destinations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApiDestinationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApiDestinationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApiDestinations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException]),
        data_parser: Parsers::ListApiDestinations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApiDestinations,
        stubs: @stubs,
        params_class: Params::ListApiDestinationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_api_destinations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists your archives. You can either list all the archives or you can provide a prefix to
    #       match to the archive names. Filter parameters are exclusive.</p>
    #
    # @param [Hash] params
    #   See {Types::ListArchivesInput}.
    #
    # @option params [String] :name_prefix
    #   <p>A name prefix to filter the archives returned. Only archives with name that match the
    #         prefix are returned.</p>
    #
    # @option params [String] :event_source_arn
    #   <p>The ARN of the event source associated with the archive.</p>
    #
    # @option params [String] :state
    #   <p>The state of the archive.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return.</p>
    #
    # @return [Types::ListArchivesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_archives(
    #     name_prefix: 'NamePrefix',
    #     event_source_arn: 'EventSourceArn',
    #     state: 'ENABLED', # accepts ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"]
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListArchivesOutput
    #   resp.data.archives #=> Array<Archive>
    #   resp.data.archives[0] #=> Types::Archive
    #   resp.data.archives[0].archive_name #=> String
    #   resp.data.archives[0].event_source_arn #=> String
    #   resp.data.archives[0].state #=> String, one of ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.archives[0].state_reason #=> String
    #   resp.data.archives[0].retention_days #=> Integer
    #   resp.data.archives[0].size_bytes #=> Integer
    #   resp.data.archives[0].event_count #=> Integer
    #   resp.data.archives[0].creation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_archives(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListArchivesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListArchivesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListArchives
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListArchives
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListArchives,
        stubs: @stubs,
        params_class: Params::ListArchivesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_archives
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of connections from the account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConnectionsInput}.
    #
    # @option params [String] :name_prefix
    #   <p>A name prefix to filter results returned. Only connections with a name that starts with
    #         the prefix are returned.</p>
    #
    # @option params [String] :connection_state
    #   <p>The state of the connection.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of connections to return.</p>
    #
    # @return [Types::ListConnectionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_connections(
    #     name_prefix: 'NamePrefix',
    #     connection_state: 'CREATING', # accepts ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING"]
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConnectionsOutput
    #   resp.data.connections #=> Array<Connection>
    #   resp.data.connections[0] #=> Types::Connection
    #   resp.data.connections[0].connection_arn #=> String
    #   resp.data.connections[0].name #=> String
    #   resp.data.connections[0].connection_state #=> String, one of ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING"]
    #   resp.data.connections[0].state_reason #=> String
    #   resp.data.connections[0].authorization_type #=> String, one of ["BASIC", "OAUTH_CLIENT_CREDENTIALS", "API_KEY"]
    #   resp.data.connections[0].creation_time #=> Time
    #   resp.data.connections[0].last_modified_time #=> Time
    #   resp.data.connections[0].last_authorized_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_connections(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConnectionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConnectionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConnections
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException]),
        data_parser: Parsers::ListConnections
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConnections,
        stubs: @stubs,
        params_class: Params::ListConnectionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_connections
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the global endpoints associated with this account. For more information about global endpoints, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html">Making applications Regional-fault tolerant with global endpoints and event replication</a> in the Amazon EventBridge User Guide..</p>
    #
    # @param [Hash] params
    #   See {Types::ListEndpointsInput}.
    #
    # @option params [String] :name_prefix
    #   <p>A value that will return a subset of the endpoints associated with this account. For example, <code>"NamePrefix": "ABC"</code> will return all endpoints with "ABC" in the name.</p>
    #
    # @option params [String] :home_region
    #   <p>The primary Region of the endpoints associated with this account. For example <code>"HomeRegion": "us-east-1"</code>.</p>
    #
    # @option params [String] :next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of nextToken is a unique pagination token for each page.
    #          Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination
    #          token expires after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken error.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned by the call.</p>
    #
    # @return [Types::ListEndpointsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_endpoints(
    #     name_prefix: 'NamePrefix',
    #     home_region: 'HomeRegion',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEndpointsOutput
    #   resp.data.endpoints #=> Array<Endpoint>
    #   resp.data.endpoints[0] #=> Types::Endpoint
    #   resp.data.endpoints[0].name #=> String
    #   resp.data.endpoints[0].description #=> String
    #   resp.data.endpoints[0].arn #=> String
    #   resp.data.endpoints[0].routing_config #=> Types::RoutingConfig
    #   resp.data.endpoints[0].routing_config.failover_config #=> Types::FailoverConfig
    #   resp.data.endpoints[0].routing_config.failover_config.primary #=> Types::Primary
    #   resp.data.endpoints[0].routing_config.failover_config.primary.health_check #=> String
    #   resp.data.endpoints[0].routing_config.failover_config.secondary #=> Types::Secondary
    #   resp.data.endpoints[0].routing_config.failover_config.secondary.route #=> String
    #   resp.data.endpoints[0].replication_config #=> Types::ReplicationConfig
    #   resp.data.endpoints[0].replication_config.state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.endpoints[0].event_buses #=> Array<EndpointEventBus>
    #   resp.data.endpoints[0].event_buses[0] #=> Types::EndpointEventBus
    #   resp.data.endpoints[0].event_buses[0].event_bus_arn #=> String
    #   resp.data.endpoints[0].role_arn #=> String
    #   resp.data.endpoints[0].endpoint_id #=> String
    #   resp.data.endpoints[0].endpoint_url #=> String
    #   resp.data.endpoints[0].state #=> String, one of ["ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"]
    #   resp.data.endpoints[0].state_reason #=> String
    #   resp.data.endpoints[0].creation_time #=> Time
    #   resp.data.endpoints[0].last_modified_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_endpoints(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEndpointsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEndpointsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEndpoints
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException]),
        data_parser: Parsers::ListEndpoints
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEndpoints,
        stubs: @stubs,
        params_class: Params::ListEndpointsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_endpoints
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the event buses in your account, including the default event bus, custom event
    #       buses, and partner event buses.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEventBusesInput}.
    #
    # @option params [String] :name_prefix
    #   <p>Specifying this limits the results to only those event buses with names that start with
    #         the specified prefix.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifying this limits the number of results returned by this operation. The operation
    #         also returns a NextToken which you can use in a subsequent operation to retrieve the next set
    #         of results.</p>
    #
    # @return [Types::ListEventBusesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_buses(
    #     name_prefix: 'NamePrefix',
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEventBusesOutput
    #   resp.data.event_buses #=> Array<EventBus>
    #   resp.data.event_buses[0] #=> Types::EventBus
    #   resp.data.event_buses[0].name #=> String
    #   resp.data.event_buses[0].arn #=> String
    #   resp.data.event_buses[0].policy #=> String
    #   resp.data.next_token #=> String
    #
    def list_event_buses(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventBusesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventBusesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEventBuses
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException]),
        data_parser: Parsers::ListEventBuses
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEventBuses,
        stubs: @stubs,
        params_class: Params::ListEventBusesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_event_buses
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>You can use this to see all the partner event sources that have been shared with your Amazon Web Services
    #       account. For more information about partner event sources, see <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html">CreateEventBus</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEventSourcesInput}.
    #
    # @option params [String] :name_prefix
    #   <p>Specifying this limits the results to only those partner event sources with names that
    #         start with the specified prefix.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifying this limits the number of results returned by this operation. The operation
    #         also returns a NextToken which you can use in a subsequent operation to retrieve the next set
    #         of results.</p>
    #
    # @return [Types::ListEventSourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_sources(
    #     name_prefix: 'NamePrefix',
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEventSourcesOutput
    #   resp.data.event_sources #=> Array<EventSource>
    #   resp.data.event_sources[0] #=> Types::EventSource
    #   resp.data.event_sources[0].arn #=> String
    #   resp.data.event_sources[0].created_by #=> String
    #   resp.data.event_sources[0].creation_time #=> Time
    #   resp.data.event_sources[0].expiration_time #=> Time
    #   resp.data.event_sources[0].name #=> String
    #   resp.data.event_sources[0].state #=> String, one of ["PENDING", "ACTIVE", "DELETED"]
    #   resp.data.next_token #=> String
    #
    def list_event_sources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventSourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventSourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEventSources
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::OperationDisabledException]),
        data_parser: Parsers::ListEventSources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEventSources,
        stubs: @stubs,
        params_class: Params::ListEventSourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_event_sources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>An SaaS partner can use this operation to display the Amazon Web Services account ID that a particular
    #       partner event source name is associated with. This operation is not used by Amazon Web Services
    #       customers.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPartnerEventSourceAccountsInput}.
    #
    # @option params [String] :event_source_name
    #   <p>The name of the partner event source to display account information about.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to this operation. Specifying this retrieves the
    #         next set of results.</p>
    #
    # @option params [Integer] :limit
    #   <p>Specifying this limits the number of results returned by this operation. The operation
    #         also returns a NextToken which you can use in a subsequent operation to retrieve the next set
    #         of results.</p>
    #
    # @return [Types::ListPartnerEventSourceAccountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_partner_event_source_accounts(
    #     event_source_name: 'EventSourceName', # required
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPartnerEventSourceAccountsOutput
    #   resp.data.partner_event_source_accounts #=> Array<PartnerEventSourceAccount>
    #   resp.data.partner_event_source_accounts[0] #=> Types::PartnerEventSourceAccount
    #   resp.data.partner_event_source_accounts[0].account #=> String
    #   resp.data.partner_event_source_accounts[0].creation_time #=> Time
    #   resp.data.partner_event_source_accounts[0].expiration_time #=> Time
    #   resp.data.partner_event_source_accounts[0].state #=> String, one of ["PENDING", "ACTIVE", "DELETED"]
    #   resp.data.next_token #=> String
    #
    def list_partner_event_source_accounts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPartnerEventSourceAccountsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPartnerEventSourceAccountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPartnerEventSourceAccounts
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::OperationDisabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListPartnerEventSourceAccounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPartnerEventSourceAccounts,
        stubs: @stubs,
        params_class: Params::ListPartnerEventSourceAccountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_partner_event_source_accounts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>An SaaS partner can use this operation to list all the partner event source names that
    #       they have created. This operation is not used by Amazon Web Services customers.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPartnerEventSourcesInput}.
    #
    # @option params [String] :name_prefix
    #   <p>If you specify this, the results are limited to only those partner event sources that
    #         start with the string you specify.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to this operation. Specifying this retrieves the
    #         next set of results.</p>
    #
    # @option params [Integer] :limit
    #   <p>pecifying this limits the number of results returned by this operation. The operation also
    #         returns a NextToken which you can use in a subsequent operation to retrieve the next set of
    #         results.</p>
    #
    # @return [Types::ListPartnerEventSourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_partner_event_sources(
    #     name_prefix: 'NamePrefix', # required
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPartnerEventSourcesOutput
    #   resp.data.partner_event_sources #=> Array<PartnerEventSource>
    #   resp.data.partner_event_sources[0] #=> Types::PartnerEventSource
    #   resp.data.partner_event_sources[0].arn #=> String
    #   resp.data.partner_event_sources[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_partner_event_sources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPartnerEventSourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPartnerEventSourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPartnerEventSources
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::OperationDisabledException]),
        data_parser: Parsers::ListPartnerEventSources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPartnerEventSources,
        stubs: @stubs,
        params_class: Params::ListPartnerEventSourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_partner_event_sources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists your replays. You can either list all the replays or you can provide a prefix to
    #       match to the replay names. Filter parameters are exclusive.</p>
    #
    # @param [Hash] params
    #   See {Types::ListReplaysInput}.
    #
    # @option params [String] :name_prefix
    #   <p>A name prefix to filter the replays returned. Only replays with name that match the prefix
    #         are returned.</p>
    #
    # @option params [String] :state
    #   <p>The state of the replay.</p>
    #
    # @option params [String] :event_source_arn
    #   <p>The ARN of the archive from which the events are replayed.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of replays to retrieve.</p>
    #
    # @return [Types::ListReplaysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_replays(
    #     name_prefix: 'NamePrefix',
    #     state: 'STARTING', # accepts ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"]
    #     event_source_arn: 'EventSourceArn',
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReplaysOutput
    #   resp.data.replays #=> Array<Replay>
    #   resp.data.replays[0] #=> Types::Replay
    #   resp.data.replays[0].replay_name #=> String
    #   resp.data.replays[0].event_source_arn #=> String
    #   resp.data.replays[0].state #=> String, one of ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"]
    #   resp.data.replays[0].state_reason #=> String
    #   resp.data.replays[0].event_start_time #=> Time
    #   resp.data.replays[0].event_end_time #=> Time
    #   resp.data.replays[0].event_last_replayed_time #=> Time
    #   resp.data.replays[0].replay_start_time #=> Time
    #   resp.data.replays[0].replay_end_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_replays(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReplaysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReplaysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReplays
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException]),
        data_parser: Parsers::ListReplays
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReplays,
        stubs: @stubs,
        params_class: Params::ListReplaysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_replays
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the rules for the specified target. You can see which of the rules in Amazon
    #       EventBridge can invoke a specific target in your account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRuleNamesByTargetInput}.
    #
    # @option params [String] :target_arn
    #   <p>The Amazon Resource Name (ARN) of the target resource.</p>
    #
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus to list rules for. If you omit this, the default event
    #         bus is used.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return.</p>
    #
    # @return [Types::ListRuleNamesByTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rule_names_by_target(
    #     target_arn: 'TargetArn', # required
    #     event_bus_name: 'EventBusName',
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRuleNamesByTargetOutput
    #   resp.data.rule_names #=> Array<String>
    #   resp.data.rule_names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_rule_names_by_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRuleNamesByTargetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRuleNamesByTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRuleNamesByTarget
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListRuleNamesByTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRuleNamesByTarget,
        stubs: @stubs,
        params_class: Params::ListRuleNamesByTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_rule_names_by_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists your Amazon EventBridge rules. You can either list all the rules or you can provide
    #       a prefix to match to the rule names.</p>
    #
    #          <p>ListRules does not list the targets of a rule. To see the targets associated with a rule,
    #       use <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_ListTargetsByRule.html">ListTargetsByRule</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRulesInput}.
    #
    # @option params [String] :name_prefix
    #   <p>The prefix matching the rule name.</p>
    #
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus to list the rules for. If you omit this, the default
    #         event bus is used.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return.</p>
    #
    # @return [Types::ListRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_rules(
    #     name_prefix: 'NamePrefix',
    #     event_bus_name: 'EventBusName',
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRulesOutput
    #   resp.data.rules #=> Array<Rule>
    #   resp.data.rules[0] #=> Types::Rule
    #   resp.data.rules[0].name #=> String
    #   resp.data.rules[0].arn #=> String
    #   resp.data.rules[0].event_pattern #=> String
    #   resp.data.rules[0].state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.rules[0].description #=> String
    #   resp.data.rules[0].schedule_expression #=> String
    #   resp.data.rules[0].role_arn #=> String
    #   resp.data.rules[0].managed_by #=> String
    #   resp.data.rules[0].event_bus_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRules,
        stubs: @stubs,
        params_class: Params::ListRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays the tags associated with an EventBridge resource. In EventBridge, rules and event
    #       buses can be tagged.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the EventBridge resource for which you want to view tags.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ResourceNotFoundException]),
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

    # <p>Lists the targets assigned to the specified rule.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTargetsByRuleInput}.
    #
    # @option params [String] :rule
    #   <p>The name of the rule.</p>
    #
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    # @option params [String] :next_token
    #   <p>The token returned by a previous call to retrieve the next set of results.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of results to return.</p>
    #
    # @return [Types::ListTargetsByRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targets_by_rule(
    #     rule: 'Rule', # required
    #     event_bus_name: 'EventBusName',
    #     next_token: 'NextToken',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTargetsByRuleOutput
    #   resp.data.targets #=> Array<Target>
    #   resp.data.targets[0] #=> Types::Target
    #   resp.data.targets[0].id #=> String
    #   resp.data.targets[0].arn #=> String
    #   resp.data.targets[0].role_arn #=> String
    #   resp.data.targets[0].input #=> String
    #   resp.data.targets[0].input_path #=> String
    #   resp.data.targets[0].input_transformer #=> Types::InputTransformer
    #   resp.data.targets[0].input_transformer.input_paths_map #=> Hash<String, String>
    #   resp.data.targets[0].input_transformer.input_paths_map['key'] #=> String
    #   resp.data.targets[0].input_transformer.input_template #=> String
    #   resp.data.targets[0].kinesis_parameters #=> Types::KinesisParameters
    #   resp.data.targets[0].kinesis_parameters.partition_key_path #=> String
    #   resp.data.targets[0].run_command_parameters #=> Types::RunCommandParameters
    #   resp.data.targets[0].run_command_parameters.run_command_targets #=> Array<RunCommandTarget>
    #   resp.data.targets[0].run_command_parameters.run_command_targets[0] #=> Types::RunCommandTarget
    #   resp.data.targets[0].run_command_parameters.run_command_targets[0].key #=> String
    #   resp.data.targets[0].run_command_parameters.run_command_targets[0].values #=> Array<String>
    #   resp.data.targets[0].run_command_parameters.run_command_targets[0].values[0] #=> String
    #   resp.data.targets[0].ecs_parameters #=> Types::EcsParameters
    #   resp.data.targets[0].ecs_parameters.task_definition_arn #=> String
    #   resp.data.targets[0].ecs_parameters.task_count #=> Integer
    #   resp.data.targets[0].ecs_parameters.launch_type #=> String, one of ["EC2", "FARGATE", "EXTERNAL"]
    #   resp.data.targets[0].ecs_parameters.network_configuration #=> Types::NetworkConfiguration
    #   resp.data.targets[0].ecs_parameters.network_configuration.awsvpc_configuration #=> Types::AwsVpcConfiguration
    #   resp.data.targets[0].ecs_parameters.network_configuration.awsvpc_configuration.subnets #=> Array<String>
    #   resp.data.targets[0].ecs_parameters.network_configuration.awsvpc_configuration.subnets[0] #=> String
    #   resp.data.targets[0].ecs_parameters.network_configuration.awsvpc_configuration.security_groups #=> Array<String>
    #   resp.data.targets[0].ecs_parameters.network_configuration.awsvpc_configuration.assign_public_ip #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.targets[0].ecs_parameters.platform_version #=> String
    #   resp.data.targets[0].ecs_parameters.group #=> String
    #   resp.data.targets[0].ecs_parameters.capacity_provider_strategy #=> Array<CapacityProviderStrategyItem>
    #   resp.data.targets[0].ecs_parameters.capacity_provider_strategy[0] #=> Types::CapacityProviderStrategyItem
    #   resp.data.targets[0].ecs_parameters.capacity_provider_strategy[0].capacity_provider #=> String
    #   resp.data.targets[0].ecs_parameters.capacity_provider_strategy[0].weight #=> Integer
    #   resp.data.targets[0].ecs_parameters.capacity_provider_strategy[0].base #=> Integer
    #   resp.data.targets[0].ecs_parameters.enable_ecs_managed_tags #=> Boolean
    #   resp.data.targets[0].ecs_parameters.enable_execute_command #=> Boolean
    #   resp.data.targets[0].ecs_parameters.placement_constraints #=> Array<PlacementConstraint>
    #   resp.data.targets[0].ecs_parameters.placement_constraints[0] #=> Types::PlacementConstraint
    #   resp.data.targets[0].ecs_parameters.placement_constraints[0].type #=> String, one of ["distinctInstance", "memberOf"]
    #   resp.data.targets[0].ecs_parameters.placement_constraints[0].expression #=> String
    #   resp.data.targets[0].ecs_parameters.placement_strategy #=> Array<PlacementStrategy>
    #   resp.data.targets[0].ecs_parameters.placement_strategy[0] #=> Types::PlacementStrategy
    #   resp.data.targets[0].ecs_parameters.placement_strategy[0].type #=> String, one of ["random", "spread", "binpack"]
    #   resp.data.targets[0].ecs_parameters.placement_strategy[0].field #=> String
    #   resp.data.targets[0].ecs_parameters.propagate_tags #=> String, one of ["TASK_DEFINITION"]
    #   resp.data.targets[0].ecs_parameters.reference_id #=> String
    #   resp.data.targets[0].ecs_parameters.tags #=> Array<Tag>
    #   resp.data.targets[0].ecs_parameters.tags[0] #=> Types::Tag
    #   resp.data.targets[0].ecs_parameters.tags[0].key #=> String
    #   resp.data.targets[0].ecs_parameters.tags[0].value #=> String
    #   resp.data.targets[0].batch_parameters #=> Types::BatchParameters
    #   resp.data.targets[0].batch_parameters.job_definition #=> String
    #   resp.data.targets[0].batch_parameters.job_name #=> String
    #   resp.data.targets[0].batch_parameters.array_properties #=> Types::BatchArrayProperties
    #   resp.data.targets[0].batch_parameters.array_properties.size #=> Integer
    #   resp.data.targets[0].batch_parameters.retry_strategy #=> Types::BatchRetryStrategy
    #   resp.data.targets[0].batch_parameters.retry_strategy.attempts #=> Integer
    #   resp.data.targets[0].sqs_parameters #=> Types::SqsParameters
    #   resp.data.targets[0].sqs_parameters.message_group_id #=> String
    #   resp.data.targets[0].http_parameters #=> Types::HttpParameters
    #   resp.data.targets[0].http_parameters.path_parameter_values #=> Array<String>
    #   resp.data.targets[0].http_parameters.path_parameter_values[0] #=> String
    #   resp.data.targets[0].http_parameters.header_parameters #=> Hash<String, String>
    #   resp.data.targets[0].http_parameters.header_parameters['key'] #=> String
    #   resp.data.targets[0].http_parameters.query_string_parameters #=> Hash<String, String>
    #   resp.data.targets[0].http_parameters.query_string_parameters['key'] #=> String
    #   resp.data.targets[0].redshift_data_parameters #=> Types::RedshiftDataParameters
    #   resp.data.targets[0].redshift_data_parameters.secret_manager_arn #=> String
    #   resp.data.targets[0].redshift_data_parameters.database #=> String
    #   resp.data.targets[0].redshift_data_parameters.db_user #=> String
    #   resp.data.targets[0].redshift_data_parameters.sql #=> String
    #   resp.data.targets[0].redshift_data_parameters.statement_name #=> String
    #   resp.data.targets[0].redshift_data_parameters.with_event #=> Boolean
    #   resp.data.targets[0].sage_maker_pipeline_parameters #=> Types::SageMakerPipelineParameters
    #   resp.data.targets[0].sage_maker_pipeline_parameters.pipeline_parameter_list #=> Array<SageMakerPipelineParameter>
    #   resp.data.targets[0].sage_maker_pipeline_parameters.pipeline_parameter_list[0] #=> Types::SageMakerPipelineParameter
    #   resp.data.targets[0].sage_maker_pipeline_parameters.pipeline_parameter_list[0].name #=> String
    #   resp.data.targets[0].sage_maker_pipeline_parameters.pipeline_parameter_list[0].value #=> String
    #   resp.data.targets[0].dead_letter_config #=> Types::DeadLetterConfig
    #   resp.data.targets[0].dead_letter_config.arn #=> String
    #   resp.data.targets[0].retry_policy #=> Types::RetryPolicy
    #   resp.data.targets[0].retry_policy.maximum_retry_attempts #=> Integer
    #   resp.data.targets[0].retry_policy.maximum_event_age_in_seconds #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_targets_by_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTargetsByRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTargetsByRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTargetsByRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListTargetsByRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTargetsByRule,
        stubs: @stubs,
        params_class: Params::ListTargetsByRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_targets_by_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends custom events to Amazon EventBridge so that they can be matched to rules.</p>
    #          <note>
    #             <p>PutEvents will only process nested JSON up to 1100 levels deep.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutEventsInput}.
    #
    # @option params [Array<PutEventsRequestEntry>] :entries
    #   <p>The entry that defines an event in your system. You can specify several parameters for the
    #         entry such as the source and type of the event, resources associated with the event, and so
    #         on.</p>
    #
    # @option params [String] :endpoint_id
    #   <p>The URL subdomain of the endpoint. For example, if the URL for Endpoint is abcde.veo.endpoints.event.amazonaws.com, then the EndpointId is <code>abcde.veo</code>.</p>
    #            <important>
    #               <p>When using Java, you must include <code>auth-crt</code> on the class path.</p>
    #            </important>
    #
    # @return [Types::PutEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_events(
    #     entries: [
    #       {
    #         time: Time.now,
    #         source: 'Source',
    #         resources: [
    #           'member'
    #         ],
    #         detail_type: 'DetailType',
    #         detail: 'Detail',
    #         event_bus_name: 'EventBusName',
    #         trace_header: 'TraceHeader'
    #       }
    #     ], # required
    #     endpoint_id: 'EndpointId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEventsOutput
    #   resp.data.failed_entry_count #=> Integer
    #   resp.data.entries #=> Array<PutEventsResultEntry>
    #   resp.data.entries[0] #=> Types::PutEventsResultEntry
    #   resp.data.entries[0].event_id #=> String
    #   resp.data.entries[0].error_code #=> String
    #   resp.data.entries[0].error_message #=> String
    #
    def put_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEvents
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException]),
        data_parser: Parsers::PutEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEvents,
        stubs: @stubs,
        params_class: Params::PutEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This is used by SaaS partners to write events to a customer's partner event bus. Amazon Web Services
    #       customers do not use this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::PutPartnerEventsInput}.
    #
    # @option params [Array<PutPartnerEventsRequestEntry>] :entries
    #   <p>The list of events to write to the event bus.</p>
    #
    # @return [Types::PutPartnerEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_partner_events(
    #     entries: [
    #       {
    #         time: Time.now,
    #         source: 'Source',
    #         resources: [
    #           'member'
    #         ],
    #         detail_type: 'DetailType',
    #         detail: 'Detail'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutPartnerEventsOutput
    #   resp.data.failed_entry_count #=> Integer
    #   resp.data.entries #=> Array<PutPartnerEventsResultEntry>
    #   resp.data.entries[0] #=> Types::PutPartnerEventsResultEntry
    #   resp.data.entries[0].event_id #=> String
    #   resp.data.entries[0].error_code #=> String
    #   resp.data.entries[0].error_message #=> String
    #
    def put_partner_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutPartnerEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutPartnerEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutPartnerEvents
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalException, Errors::OperationDisabledException]),
        data_parser: Parsers::PutPartnerEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutPartnerEvents,
        stubs: @stubs,
        params_class: Params::PutPartnerEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_partner_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Running <code>PutPermission</code> permits the specified Amazon Web Services account or Amazon Web Services organization
    #       to put events to the specified <i>event bus</i>. Amazon EventBridge (CloudWatch
    #       Events) rules in your account are triggered by these events arriving to an event bus in your
    #       account. </p>
    #          <p>For another account to send events to your account, that external account must have an
    #       EventBridge rule with your account's event bus as a target.</p>
    #
    #          <p>To enable multiple Amazon Web Services accounts to put events to your event bus, run
    #         <code>PutPermission</code> once for each of these accounts. Or, if all the accounts are
    #       members of the same Amazon Web Services organization, you can run <code>PutPermission</code> once specifying
    #         <code>Principal</code> as "*" and specifying the Amazon Web Services organization ID in
    #         <code>Condition</code>, to grant permissions to all accounts in that organization.</p>
    #
    #          <p>If you grant permissions using an organization, then accounts in that organization must
    #       specify a <code>RoleArn</code> with proper permissions when they use <code>PutTarget</code> to
    #       add your account's event bus as a target. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html">Sending and
    #         Receiving Events Between Amazon Web Services Accounts</a> in the <i>Amazon EventBridge User
    #         Guide</i>.</p>
    #
    #          <p>The permission policy on the event bus cannot exceed 10 KB in size.</p>
    #
    # @param [Hash] params
    #   See {Types::PutPermissionInput}.
    #
    # @option params [String] :event_bus_name
    #   <p>The name of the event bus associated with the rule. If you omit this, the default event
    #         bus is used.</p>
    #
    # @option params [String] :action
    #   <p>The action that you are enabling the other account to perform.</p>
    #
    # @option params [String] :principal
    #   <p>The 12-digit Amazon Web Services account ID that you are permitting to put events to your default event
    #         bus. Specify "*" to permit any account to put events to your default event bus.</p>
    #
    #            <p>If you specify "*" without specifying <code>Condition</code>, avoid creating rules that
    #         may match undesirable events. To create more secure rules, make sure that the event pattern
    #         for each rule contains an <code>account</code> field with a specific account ID from which to
    #         receive events. Rules with an account field do not match any events sent from other
    #         accounts.</p>
    #
    # @option params [String] :statement_id
    #   <p>An identifier string for the external account that you are granting permissions to. If you
    #         later want to revoke the permission for this external account, specify this
    #         <code>StatementId</code> when you run <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_RemovePermission.html">RemovePermission</a>.</p>
    #            <note>
    #               <p>Each <code>StatementId</code> must be unique.</p>
    #            </note>
    #
    # @option params [Condition] :condition
    #   <p>This parameter enables you to limit the permission to accounts that fulfill a certain
    #         condition, such as being a member of a certain Amazon Web Services organization. For more information about
    #         Amazon Web Services Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html">What Is Amazon Web Services
    #           Organizations</a> in the <i>Amazon Web Services Organizations User Guide</i>.</p>
    #            <p>If you specify <code>Condition</code> with an Amazon Web Services organization ID, and specify "*" as the
    #         value for <code>Principal</code>, you grant permission to all the accounts in the named
    #         organization.</p>
    #
    #            <p>The <code>Condition</code> is a JSON string which must contain <code>Type</code>,
    #           <code>Key</code>, and <code>Value</code> fields.</p>
    #
    # @option params [String] :policy
    #   <p>A JSON string that describes the permission policy statement. You can include a
    #           <code>Policy</code> parameter in the request instead of using the <code>StatementId</code>,
    #           <code>Action</code>, <code>Principal</code>, or <code>Condition</code> parameters.</p>
    #
    # @return [Types::PutPermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_permission(
    #     event_bus_name: 'EventBusName',
    #     action: 'Action',
    #     principal: 'Principal',
    #     statement_id: 'StatementId',
    #     condition: {
    #       type: 'Type', # required
    #       key: 'Key', # required
    #       value: 'Value' # required
    #     },
    #     policy: 'Policy'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutPermissionOutput
    #
    def put_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutPermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutPermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutPermission
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::OperationDisabledException, Errors::PolicyLengthExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::PutPermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutPermission,
        stubs: @stubs,
        params_class: Params::PutPermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates the specified rule. Rules are enabled by default, or based on value of
    #       the state. You can disable a rule using <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DisableRule.html">DisableRule</a>.</p>
    #
    #          <p>A single rule watches for events from a single event bus. Events generated by Amazon Web Services services
    #       go to your account's default event bus. Events generated by SaaS partner services or
    #       applications go to the matching partner event bus. If you have custom applications or
    #       services, you can specify whether their events go to your default event bus or a custom event
    #       bus that you have created. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_CreateEventBus.html">CreateEventBus</a>.</p>
    #
    #          <p>If you are updating an existing rule, the rule is replaced with what you specify in this
    #         <code>PutRule</code> command. If you omit arguments in <code>PutRule</code>, the old values
    #       for those arguments are not kept. Instead, they are replaced with null values.</p>
    #
    #          <p>When you create or update a rule, incoming events might not immediately start matching to
    #       new or updated rules. Allow a short period of time for changes to take effect.</p>
    #
    #          <p>A rule must contain at least an EventPattern or ScheduleExpression. Rules with
    #       EventPatterns are triggered when a matching event is observed. Rules with ScheduleExpressions
    #       self-trigger based on the given schedule. A rule can have both an EventPattern and a
    #       ScheduleExpression, in which case the rule triggers on matching events as well as on a
    #       schedule.</p>
    #
    #          <p>When you initially create a rule, you can optionally assign one or more tags to the rule.
    #       Tags can help you organize and categorize your resources. You can also use them to scope user
    #       permissions, by granting a user permission to access or change only rules with certain tag
    #       values. To use the <code>PutRule</code> operation and assign tags, you must have both the
    #         <code>events:PutRule</code> and <code>events:TagResource</code> permissions.</p>
    #          <p>If you are updating an existing rule, any tags you specify in the <code>PutRule</code>
    #       operation are ignored. To update the tags of an existing rule, use <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_TagResource.html">TagResource</a> and <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_UntagResource.html">UntagResource</a>.</p>
    #
    #          <p>Most services in Amazon Web Services treat : or / as the same character in Amazon Resource Names (ARNs).
    #       However, EventBridge uses an exact match in event patterns and rules. Be sure to use the
    #       correct ARN characters when creating event patterns so that they match the ARN syntax in the
    #       event you want to match.</p>
    #
    #          <p>In EventBridge, it is possible to create rules that lead to infinite loops, where a rule
    #       is fired repeatedly. For example, a rule might detect that ACLs have changed on an S3 bucket,
    #       and trigger software to change them to the desired state. If the rule is not written
    #       carefully, the subsequent change to the ACLs fires the rule again, creating an infinite
    #       loop.</p>
    #          <p>To prevent this, write the rules so that the triggered actions do not re-fire the same
    #       rule. For example, your rule could fire only if ACLs are found to be in a bad state, instead
    #       of after any change. </p>
    #          <p>An infinite loop can quickly cause higher than expected charges. We recommend that you use
    #       budgeting, which alerts you when charges exceed your specified limit. For more information,
    #       see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/budgets-managing-costs.html">Managing Your Costs with
    #         Budgets</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRuleInput}.
    #
    # @option params [String] :name
    #   <p>The name of the rule that you are creating or updating.</p>
    #
    # @option params [String] :schedule_expression
    #   <p>The scheduling expression. For example, "cron(0 20 * * ? *)" or "rate(5 minutes)".</p>
    #
    # @option params [String] :event_pattern
    #   <p>The event pattern. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html.html">EventBridge event
    #           patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #
    # @option params [String] :state
    #   <p>Indicates whether the rule is enabled or disabled.</p>
    #
    # @option params [String] :description
    #   <p>A description of the rule.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>
    #            <p>If you're setting an event bus in another account as the target and that account granted
    #         permission to your account through an organization instead of directly by the account ID, you
    #         must specify a <code>RoleArn</code> with proper permissions in the <code>Target</code>
    #         structure, instead of here in this parameter.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of key-value pairs to associate with the rule.</p>
    #
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus to associate with this rule. If you omit this, the
    #         default event bus is used.</p>
    #
    # @return [Types::PutRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_rule(
    #     name: 'Name', # required
    #     schedule_expression: 'ScheduleExpression',
    #     event_pattern: 'EventPattern',
    #     state: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #     description: 'Description',
    #     role_arn: 'RoleArn',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     event_bus_name: 'EventBusName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRuleOutput
    #   resp.data.rule_arn #=> String
    #
    def put_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidEventPatternException, Errors::InternalException, Errors::LimitExceededException, Errors::ManagedRuleException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::PutRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRule,
        stubs: @stubs,
        params_class: Params::PutRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified targets to the specified rule, or updates the targets if they are
    #       already associated with the rule.</p>
    #          <p>Targets are the resources that are invoked when a rule is triggered.</p>
    #          <note>
    #             <p>Each rule can have up to five (5) targets associated with it at one time.</p>
    #          </note>
    #          <p>You can configure the following as targets for Events:</p>
    #
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-api-destinations.html">API destination</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-api-gateway-target.html">API Gateway</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Batch job queue</p>
    #             </li>
    #             <li>
    #                <p>CloudWatch group</p>
    #             </li>
    #             <li>
    #                <p>CodeBuild project</p>
    #             </li>
    #             <li>
    #                <p>CodePipeline</p>
    #             </li>
    #             <li>
    #                <p>EC2 <code>CreateSnapshot</code> API call</p>
    #             </li>
    #             <li>
    #                <p>EC2 Image Builder</p>
    #             </li>
    #             <li>
    #                <p>EC2 <code>RebootInstances</code> API call</p>
    #             </li>
    #             <li>
    #                <p>EC2 <code>StopInstances</code> API call</p>
    #             </li>
    #             <li>
    #                <p>EC2 <code>TerminateInstances</code> API call</p>
    #             </li>
    #             <li>
    #                <p>ECS task</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-cross-account.html">Event bus in a different account or
    #           Region</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-bus-to-bus.html">Event bus in the same account and
    #           Region</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Firehose delivery stream</p>
    #             </li>
    #             <li>
    #                <p>Glue workflow</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/incident-manager/latest/userguide/incident-creation.html#incident-tracking-auto-eventbridge">Incident Manager response plan</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Inspector assessment template</p>
    #             </li>
    #             <li>
    #                <p>Kinesis stream</p>
    #             </li>
    #             <li>
    #                <p>Lambda function</p>
    #             </li>
    #             <li>
    #                <p>Redshift cluster</p>
    #             </li>
    #             <li>
    #                <p>SageMaker Pipeline</p>
    #             </li>
    #             <li>
    #                <p>SNS topic</p>
    #             </li>
    #             <li>
    #                <p>SQS queue</p>
    #             </li>
    #             <li>
    #                <p>Step Functions state machine</p>
    #             </li>
    #             <li>
    #                <p>Systems Manager Automation</p>
    #             </li>
    #             <li>
    #                <p>Systems Manager OpsItem</p>
    #             </li>
    #             <li>
    #                <p>Systems Manager Run Command</p>
    #             </li>
    #          </ul>
    #
    #          <p>Creating rules with built-in targets is supported only in the Amazon Web Services Management Console. The
    #       built-in targets are <code>EC2 CreateSnapshot API call</code>, <code>EC2 RebootInstances API
    #         call</code>, <code>EC2 StopInstances API call</code>, and <code>EC2 TerminateInstances API
    #         call</code>. </p>
    #
    #          <p>For some target types, <code>PutTargets</code> provides target-specific parameters. If the
    #       target is a Kinesis data stream, you can optionally specify which shard the event goes to by
    #       using the <code>KinesisParameters</code> argument. To invoke a command on multiple EC2
    #       instances with one rule, you can use the <code>RunCommandParameters</code> field.</p>
    #
    #          <p>To be able to make API calls against the resources that you own, Amazon EventBridge
    #       needs the appropriate permissions. For Lambda and Amazon SNS
    #       resources, EventBridge relies on resource-based policies. For EC2 instances, Kinesis Data Streams,
    #       Step Functions state machines and API Gateway REST APIs, EventBridge relies on
    #       IAM roles that you specify in the <code>RoleARN</code> argument in <code>PutTargets</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/auth-and-access-control-eventbridge.html">Authentication
    #         and Access Control</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #
    #          <p>If another Amazon Web Services account is in the same region and has granted you permission (using
    #         <code>PutPermission</code>), you can send events to that account. Set that account's event
    #       bus as a target of the rules in your account. To send the matched events to the other account,
    #       specify that account's event bus as the <code>Arn</code> value when you run
    #         <code>PutTargets</code>. If your account sends events to another account, your account is
    #       charged for each sent event. Each event sent to another account is charged as a custom event.
    #       The account receiving the event is not charged. For more information, see <a href="http://aws.amazon.com/eventbridge/pricing/">Amazon EventBridge
    #         Pricing</a>.</p>
    #
    #          <note>
    #             <p>
    #                <code>Input</code>, <code>InputPath</code>, and <code>InputTransformer</code> are not
    #         available with <code>PutTarget</code> if the target is an event bus of a different Amazon Web Services
    #         account.</p>
    #          </note>
    #
    #          <p>If you are setting the event bus of another account as the target, and that account
    #       granted permission to your account through an organization instead of directly by the account
    #       ID, then you must specify a <code>RoleArn</code> with proper permissions in the
    #         <code>Target</code> structure. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html">Sending and
    #           Receiving Events Between Amazon Web Services Accounts</a> in the <i>Amazon EventBridge User
    #         Guide</i>.</p>
    #
    #          <p>For more information about enabling cross-account events, see <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutPermission.html">PutPermission</a>.</p>
    #
    #          <p>
    #             <b>Input</b>, <b>InputPath</b>, and
    #         <b>InputTransformer</b> are mutually exclusive and optional
    #       parameters of a target. When a rule is triggered due to a matched event:</p>
    #
    #          <ul>
    #             <li>
    #                <p>If none of the following arguments are specified for a target, then the entire event
    #           is passed to the target in JSON format (unless the target is Amazon EC2 Run Command or
    #           Amazon ECS task, in which case nothing from the event is passed to the target).</p>
    #             </li>
    #             <li>
    #                <p>If <b>Input</b> is specified in the form of valid JSON, then
    #           the matched event is overridden with this constant.</p>
    #             </li>
    #             <li>
    #                <p>If <b>InputPath</b> is specified in the form of JSONPath
    #           (for example, <code>$.detail</code>), then only the part of the event specified in the
    #           path is passed to the target (for example, only the detail part of the event is
    #           passed).</p>
    #             </li>
    #             <li>
    #                <p>If <b>InputTransformer</b> is specified, then one or more
    #           specified JSONPaths are extracted from the event and used as values in a template that you
    #           specify as the input to the target.</p>
    #             </li>
    #          </ul>
    #
    #          <p>When you specify <code>InputPath</code> or <code>InputTransformer</code>, you must use
    #       JSON dot notation, not bracket notation.</p>
    #
    #          <p>When you add targets to a rule and the associated rule triggers soon after, new or updated
    #       targets might not be immediately invoked. Allow a short period of time for changes to take
    #       effect.</p>
    #
    #          <p>This action can partially fail if too many requests are made at the same time. If that
    #       happens, <code>FailedEntryCount</code> is non-zero in the response and each entry in
    #         <code>FailedEntries</code> provides the ID of the failed target and the error code.</p>
    #
    # @param [Hash] params
    #   See {Types::PutTargetsInput}.
    #
    # @option params [String] :rule
    #   <p>The name of the rule.</p>
    #
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    # @option params [Array<Target>] :targets
    #   <p>The targets to update or add to the rule.</p>
    #
    # @return [Types::PutTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_targets(
    #     rule: 'Rule', # required
    #     event_bus_name: 'EventBusName',
    #     targets: [
    #       {
    #         id: 'Id', # required
    #         arn: 'Arn', # required
    #         role_arn: 'RoleArn',
    #         input: 'Input',
    #         input_path: 'InputPath',
    #         input_transformer: {
    #           input_paths_map: {
    #             'key' => 'value'
    #           },
    #           input_template: 'InputTemplate' # required
    #         },
    #         kinesis_parameters: {
    #           partition_key_path: 'PartitionKeyPath' # required
    #         },
    #         run_command_parameters: {
    #           run_command_targets: [
    #             {
    #               key: 'Key', # required
    #               values: [
    #                 'member'
    #               ] # required
    #             }
    #           ] # required
    #         },
    #         ecs_parameters: {
    #           task_definition_arn: 'TaskDefinitionArn', # required
    #           task_count: 1,
    #           launch_type: 'EC2', # accepts ["EC2", "FARGATE", "EXTERNAL"]
    #           network_configuration: {
    #             awsvpc_configuration: {
    #               subnets: [
    #                 'member'
    #               ], # required
    #               assign_public_ip: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #             }
    #           },
    #           platform_version: 'PlatformVersion',
    #           group: 'Group',
    #           capacity_provider_strategy: [
    #             {
    #               capacity_provider: 'capacityProvider', # required
    #               weight: 1,
    #               base: 1
    #             }
    #           ],
    #           enable_ecs_managed_tags: false,
    #           enable_execute_command: false,
    #           placement_constraints: [
    #             {
    #               type: 'distinctInstance', # accepts ["distinctInstance", "memberOf"]
    #               expression: 'expression'
    #             }
    #           ],
    #           placement_strategy: [
    #             {
    #               type: 'random', # accepts ["random", "spread", "binpack"]
    #               field: 'field'
    #             }
    #           ],
    #           propagate_tags: 'TASK_DEFINITION', # accepts ["TASK_DEFINITION"]
    #           reference_id: 'ReferenceId',
    #           tags: [
    #             {
    #               key: 'Key', # required
    #               value: 'Value' # required
    #             }
    #           ]
    #         },
    #         batch_parameters: {
    #           job_definition: 'JobDefinition', # required
    #           job_name: 'JobName', # required
    #           array_properties: {
    #             size: 1
    #           },
    #           retry_strategy: {
    #             attempts: 1
    #           }
    #         },
    #         sqs_parameters: {
    #           message_group_id: 'MessageGroupId'
    #         },
    #         http_parameters: {
    #           path_parameter_values: [
    #             'member'
    #           ],
    #           header_parameters: {
    #             'key' => 'value'
    #           },
    #           query_string_parameters: {
    #             'key' => 'value'
    #           }
    #         },
    #         redshift_data_parameters: {
    #           secret_manager_arn: 'SecretManagerArn',
    #           database: 'Database', # required
    #           db_user: 'DbUser',
    #           sql: 'Sql', # required
    #           statement_name: 'StatementName',
    #           with_event: false
    #         },
    #         sage_maker_pipeline_parameters: {
    #           pipeline_parameter_list: [
    #             {
    #               name: 'Name', # required
    #               value: 'Value' # required
    #             }
    #           ]
    #         },
    #         dead_letter_config: {
    #           arn: 'Arn'
    #         },
    #         retry_policy: {
    #           maximum_retry_attempts: 1,
    #           maximum_event_age_in_seconds: 1
    #         }
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutTargetsOutput
    #   resp.data.failed_entry_count #=> Integer
    #   resp.data.failed_entries #=> Array<PutTargetsResultEntry>
    #   resp.data.failed_entries[0] #=> Types::PutTargetsResultEntry
    #   resp.data.failed_entries[0].target_id #=> String
    #   resp.data.failed_entries[0].error_code #=> String
    #   resp.data.failed_entries[0].error_message #=> String
    #
    def put_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutTargetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutTargets
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::LimitExceededException, Errors::ManagedRuleException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::PutTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutTargets,
        stubs: @stubs,
        params_class: Params::PutTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Revokes the permission of another Amazon Web Services account to be able to put events to the specified
    #       event bus. Specify the account to revoke by the <code>StatementId</code> value that you
    #       associated with the account when you granted it permission with <code>PutPermission</code>.
    #       You can find the <code>StatementId</code> by using <a href="https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_DescribeEventBus.html">DescribeEventBus</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RemovePermissionInput}.
    #
    # @option params [String] :statement_id
    #   <p>The statement ID corresponding to the account that is no longer allowed to put events to
    #         the default event bus.</p>
    #
    # @option params [Boolean] :remove_all_permissions
    #   <p>Specifies whether to remove all permissions.</p>
    #
    # @option params [String] :event_bus_name
    #   <p>The name of the event bus to revoke permissions for. If you omit this, the default event
    #         bus is used.</p>
    #
    # @return [Types::RemovePermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_permission(
    #     statement_id: 'StatementId',
    #     remove_all_permissions: false,
    #     event_bus_name: 'EventBusName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemovePermissionOutput
    #
    def remove_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemovePermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemovePermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemovePermission
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::OperationDisabledException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::RemovePermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemovePermission,
        stubs: @stubs,
        params_class: Params::RemovePermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified targets from the specified rule. When the rule is triggered, those
    #       targets are no longer be invoked.</p>
    #
    #          <note>
    #             <p>A successful execution of <code>RemoveTargets</code> doesn't guarantee all targets are removed from the rule, it means that the target(s) listed in the request are removed.</p>
    #          </note>
    #
    #          <p>When you remove a target, when the associated rule triggers, removed targets might
    #       continue to be invoked. Allow a short period of time for changes to take effect.</p>
    #
    #          <p>This action can partially fail if too many requests are made at the same time. If that
    #       happens, <code>FailedEntryCount</code> is non-zero in the response and each entry in
    #         <code>FailedEntries</code> provides the ID of the failed target and the error code.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveTargetsInput}.
    #
    # @option params [String] :rule
    #   <p>The name of the rule.</p>
    #
    # @option params [String] :event_bus_name
    #   <p>The name or ARN of the event bus associated with the rule. If you omit this, the default
    #         event bus is used.</p>
    #
    # @option params [Array<String>] :ids
    #   <p>The IDs of the targets to remove from the rule.</p>
    #
    # @option params [Boolean] :force
    #   <p>If this is a managed rule, created by an Amazon Web Services service on your behalf, you must specify
    #           <code>Force</code> as <code>True</code> to remove targets. This parameter is ignored for
    #         rules that are not managed rules. You can check whether a rule is a managed rule by using
    #           <code>DescribeRule</code> or <code>ListRules</code> and checking the <code>ManagedBy</code>
    #         field of the response.</p>
    #
    # @return [Types::RemoveTargetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_targets(
    #     rule: 'Rule', # required
    #     event_bus_name: 'EventBusName',
    #     ids: [
    #       'member'
    #     ], # required
    #     force: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveTargetsOutput
    #   resp.data.failed_entry_count #=> Integer
    #   resp.data.failed_entries #=> Array<RemoveTargetsResultEntry>
    #   resp.data.failed_entries[0] #=> Types::RemoveTargetsResultEntry
    #   resp.data.failed_entries[0].target_id #=> String
    #   resp.data.failed_entries[0].error_code #=> String
    #   resp.data.failed_entries[0].error_message #=> String
    #
    def remove_targets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveTargetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveTargetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveTargets
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::ManagedRuleException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::RemoveTargets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveTargets,
        stubs: @stubs,
        params_class: Params::RemoveTargetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_targets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts the specified replay. Events are not necessarily replayed in the exact same order
    #       that they were added to the archive. A replay processes events to replay based on the time in
    #       the event, and replays them using 1 minute intervals. If you specify an
    #         <code>EventStartTime</code> and an <code>EventEndTime</code> that covers a 20 minute time
    #       range, the events are replayed from the first minute of that 20 minute range first. Then the
    #       events from the second minute are replayed. You can use <code>DescribeReplay</code> to
    #       determine the progress of a replay. The value returned for <code>EventLastReplayedTime</code>
    #       indicates the time within the specified time range associated with the last event
    #       replayed.</p>
    #
    # @param [Hash] params
    #   See {Types::StartReplayInput}.
    #
    # @option params [String] :replay_name
    #   <p>The name of the replay to start.</p>
    #
    # @option params [String] :description
    #   <p>A description for the replay to start.</p>
    #
    # @option params [String] :event_source_arn
    #   <p>The ARN of the archive to replay events from.</p>
    #
    # @option params [Time] :event_start_time
    #   <p>A time stamp for the time to start replaying events. Only events that occurred between the
    #           <code>EventStartTime</code> and <code>EventEndTime</code> are replayed.</p>
    #
    # @option params [Time] :event_end_time
    #   <p>A time stamp for the time to stop replaying events. Only events that occurred between the
    #           <code>EventStartTime</code> and <code>EventEndTime</code> are replayed.</p>
    #
    # @option params [ReplayDestination] :destination
    #   <p>A <code>ReplayDestination</code> object that includes details about the destination for
    #         the replay.</p>
    #
    # @return [Types::StartReplayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_replay(
    #     replay_name: 'ReplayName', # required
    #     description: 'Description',
    #     event_source_arn: 'EventSourceArn', # required
    #     event_start_time: Time.now, # required
    #     event_end_time: Time.now, # required
    #     destination: {
    #       arn: 'Arn', # required
    #       filter_arns: [
    #         'member'
    #       ]
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartReplayOutput
    #   resp.data.replay_arn #=> String
    #   resp.data.state #=> String, one of ["STARTING", "RUNNING", "CANCELLING", "COMPLETED", "CANCELLED", "FAILED"]
    #   resp.data.state_reason #=> String
    #   resp.data.replay_start_time #=> Time
    #
    def start_replay(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartReplayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartReplayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartReplay
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceAlreadyExistsException, Errors::InvalidEventPatternException, Errors::InternalException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartReplay
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartReplay,
        stubs: @stubs,
        params_class: Params::StartReplayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_replay
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified EventBridge resource. Tags can
    #       help you organize and categorize your resources. You can also use them to scope user
    #       permissions by granting a user permission to access or change only resources with certain tag
    #       values. In EventBridge, rules and event buses can be tagged.</p>
    #          <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of
    #       characters.</p>
    #          <p>You can use the <code>TagResource</code> action with a resource that already has tags. If
    #       you specify a new tag key, this tag is appended to the list of tags associated with the
    #       resource. If you specify a tag key that is already associated with the resource, the new tag
    #       value that you specify replaces the previous value for that tag.</p>
    #          <p>You can associate as many as 50 tags with a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the EventBridge resource that you're adding tags to.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::ManagedRuleException, Errors::ResourceNotFoundException]),
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

    # <p>Tests whether the specified event pattern matches the provided event.</p>
    #          <p>Most services in Amazon Web Services treat : or / as the same character in Amazon Resource Names (ARNs).
    #       However, EventBridge uses an exact match in event patterns and rules. Be sure to use the
    #       correct ARN characters when creating event patterns so that they match the ARN syntax in the
    #       event you want to match.</p>
    #
    # @param [Hash] params
    #   See {Types::TestEventPatternInput}.
    #
    # @option params [String] :event_pattern
    #   <p>The event pattern. For more information, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html">Events and Event
    #           Patterns</a> in the <i>Amazon EventBridge User Guide</i>.</p>
    #
    # @option params [String] :event
    #   <p>The event, in JSON format, to test against the event pattern. The JSON must follow the
    #         format specified in <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/aws-events.html">Amazon Web Services Events</a>, and the following
    #         fields are mandatory:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>id</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>account</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>source</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>time</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>region</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>resources</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>detail-type</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::TestEventPatternOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_event_pattern(
    #     event_pattern: 'EventPattern', # required
    #     event: 'Event' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestEventPatternOutput
    #   resp.data.result #=> Boolean
    #
    def test_event_pattern(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestEventPatternInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestEventPatternInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestEventPattern
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidEventPatternException, Errors::InternalException]),
        data_parser: Parsers::TestEventPattern
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestEventPattern,
        stubs: @stubs,
        params_class: Params::TestEventPatternOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_event_pattern
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes one or more tags from the specified EventBridge resource. In Amazon EventBridge
    #       (CloudWatch Events), rules and event buses can be tagged.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the EventBridge resource from which you are removing tags.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceARN', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::ManagedRuleException, Errors::ResourceNotFoundException]),
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

    # <p>Updates an API destination.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApiDestinationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the API destination to update.</p>
    #
    # @option params [String] :description
    #   <p>The name of the API destination to update.</p>
    #
    # @option params [String] :connection_arn
    #   <p>The ARN of the connection to use for the API destination.</p>
    #
    # @option params [String] :invocation_endpoint
    #   <p>The URL to the endpoint to use for the API destination.</p>
    #
    # @option params [String] :http_method
    #   <p>The method to use for the API destination.</p>
    #
    # @option params [Integer] :invocation_rate_limit_per_second
    #   <p>The maximum number of invocations per second to send to the API destination.</p>
    #
    # @return [Types::UpdateApiDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_api_destination(
    #     name: 'Name', # required
    #     description: 'Description',
    #     connection_arn: 'ConnectionArn',
    #     invocation_endpoint: 'InvocationEndpoint',
    #     http_method: 'POST', # accepts ["POST", "GET", "HEAD", "OPTIONS", "PUT", "PATCH", "DELETE"]
    #     invocation_rate_limit_per_second: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApiDestinationOutput
    #   resp.data.api_destination_arn #=> String
    #   resp.data.api_destination_state #=> String, one of ["ACTIVE", "INACTIVE"]
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modified_time #=> Time
    #
    def update_api_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApiDestinationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApiDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApiDestination
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateApiDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApiDestination,
        stubs: @stubs,
        params_class: Params::UpdateApiDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_api_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified archive.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateArchiveInput}.
    #
    # @option params [String] :archive_name
    #   <p>The name of the archive to update.</p>
    #
    # @option params [String] :description
    #   <p>The description for the archive.</p>
    #
    # @option params [String] :event_pattern
    #   <p>The event pattern to use to filter events sent to the archive.</p>
    #
    # @option params [Integer] :retention_days
    #   <p>The number of days to retain events in the archive.</p>
    #
    # @return [Types::UpdateArchiveOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_archive(
    #     archive_name: 'ArchiveName', # required
    #     description: 'Description',
    #     event_pattern: 'EventPattern',
    #     retention_days: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateArchiveOutput
    #   resp.data.archive_arn #=> String
    #   resp.data.state #=> String, one of ["ENABLED", "DISABLED", "CREATING", "UPDATING", "CREATE_FAILED", "UPDATE_FAILED"]
    #   resp.data.state_reason #=> String
    #   resp.data.creation_time #=> Time
    #
    def update_archive(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateArchiveInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateArchiveInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateArchive
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InvalidEventPatternException, Errors::InternalException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateArchive
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateArchive,
        stubs: @stubs,
        params_class: Params::UpdateArchiveOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_archive
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates settings for a connection.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateConnectionInput}.
    #
    # @option params [String] :name
    #   <p>The name of the connection to update.</p>
    #
    # @option params [String] :description
    #   <p>A description for the connection.</p>
    #
    # @option params [String] :authorization_type
    #   <p>The type of authorization to use for the connection.</p>
    #
    # @option params [UpdateConnectionAuthRequestParameters] :auth_parameters
    #   <p>The authorization parameters to use for the connection.</p>
    #
    # @return [Types::UpdateConnectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_connection(
    #     name: 'Name', # required
    #     description: 'Description',
    #     authorization_type: 'BASIC', # accepts ["BASIC", "OAUTH_CLIENT_CREDENTIALS", "API_KEY"]
    #     auth_parameters: {
    #       basic_auth_parameters: {
    #         username: 'Username',
    #         password: 'Password'
    #       },
    #       o_auth_parameters: {
    #         client_parameters: {
    #           client_id: 'ClientID',
    #           client_secret: 'ClientSecret'
    #         },
    #         authorization_endpoint: 'AuthorizationEndpoint',
    #         http_method: 'GET', # accepts ["GET", "POST", "PUT"]
    #         o_auth_http_parameters: {
    #           header_parameters: [
    #             {
    #               key: 'Key',
    #               value: 'Value',
    #               is_value_secret: false
    #             }
    #           ],
    #           query_string_parameters: [
    #             {
    #               key: 'Key',
    #               value: 'Value',
    #               is_value_secret: false
    #             }
    #           ],
    #           body_parameters: [
    #             {
    #               key: 'Key',
    #               value: 'Value',
    #               is_value_secret: false
    #             }
    #           ]
    #         }
    #       },
    #       api_key_auth_parameters: {
    #         api_key_name: 'ApiKeyName',
    #         api_key_value: 'ApiKeyValue'
    #       },
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateConnectionOutput
    #   resp.data.connection_arn #=> String
    #   resp.data.connection_state #=> String, one of ["CREATING", "UPDATING", "DELETING", "AUTHORIZED", "DEAUTHORIZED", "AUTHORIZING", "DEAUTHORIZING"]
    #   resp.data.creation_time #=> Time
    #   resp.data.last_modified_time #=> Time
    #   resp.data.last_authorized_time #=> Time
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
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

    # <p>Update an existing endpoint. For more information about global endpoints, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html">Making applications Regional-fault tolerant with global endpoints and event replication</a> in the Amazon EventBridge User Guide..</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEndpointInput}.
    #
    # @option params [String] :name
    #   <p>The name of the endpoint you want to update.</p>
    #
    # @option params [String] :description
    #   <p>A description for the endpoint.</p>
    #
    # @option params [RoutingConfig] :routing_config
    #   <p>Configure the routing policy, including the health check and secondary Region..</p>
    #
    # @option params [ReplicationConfig] :replication_config
    #   <p>Whether event replication was enabled or disabled by this request.</p>
    #
    # @option params [Array<EndpointEventBus>] :event_buses
    #   <p>Define event buses used for replication.</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the role used by event replication for this request.</p>
    #
    # @return [Types::UpdateEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_endpoint(
    #     name: 'Name', # required
    #     description: 'Description',
    #     routing_config: {
    #       failover_config: {
    #         primary: {
    #           health_check: 'HealthCheck' # required
    #         }, # required
    #         secondary: {
    #           route: 'Route' # required
    #         } # required
    #       } # required
    #     },
    #     replication_config: {
    #       state: 'ENABLED' # accepts ["ENABLED", "DISABLED"]
    #     },
    #     event_buses: [
    #       {
    #         event_bus_arn: 'EventBusArn' # required
    #       }
    #     ],
    #     role_arn: 'RoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEndpointOutput
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.routing_config #=> Types::RoutingConfig
    #   resp.data.routing_config.failover_config #=> Types::FailoverConfig
    #   resp.data.routing_config.failover_config.primary #=> Types::Primary
    #   resp.data.routing_config.failover_config.primary.health_check #=> String
    #   resp.data.routing_config.failover_config.secondary #=> Types::Secondary
    #   resp.data.routing_config.failover_config.secondary.route #=> String
    #   resp.data.replication_config #=> Types::ReplicationConfig
    #   resp.data.replication_config.state #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.event_buses #=> Array<EndpointEventBus>
    #   resp.data.event_buses[0] #=> Types::EndpointEventBus
    #   resp.data.event_buses[0].event_bus_arn #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.endpoint_id #=> String
    #   resp.data.endpoint_url #=> String
    #   resp.data.state #=> String, one of ["ACTIVE", "CREATING", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "DELETE_FAILED"]
    #
    def update_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEndpointInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEndpoint
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::InternalException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEndpoint,
        stubs: @stubs,
        params_class: Params::UpdateEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_endpoint
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
