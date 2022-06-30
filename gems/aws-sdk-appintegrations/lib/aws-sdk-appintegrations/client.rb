# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::AppIntegrations
  # An API client for AmazonAppIntegrationService
  # See {#initialize} for a full list of supported configuration options
  # <p>The Amazon AppIntegrations service enables you to configure and reuse connections to external
  #       applications.</p>
  #          <p>For information about how you can use external applications with Amazon Connect, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/crm.html">Set up pre-built
  #       integrations</a> and <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-wisdom.html">Deliver information to agents using Amazon Connect Wisdom</a>
  #        in the <i>Amazon Connect Administrator Guide</i>.</p>
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
    def initialize(config = AWS::SDK::AppIntegrations::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates and persists a DataIntegration resource.</p>
    #          <note>
    #             <p>You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    #       Use a different DataIntegration, or recreate the DataIntegration using the
    #       <code>CreateDataIntegration</code> API.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateDataIntegrationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the DataIntegration.</p>
    #
    # @option params [String] :description
    #   <p>A description of the DataIntegration.</p>
    #
    # @option params [String] :kms_key
    #   <p>The KMS key for the DataIntegration.</p>
    #
    # @option params [String] :source_uri
    #   <p>The URI of the data source.</p>
    #
    # @option params [ScheduleConfiguration] :schedule_config
    #   <p>The name of the data and how often it should be pulled from the source.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request.</p>
    #
    # @return [Types::CreateDataIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_data_integration(
    #     name: 'Name', # required
    #     description: 'Description',
    #     kms_key: 'KmsKey',
    #     source_uri: 'SourceURI',
    #     schedule_config: {
    #       first_execution_from: 'FirstExecutionFrom',
    #       object: 'Object',
    #       schedule_expression: 'ScheduleExpression'
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     client_token: 'ClientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDataIntegrationOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.kms_key #=> String
    #   resp.data.source_uri #=> String
    #   resp.data.schedule_configuration #=> Types::ScheduleConfiguration
    #   resp.data.schedule_configuration.first_execution_from #=> String
    #   resp.data.schedule_configuration.object #=> String
    #   resp.data.schedule_configuration.schedule_expression #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.client_token #=> String
    #
    def create_data_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDataIntegrationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDataIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDataIntegration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::DuplicateResourceException, Errors::AccessDeniedException, Errors::InternalServiceError, Errors::ResourceQuotaExceededException]),
        data_parser: Parsers::CreateDataIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDataIntegration,
        stubs: @stubs,
        params_class: Params::CreateDataIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_data_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an EventIntegration, given a specified name, description, and a reference to an
    #       Amazon EventBridge bus in your account and a partner event source that pushes events to that bus. No
    #       objects are created in the your account, only metadata that is persisted on the
    #       EventIntegration control plane.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEventIntegrationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the event integration.</p>
    #
    # @option params [String] :description
    #   <p>The description of the event integration.</p>
    #
    # @option params [EventFilter] :event_filter
    #   <p>The event filter.</p>
    #
    # @option params [String] :event_bridge_bus
    #   <p>The EventBridge bus.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #         request.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags.</p>
    #
    # @return [Types::CreateEventIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_integration(
    #     name: 'Name', # required
    #     description: 'Description',
    #     event_filter: {
    #       source: 'Source' # required
    #     }, # required
    #     event_bridge_bus: 'EventBridgeBus', # required
    #     client_token: 'ClientToken',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEventIntegrationOutput
    #   resp.data.event_integration_arn #=> String
    #
    def create_event_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEventIntegrationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEventIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEventIntegration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::DuplicateResourceException, Errors::AccessDeniedException, Errors::InternalServiceError, Errors::ResourceQuotaExceededException]),
        data_parser: Parsers::CreateEventIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEventIntegration,
        stubs: @stubs,
        params_class: Params::CreateEventIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_event_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the DataIntegration. Only DataIntegrations that don't have any
    #       DataIntegrationAssociations can be deleted. Deleting a DataIntegration also deletes the
    #       underlying Amazon AppFlow flow and service linked role. </p>
    #          <note>
    #             <p>You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    # Use a different DataIntegration, or recreate the DataIntegration using the
    # <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> API.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteDataIntegrationInput}.
    #
    # @option params [String] :data_integration_identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    #
    # @return [Types::DeleteDataIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_data_integration(
    #     data_integration_identifier: 'DataIntegrationIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDataIntegrationOutput
    #
    def delete_data_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDataIntegrationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDataIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDataIntegration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceError, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteDataIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDataIntegration,
        stubs: @stubs,
        params_class: Params::DeleteDataIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_data_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified existing event integration. If the event integration is associated
    #       with clients, the request is rejected.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventIntegrationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the event integration.</p>
    #
    # @return [Types::DeleteEventIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_integration(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEventIntegrationOutput
    #
    def delete_event_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventIntegrationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEventIntegration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceError, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteEventIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEventIntegration,
        stubs: @stubs,
        params_class: Params::DeleteEventIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_event_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the DataIntegration.</p>
    #          <note>
    #             <p>You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    # Use a different DataIntegration, or recreate the DataIntegration using the
    # <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> API.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetDataIntegrationInput}.
    #
    # @option params [String] :identifier
    #   <p>A unique identifier.</p>
    #
    # @return [Types::GetDataIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_integration(
    #     identifier: 'Identifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDataIntegrationOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.kms_key #=> String
    #   resp.data.source_uri #=> String
    #   resp.data.schedule_configuration #=> Types::ScheduleConfiguration
    #   resp.data.schedule_configuration.first_execution_from #=> String
    #   resp.data.schedule_configuration.object #=> String
    #   resp.data.schedule_configuration.schedule_expression #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_data_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDataIntegrationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDataIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDataIntegration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceError, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetDataIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDataIntegration,
        stubs: @stubs,
        params_class: Params::GetDataIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_data_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the event integration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEventIntegrationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the event integration. </p>
    #
    # @return [Types::GetEventIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_integration(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEventIntegrationOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.event_integration_arn #=> String
    #   resp.data.event_bridge_bus #=> String
    #   resp.data.event_filter #=> Types::EventFilter
    #   resp.data.event_filter.source #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_event_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEventIntegrationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEventIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEventIntegration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceError, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetEventIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEventIntegration,
        stubs: @stubs,
        params_class: Params::GetEventIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_event_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of DataIntegration associations in the account.</p>
    #          <note>
    #             <p>You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    # Use a different DataIntegration, or recreate the DataIntegration using the
    # <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> API.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListDataIntegrationAssociationsInput}.
    #
    # @option params [String] :data_integration_identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListDataIntegrationAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_integration_associations(
    #     data_integration_identifier: 'DataIntegrationIdentifier', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataIntegrationAssociationsOutput
    #   resp.data.data_integration_associations #=> Array<DataIntegrationAssociationSummary>
    #   resp.data.data_integration_associations[0] #=> Types::DataIntegrationAssociationSummary
    #   resp.data.data_integration_associations[0].data_integration_association_arn #=> String
    #   resp.data.data_integration_associations[0].data_integration_arn #=> String
    #   resp.data.data_integration_associations[0].client_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_data_integration_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataIntegrationAssociationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataIntegrationAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataIntegrationAssociations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceError, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListDataIntegrationAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataIntegrationAssociations,
        stubs: @stubs,
        params_class: Params::ListDataIntegrationAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_integration_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of DataIntegrations in the account.</p>
    #          <note>
    #             <p>You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    # Use a different DataIntegration, or recreate the DataIntegration using the
    # <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> API.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListDataIntegrationsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListDataIntegrationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_data_integrations(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDataIntegrationsOutput
    #   resp.data.data_integrations #=> Array<DataIntegrationSummary>
    #   resp.data.data_integrations[0] #=> Types::DataIntegrationSummary
    #   resp.data.data_integrations[0].arn #=> String
    #   resp.data.data_integrations[0].name #=> String
    #   resp.data.data_integrations[0].source_uri #=> String
    #   resp.data.next_token #=> String
    #
    def list_data_integrations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDataIntegrationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDataIntegrationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDataIntegrations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceError]),
        data_parser: Parsers::ListDataIntegrations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDataIntegrations,
        stubs: @stubs,
        params_class: Params::ListDataIntegrationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_data_integrations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of event integration associations in the account. </p>
    #
    # @param [Hash] params
    #   See {Types::ListEventIntegrationAssociationsInput}.
    #
    # @option params [String] :event_integration_name
    #   <p>The name of the event integration. </p>
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListEventIntegrationAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_integration_associations(
    #     event_integration_name: 'EventIntegrationName', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEventIntegrationAssociationsOutput
    #   resp.data.event_integration_associations #=> Array<EventIntegrationAssociation>
    #   resp.data.event_integration_associations[0] #=> Types::EventIntegrationAssociation
    #   resp.data.event_integration_associations[0].event_integration_association_arn #=> String
    #   resp.data.event_integration_associations[0].event_integration_association_id #=> String
    #   resp.data.event_integration_associations[0].event_integration_name #=> String
    #   resp.data.event_integration_associations[0].client_id #=> String
    #   resp.data.event_integration_associations[0].event_bridge_rule_name #=> String
    #   resp.data.event_integration_associations[0].client_association_metadata #=> Hash<String, String>
    #   resp.data.event_integration_associations[0].client_association_metadata['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_event_integration_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventIntegrationAssociationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventIntegrationAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEventIntegrationAssociations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceError, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListEventIntegrationAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEventIntegrationAssociations,
        stubs: @stubs,
        params_class: Params::ListEventIntegrationAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_event_integration_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a paginated list of event integrations in the account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEventIntegrationsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    # @return [Types::ListEventIntegrationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_integrations(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEventIntegrationsOutput
    #   resp.data.event_integrations #=> Array<EventIntegration>
    #   resp.data.event_integrations[0] #=> Types::EventIntegration
    #   resp.data.event_integrations[0].event_integration_arn #=> String
    #   resp.data.event_integrations[0].name #=> String
    #   resp.data.event_integrations[0].description #=> String
    #   resp.data.event_integrations[0].event_filter #=> Types::EventFilter
    #   resp.data.event_integrations[0].event_filter.source #=> String
    #   resp.data.event_integrations[0].event_bridge_bus #=> String
    #   resp.data.event_integrations[0].tags #=> Hash<String, String>
    #   resp.data.event_integrations[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_event_integrations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventIntegrationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventIntegrationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEventIntegrations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceError]),
        data_parser: Parsers::ListEventIntegrations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEventIntegrations,
        stubs: @stubs,
        params_class: Params::ListEventIntegrationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_event_integrations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. </p>
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::InternalServiceError, Errors::ResourceNotFoundException]),
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

    # <p>Adds the specified tags to the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tags. </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::InternalServiceError, Errors::ResourceNotFoundException]),
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

    # <p>Removes the specified tags from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
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
      response_body = StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::InternalServiceError, Errors::ResourceNotFoundException]),
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

    # <p>Updates the description of a DataIntegration.</p>
    #          <note>
    #             <p>You cannot create a DataIntegration association for a DataIntegration that has been previously associated.
    # Use a different DataIntegration, or recreate the DataIntegration using the
    # <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration</a> API.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateDataIntegrationInput}.
    #
    # @option params [String] :identifier
    #   <p>A unique identifier for the DataIntegration.</p>
    #
    # @option params [String] :name
    #   <p>The name of the DataIntegration.</p>
    #
    # @option params [String] :description
    #   <p>A description of the DataIntegration.</p>
    #
    # @return [Types::UpdateDataIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_data_integration(
    #     identifier: 'Identifier', # required
    #     name: 'Name',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDataIntegrationOutput
    #
    def update_data_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDataIntegrationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDataIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDataIntegration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceError, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateDataIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDataIntegration,
        stubs: @stubs,
        params_class: Params::UpdateDataIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_data_integration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the description of an event integration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEventIntegrationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the event integration.</p>
    #
    # @option params [String] :description
    #   <p>The description of the event inegration.</p>
    #
    # @return [Types::UpdateEventIntegrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_integration(
    #     name: 'Name', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEventIntegrationOutput
    #
    def update_event_integration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEventIntegrationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEventIntegrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEventIntegration
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServiceError, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateEventIntegration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEventIntegration,
        stubs: @stubs,
        params_class: Params::UpdateEventIntegrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_event_integration
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
