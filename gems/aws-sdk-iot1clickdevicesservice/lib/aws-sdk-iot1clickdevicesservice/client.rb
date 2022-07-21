# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::IoT1ClickDevicesService
  # An API client for IoT1ClickDevicesService
  # See {#initialize} for a full list of supported configuration options
  # <p>Describes all of the AWS IoT 1-Click device-related API operations for the service.
  #  Also provides sample requests, responses, and errors for the supported web services
  #  protocols.</p>
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
    def initialize(config = AWS::SDK::IoT1ClickDevicesService::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds device(s) to your account (i.e., claim one or more devices) if and only if you
    #  received a claim code with the device(s).</p>
    #
    # @param [Hash] params
    #   See {Types::ClaimDevicesByClaimCodeInput}.
    #
    # @option params [String] :claim_code
    #   <p>The claim code, starting with "C-", as provided by the device manufacturer.</p>
    #
    # @return [Types::ClaimDevicesByClaimCodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.claim_devices_by_claim_code(
    #     claim_code: 'ClaimCode' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ClaimDevicesByClaimCodeOutput
    #   resp.data.claim_code #=> String
    #   resp.data.total #=> Integer
    #
    def claim_devices_by_claim_code(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ClaimDevicesByClaimCodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ClaimDevicesByClaimCodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ClaimDevicesByClaimCode
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ForbiddenException]),
        data_parser: Parsers::ClaimDevicesByClaimCode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ClaimDevicesByClaimCode,
        stubs: @stubs,
        params_class: Params::ClaimDevicesByClaimCodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :claim_devices_by_claim_code
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Given a device ID, returns a DescribeDeviceResponse object describing the
    #  details of the device.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDeviceInput}.
    #
    # @option params [String] :device_id
    #   <p>The unique identifier of the device.</p>
    #
    # @return [Types::DescribeDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_device(
    #     device_id: 'DeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDeviceOutput
    #   resp.data.device_description #=> Types::DeviceDescription
    #   resp.data.device_description.arn #=> String
    #   resp.data.device_description.attributes #=> Hash<String, String>
    #   resp.data.device_description.attributes['key'] #=> String
    #   resp.data.device_description.device_id #=> String
    #   resp.data.device_description.enabled #=> Boolean
    #   resp.data.device_description.remaining_life #=> Float
    #   resp.data.device_description.type #=> String
    #   resp.data.device_description.tags #=> Hash<String, String>
    #   resp.data.device_description.tags['key'] #=> String
    #
    def describe_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDevice,
        stubs: @stubs,
        params_class: Params::DescribeDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Given a device ID, finalizes the claim request for the associated device.</p><note>
    #  <p>Claiming a device consists of initiating a claim, then publishing a device event,
    #  and finalizing the claim. For a device of type button, a device event can
    #  be published by simply clicking the device.</p>
    #  </note>
    #
    # @param [Hash] params
    #   See {Types::FinalizeDeviceClaimInput}.
    #
    # @option params [String] :device_id
    #   <p>The unique identifier of the device.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of key/value pairs defining the resource tags. For example, {
    #    "tags": {"key1": "value1", "key2": "value2"} }. For more information, see <a href="https://aws.amazon.com/answers/account-management/aws-tagging-strategies/">AWS
    #    Tagging Strategies</a>.</p><p>
    #
    #    </p>
    #
    # @return [Types::FinalizeDeviceClaimOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.finalize_device_claim(
    #     device_id: 'DeviceId', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::FinalizeDeviceClaimOutput
    #   resp.data.state #=> String
    #
    def finalize_device_claim(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::FinalizeDeviceClaimInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::FinalizeDeviceClaimInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::FinalizeDeviceClaim
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceConflictException, Errors::InvalidRequestException, Errors::PreconditionFailedException, Errors::InternalFailureException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::FinalizeDeviceClaim
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::FinalizeDeviceClaim,
        stubs: @stubs,
        params_class: Params::FinalizeDeviceClaimOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :finalize_device_claim
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Given a device ID, returns the invokable methods associated with the device.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeviceMethodsInput}.
    #
    # @option params [String] :device_id
    #   <p>The unique identifier of the device.</p>
    #
    # @return [Types::GetDeviceMethodsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_methods(
    #     device_id: 'DeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeviceMethodsOutput
    #   resp.data.device_methods #=> Array<DeviceMethod>
    #   resp.data.device_methods[0] #=> Types::DeviceMethod
    #   resp.data.device_methods[0].device_type #=> String
    #   resp.data.device_methods[0].method_name #=> String
    #
    def get_device_methods(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeviceMethodsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeviceMethodsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeviceMethods
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetDeviceMethods
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeviceMethods,
        stubs: @stubs,
        params_class: Params::GetDeviceMethodsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_device_methods
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Given a device ID, initiates a claim request for the associated device.</p><note>
    #  <p>Claiming a device consists of initiating a claim, then publishing a device event,
    #  and finalizing the claim. For a device of type button, a device event can
    #  be published by simply clicking the device.</p>
    #  </note>
    #
    # @param [Hash] params
    #   See {Types::InitiateDeviceClaimInput}.
    #
    # @option params [String] :device_id
    #   <p>The unique identifier of the device.</p>
    #
    # @return [Types::InitiateDeviceClaimOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_device_claim(
    #     device_id: 'DeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InitiateDeviceClaimOutput
    #   resp.data.state #=> String
    #
    def initiate_device_claim(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InitiateDeviceClaimInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InitiateDeviceClaimInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InitiateDeviceClaim
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceConflictException, Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::InitiateDeviceClaim
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InitiateDeviceClaim,
        stubs: @stubs,
        params_class: Params::InitiateDeviceClaimOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :initiate_device_claim
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Given a device ID, issues a request to invoke a named device method (with possible
    #  parameters). See the "Example POST" code snippet below.</p>
    #
    # @param [Hash] params
    #   See {Types::InvokeDeviceMethodInput}.
    #
    # @option params [String] :device_id
    #   <p>The unique identifier of the device.</p>
    #
    # @option params [DeviceMethod] :device_method
    #   <p>The device method to invoke.</p>
    #
    # @option params [String] :device_method_parameters
    #   <p>A JSON encoded string containing the device method request parameters.</p>
    #
    # @return [Types::InvokeDeviceMethodOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_device_method(
    #     device_id: 'DeviceId', # required
    #     device_method: {
    #       device_type: 'DeviceType',
    #       method_name: 'MethodName'
    #     },
    #     device_method_parameters: 'DeviceMethodParameters'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InvokeDeviceMethodOutput
    #   resp.data.device_method_response #=> String
    #
    def invoke_device_method(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InvokeDeviceMethodInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InvokeDeviceMethodInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InvokeDeviceMethod
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceConflictException, Errors::InvalidRequestException, Errors::RangeNotSatisfiableException, Errors::PreconditionFailedException, Errors::InternalFailureException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::InvokeDeviceMethod
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InvokeDeviceMethod,
        stubs: @stubs,
        params_class: Params::InvokeDeviceMethodOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :invoke_device_method
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Using a device ID, returns a DeviceEventsResponse object containing an
    #  array of events for the device.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDeviceEventsInput}.
    #
    # @option params [String] :device_id
    #   <p>The unique identifier of the device.</p>
    #
    # @option params [Time] :from_time_stamp
    #   <p>The start date for the device event query, in ISO8061 format. For example,
    #    2018-03-28T15:45:12.880Z
    #    </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per request. If not set, a default value of
    #    100 is used.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    # @option params [Time] :to_time_stamp
    #   <p>The end date for the device event query, in ISO8061 format. For example,
    #    2018-03-28T15:45:12.880Z
    #    </p>
    #
    # @return [Types::ListDeviceEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_events(
    #     device_id: 'DeviceId', # required
    #     from_time_stamp: Time.now, # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     to_time_stamp: Time.now # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeviceEventsOutput
    #   resp.data.events #=> Array<DeviceEvent>
    #   resp.data.events[0] #=> Types::DeviceEvent
    #   resp.data.events[0].device #=> Types::Device
    #   resp.data.events[0].device.attributes #=> Types::Attributes
    #   resp.data.events[0].device.device_id #=> String
    #   resp.data.events[0].device.type #=> String
    #   resp.data.events[0].std_event #=> String
    #   resp.data.next_token #=> String
    #
    def list_device_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeviceEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeviceEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeviceEvents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::RangeNotSatisfiableException, Errors::InternalFailureException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListDeviceEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeviceEvents,
        stubs: @stubs,
        params_class: Params::ListDeviceEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_device_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the 1-Click compatible devices associated with your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDevicesInput}.
    #
    # @option params [String] :device_type
    #   <p>The type of the device, such as "button".</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per request. If not set, a default value of
    #    100 is used.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to retrieve the next set of results.</p>
    #
    # @return [Types::ListDevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices(
    #     device_type: 'DeviceType',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDevicesOutput
    #   resp.data.devices #=> Array<DeviceDescription>
    #   resp.data.devices[0] #=> Types::DeviceDescription
    #   resp.data.devices[0].arn #=> String
    #   resp.data.devices[0].attributes #=> Hash<String, String>
    #   resp.data.devices[0].attributes['key'] #=> String
    #   resp.data.devices[0].device_id #=> String
    #   resp.data.devices[0].enabled #=> Boolean
    #   resp.data.devices[0].remaining_life #=> Float
    #   resp.data.devices[0].type #=> String
    #   resp.data.devices[0].tags #=> Hash<String, String>
    #   resp.data.devices[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDevicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDevices
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::RangeNotSatisfiableException, Errors::InternalFailureException]),
        data_parser: Parsers::ListDevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDevices,
        stubs: @stubs,
        params_class: Params::ListDevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags associated with the specified resource ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalFailureException, Errors::ResourceNotFoundException]),
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

    # <p>Adds or updates the tags associated with the resource ARN. See <a href="https://docs.aws.amazon.com/iot-1-click/latest/developerguide/1click-appendix.html#1click-limits">AWS IoT 1-Click Service Limits</a> for the maximum number of tags allowed per
    #  resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A collection of key/value pairs defining the resource tags. For example, {
    #    "tags": {"key1": "value1", "key2": "value2"} }. For more information, see <a href="https://aws.amazon.com/answers/account-management/aws-tagging-strategies/">AWS
    #    Tagging Strategies</a>.</p><p>
    #
    #    </p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException]),
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

    # <p>Disassociates a device from your AWS account using its device ID.</p>
    #
    # @param [Hash] params
    #   See {Types::UnclaimDeviceInput}.
    #
    # @option params [String] :device_id
    #   <p>The unique identifier of the device.</p>
    #
    # @return [Types::UnclaimDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unclaim_device(
    #     device_id: 'DeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UnclaimDeviceOutput
    #   resp.data.state #=> String
    #
    def unclaim_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UnclaimDeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UnclaimDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UnclaimDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UnclaimDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UnclaimDevice,
        stubs: @stubs,
        params_class: Params::UnclaimDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :unclaim_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Using tag keys, deletes the tags (key/value pairs) associated with the specified
    #  resource ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A collections of tag keys. For example, {"key1","key2"}</p>
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException]),
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

    # <p>Using a Boolean value (true or false), this operation
    #  enables or disables the device given a device ID.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDeviceStateInput}.
    #
    # @option params [String] :device_id
    #   <p>The unique identifier of the device.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>If true, the device is enabled. If false, the device is
    #    disabled.</p>
    #
    # @return [Types::UpdateDeviceStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_state(
    #     device_id: 'DeviceId', # required
    #     enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDeviceStateOutput
    #
    def update_device_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDeviceStateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDeviceStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDeviceState
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::InternalFailureException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateDeviceState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDeviceState,
        stubs: @stubs,
        params_class: Params::UpdateDeviceStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_device_state
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
