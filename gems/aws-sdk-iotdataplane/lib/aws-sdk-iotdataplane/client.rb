# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::IoTDataPlane
  # An API client for IotMoonrakerService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>IoT data</fullname>
  #          <p>IoT data enables secure, bi-directional communication between Internet-connected things (such as sensors,
  #       actuators, embedded devices, or smart appliances) and the Amazon Web Services cloud. It implements a broker for applications and
  #       things to publish messages over HTTP (Publish) and retrieve, update, and delete shadows. A shadow is a
  #       persistent representation of your things and their state in the Amazon Web Services cloud.</p>
  #          <p>Find the endpoint address for actions in IoT data by running this CLI command:</p>
  #          <p>
  #             <code>aws iot describe-endpoint --endpoint-type iot:Data-ATS</code>
  #          </p>
  #          <p>The service name used by <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Amazon Web ServicesSignature Version 4</a>
  #       to sign requests is: <i>iotdevicegateway</i>.</p>
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
    def initialize(config = AWS::SDK::IoTDataPlane::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Deletes the shadow for the specified thing.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">DeleteThingShadow</a> action.</p>
    #          <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_DeleteThingShadow.html">DeleteThingShadow</a> in the IoT Developer Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteThingShadowInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    #
    # @option params [String] :shadow_name
    #   <p>The name of the shadow.</p>
    #
    # @return [Types::DeleteThingShadowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_thing_shadow(
    #     thing_name: 'thingName', # required
    #     shadow_name: 'shadowName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteThingShadowOutput
    #   resp.data.payload #=> String
    #
    def delete_thing_shadow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteThingShadowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteThingShadowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteThingShadow
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::InternalFailureException, Errors::InvalidRequestException, Errors::MethodNotAllowedException, Errors::ThrottlingException, Errors::UnauthorizedException, Errors::UnsupportedDocumentEncodingException]),
        data_parser: Parsers::DeleteThingShadow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteThingShadow,
        stubs: @stubs,
        params_class: Params::DeleteThingShadowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_thing_shadow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the details of a single retained message for the specified topic.</p>
    #          <p>This action returns the message payload of the retained message, which can
    #       incur messaging costs. To list only the topic names of the retained messages, call
    #       <a href="/iot/latest/developerguide/API_iotdata_ListRetainedMessages.html">ListRetainedMessages</a>.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions">GetRetainedMessage</a> action.</p>
    #          <p>For more information about messaging costs, see <a href="http://aws.amazon.com/iot-core/pricing/#Messaging">Amazon Web Services IoT Core
    #       pricing - Messaging</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRetainedMessageInput}.
    #
    # @option params [String] :topic
    #   <p>The topic name of the retained message to retrieve.</p>
    #
    # @return [Types::GetRetainedMessageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_retained_message(
    #     topic: 'topic' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRetainedMessageOutput
    #   resp.data.topic #=> String
    #   resp.data.payload #=> String
    #   resp.data.qos #=> Integer
    #   resp.data.last_modified_time #=> Integer
    #
    def get_retained_message(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRetainedMessageInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRetainedMessageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRetainedMessage
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::InternalFailureException, Errors::InvalidRequestException, Errors::MethodNotAllowedException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetRetainedMessage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRetainedMessage,
        stubs: @stubs,
        params_class: Params::GetRetainedMessageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_retained_message
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the shadow for the specified thing.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">GetThingShadow</a> action.</p>
    #          <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_GetThingShadow.html">GetThingShadow</a> in the
    #         IoT Developer Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::GetThingShadowInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    #
    # @option params [String] :shadow_name
    #   <p>The name of the shadow.</p>
    #
    # @return [Types::GetThingShadowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_thing_shadow(
    #     thing_name: 'thingName', # required
    #     shadow_name: 'shadowName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetThingShadowOutput
    #   resp.data.payload #=> String
    #
    def get_thing_shadow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetThingShadowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetThingShadowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetThingShadow
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::InternalFailureException, Errors::InvalidRequestException, Errors::MethodNotAllowedException, Errors::ThrottlingException, Errors::UnauthorizedException, Errors::UnsupportedDocumentEncodingException]),
        data_parser: Parsers::GetThingShadow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetThingShadow,
        stubs: @stubs,
        params_class: Params::GetThingShadowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_thing_shadow
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the shadows for the specified thing.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">ListNamedShadowsForThing</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNamedShadowsForThingInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    # @option params [Integer] :page_size
    #   <p>The result page size.</p>
    #
    # @return [Types::ListNamedShadowsForThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_named_shadows_for_thing(
    #     thing_name: 'thingName', # required
    #     next_token: 'nextToken',
    #     page_size: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNamedShadowsForThingOutput
    #   resp.data.results #=> Array<String>
    #   resp.data.results[0] #=> String
    #   resp.data.next_token #=> String
    #   resp.data.timestamp #=> Integer
    #
    def list_named_shadows_for_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNamedShadowsForThingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNamedShadowsForThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNamedShadowsForThing
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceUnavailableException, Errors::InternalFailureException, Errors::InvalidRequestException, Errors::MethodNotAllowedException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListNamedShadowsForThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNamedShadowsForThing,
        stubs: @stubs,
        params_class: Params::ListNamedShadowsForThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_named_shadows_for_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists summary information about the retained messages stored for the account.</p>
    #          <p>This action returns only the topic names of the retained messages. It doesn't
    #       return any message payloads. Although this action doesn't return a message payload,
    #       it can still incur messaging costs.</p>
    #          <p>To get the message payload of a retained message, call
    #       <a href="https://docs.aws.amazon.com/iot/latest/developerguide/API_iotdata_GetRetainedMessage.html">GetRetainedMessage</a>
    #       with the topic name of the retained message.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiotfleethubfordevicemanagement.html#awsiotfleethubfordevicemanagement-actions-as-permissions">ListRetainedMessages</a> action.</p>
    #          <p>For more information about messaging costs, see <a href="http://aws.amazon.com/iot-core/pricing/#Messaging">Amazon Web Services IoT Core
    #       pricing - Messaging</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRetainedMessagesInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code>
    #         value from a previous response; otherwise <b>null</b> to receive
    #         the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return at one time.</p>
    #
    # @return [Types::ListRetainedMessagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_retained_messages(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRetainedMessagesOutput
    #   resp.data.retained_topics #=> Array<RetainedMessageSummary>
    #   resp.data.retained_topics[0] #=> Types::RetainedMessageSummary
    #   resp.data.retained_topics[0].topic #=> String
    #   resp.data.retained_topics[0].payload_size #=> Integer
    #   resp.data.retained_topics[0].qos #=> Integer
    #   resp.data.retained_topics[0].last_modified_time #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_retained_messages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRetainedMessagesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRetainedMessagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRetainedMessages
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::InternalFailureException, Errors::InvalidRequestException, Errors::MethodNotAllowedException, Errors::ThrottlingException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListRetainedMessages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRetainedMessages,
        stubs: @stubs,
        params_class: Params::ListRetainedMessagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_retained_messages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Publishes an MQTT message.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">Publish</a> action.</p>
    #          <p>For more information about MQTT messages, see
    #       <a href="http://docs.aws.amazon.com/iot/latest/developerguide/mqtt.html">MQTT Protocol</a> in the
    #        IoT Developer Guide.</p>
    #          <p>For more information about messaging costs, see <a href="http://aws.amazon.com/iot-core/pricing/#Messaging">Amazon Web Services IoT Core
    #       pricing - Messaging</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PublishInput}.
    #
    # @option params [String] :topic
    #   <p>The name of the MQTT topic.</p>
    #
    # @option params [Integer] :qos
    #   <p>The Quality of Service (QoS) level.</p>
    #
    # @option params [Boolean] :retain
    #   <p>A Boolean value that determines whether to set the RETAIN flag when the message is published.</p>
    #            <p>Setting the RETAIN flag causes the message to be retained and sent to new subscribers to the topic.</p>
    #            <p>Valid values: <code>true</code> | <code>false</code>
    #            </p>
    #            <p>Default value: <code>false</code>
    #            </p>
    #
    # @option params [String] :payload
    #   <p>The message body. MQTT accepts text, binary, and empty (null) message payloads.</p>
    #            <p>Publishing an empty (null) payload with <b>retain</b> =
    #           <code>true</code> deletes the retained message identified by <b>topic</b> from Amazon Web Services IoT Core.</p>
    #
    # @return [Types::PublishOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish(
    #     topic: 'topic', # required
    #     qos: 1,
    #     retain: false,
    #     payload: 'payload'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PublishOutput
    #
    def publish(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PublishInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PublishInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Publish
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::InvalidRequestException, Errors::MethodNotAllowedException, Errors::UnauthorizedException]),
        data_parser: Parsers::Publish
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Publish,
        stubs: @stubs,
        params_class: Params::PublishOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :publish
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the shadow for the specified thing.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">UpdateThingShadow</a> action.</p>
    #          <p>For more information, see <a href="http://docs.aws.amazon.com/iot/latest/developerguide/API_UpdateThingShadow.html">UpdateThingShadow</a> in the
    #         IoT Developer Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateThingShadowInput}.
    #
    # @option params [String] :thing_name
    #   <p>The name of the thing.</p>
    #
    # @option params [String] :shadow_name
    #   <p>The name of the shadow.</p>
    #
    # @option params [String] :payload
    #   <p>The state information, in JSON format.</p>
    #
    # @return [Types::UpdateThingShadowOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_thing_shadow(
    #     thing_name: 'thingName', # required
    #     shadow_name: 'shadowName',
    #     payload: 'payload' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateThingShadowOutput
    #   resp.data.payload #=> String
    #
    def update_thing_shadow(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateThingShadowInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateThingShadowInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateThingShadow
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceUnavailableException, Errors::InternalFailureException, Errors::InvalidRequestException, Errors::MethodNotAllowedException, Errors::ThrottlingException, Errors::RequestEntityTooLargeException, Errors::UnauthorizedException, Errors::UnsupportedDocumentEncodingException, Errors::ConflictException]),
        data_parser: Parsers::UpdateThingShadow
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateThingShadow,
        stubs: @stubs,
        params_class: Params::UpdateThingShadowOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_thing_shadow
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
