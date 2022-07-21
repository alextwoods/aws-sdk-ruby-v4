# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::SagemakerEdge
  # An API client for AmazonSageMakerEdge
  # See {#initialize} for a full list of supported configuration options
  # <p>SageMaker Edge Manager dataplane service for communicating with active agents.</p>
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
    def initialize(config = AWS::SDK::SagemakerEdge::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Use to check if a device is registered with SageMaker Edge Manager.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeviceRegistrationInput}.
    #
    # @option params [String] :device_name
    #   <p>The unique name of the device you want to get the registration status from.</p>
    #
    # @option params [String] :device_fleet_name
    #   <p>The name of the fleet that the device belongs to.</p>
    #
    # @return [Types::GetDeviceRegistrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_registration(
    #     device_name: 'DeviceName', # required
    #     device_fleet_name: 'DeviceFleetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeviceRegistrationOutput
    #   resp.data.device_registration #=> String
    #   resp.data.cache_ttl #=> String
    #
    def get_device_registration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeviceRegistrationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeviceRegistrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeviceRegistration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException]),
        data_parser: Parsers::GetDeviceRegistration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeviceRegistration,
        stubs: @stubs,
        params_class: Params::GetDeviceRegistrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_device_registration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use to get the current status of devices registered on SageMaker Edge Manager.</p>
    #
    # @param [Hash] params
    #   See {Types::SendHeartbeatInput}.
    #
    # @option params [Array<EdgeMetric>] :agent_metrics
    #   <p>For internal use. Returns a list of SageMaker Edge Manager agent operating metrics.</p>
    #
    # @option params [Array<Model>] :models
    #   <p>Returns a list of models deployed on the the device.</p>
    #
    # @option params [String] :agent_version
    #   <p>Returns the version of the agent.</p>
    #
    # @option params [String] :device_name
    #   <p>The unique name of the device.</p>
    #
    # @option params [String] :device_fleet_name
    #   <p>The name of the fleet that the device belongs to.</p>
    #
    # @return [Types::SendHeartbeatOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_heartbeat(
    #     agent_metrics: [
    #       {
    #         dimension: 'Dimension',
    #         metric_name: 'MetricName',
    #         value: 1.0,
    #         timestamp: Time.now
    #       }
    #     ],
    #     models: [
    #       {
    #         model_name: 'ModelName',
    #         model_version: 'ModelVersion',
    #         latest_sample_time: Time.now,
    #         latest_inference: Time.now,
    #       }
    #     ],
    #     agent_version: 'AgentVersion', # required
    #     device_name: 'DeviceName', # required
    #     device_fleet_name: 'DeviceFleetName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendHeartbeatOutput
    #
    def send_heartbeat(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendHeartbeatInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendHeartbeatInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendHeartbeat
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServiceException]),
        data_parser: Parsers::SendHeartbeat
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendHeartbeat,
        stubs: @stubs,
        params_class: Params::SendHeartbeatOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_heartbeat
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
