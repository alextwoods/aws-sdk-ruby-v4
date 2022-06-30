# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::IoTWireless
  # An API client for iotwireless
  # See {#initialize} for a full list of supported configuration options
  # <p>AWS IoT Wireless provides bi-directional communication between internet-connected wireless
  # 	        devices and the AWS Cloud. To onboard both LoRaWAN and Sidewalk devices to AWS IoT, use the
  # 	        IoT Wireless API. These wireless devices use the Low Power Wide Area Networking (LPWAN)
  # 	        communication protocol to communicate with AWS IoT.</p>
  # 	        <p>Using the API, you can perform create, read, update, and delete operations for your wireless
  # 	        devices, gateways, destinations, and profiles. After onboarding your devices, you
  # 	        can use the API operations to set log levels and monitor your devices with CloudWatch.</p>
  # 	        <p>You can also use the API operations to create multicast groups and schedule a multicast session for
  # 	        sending a downlink message to devices in the group. By using Firmware Updates Over-The-Air
  # 	        (FUOTA) API operations, you can create a FUOTA task and schedule a session to update the firmware
  # 	        of individual devices or an entire group of devices in a multicast group.</p>
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
    def initialize(config = AWS::SDK::IoTWireless::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a partner account with your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateAwsAccountWithPartnerAccountInput}.
    #
    # @option params [SidewalkAccountInfo] :sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    # @return [Types::AssociateAwsAccountWithPartnerAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_aws_account_with_partner_account(
    #     sidewalk: {
    #       amazon_id: 'AmazonId',
    #       app_server_private_key: 'AppServerPrivateKey'
    #     }, # required
    #     client_request_token: 'ClientRequestToken',
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
    #   resp.data #=> Types::AssociateAwsAccountWithPartnerAccountOutput
    #   resp.data.sidewalk #=> Types::SidewalkAccountInfo
    #   resp.data.sidewalk.amazon_id #=> String
    #   resp.data.sidewalk.app_server_private_key #=> String
    #   resp.data.arn #=> String
    #
    def associate_aws_account_with_partner_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateAwsAccountWithPartnerAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateAwsAccountWithPartnerAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateAwsAccountWithPartnerAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::AssociateAwsAccountWithPartnerAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateAwsAccountWithPartnerAccount,
        stubs: @stubs,
        params_class: Params::AssociateAwsAccountWithPartnerAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_aws_account_with_partner_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associate a multicast group with a FUOTA task.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateMulticastGroupWithFuotaTaskInput}.
    #
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    #
    # @option params [String] :multicast_group_id
    #   <p>The ID of the multicast group.</p>
    #
    # @return [Types::AssociateMulticastGroupWithFuotaTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_multicast_group_with_fuota_task(
    #     id: 'Id', # required
    #     multicast_group_id: 'MulticastGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateMulticastGroupWithFuotaTaskOutput
    #
    def associate_multicast_group_with_fuota_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateMulticastGroupWithFuotaTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateMulticastGroupWithFuotaTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateMulticastGroupWithFuotaTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::AssociateMulticastGroupWithFuotaTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateMulticastGroupWithFuotaTask,
        stubs: @stubs,
        params_class: Params::AssociateMulticastGroupWithFuotaTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_multicast_group_with_fuota_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associate a wireless device with a FUOTA task.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateWirelessDeviceWithFuotaTaskInput}.
    #
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    #
    # @option params [String] :wireless_device_id
    #   <p>The ID of the wireless device.</p>
    #
    # @return [Types::AssociateWirelessDeviceWithFuotaTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_wireless_device_with_fuota_task(
    #     id: 'Id', # required
    #     wireless_device_id: 'WirelessDeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateWirelessDeviceWithFuotaTaskOutput
    #
    def associate_wireless_device_with_fuota_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateWirelessDeviceWithFuotaTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateWirelessDeviceWithFuotaTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateWirelessDeviceWithFuotaTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::AssociateWirelessDeviceWithFuotaTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateWirelessDeviceWithFuotaTask,
        stubs: @stubs,
        params_class: Params::AssociateWirelessDeviceWithFuotaTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_wireless_device_with_fuota_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a wireless device with a multicast group.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateWirelessDeviceWithMulticastGroupInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    #
    # @option params [String] :wireless_device_id
    #   <p>The ID of the wireless device.</p>
    #
    # @return [Types::AssociateWirelessDeviceWithMulticastGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_wireless_device_with_multicast_group(
    #     id: 'Id', # required
    #     wireless_device_id: 'WirelessDeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateWirelessDeviceWithMulticastGroupOutput
    #
    def associate_wireless_device_with_multicast_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateWirelessDeviceWithMulticastGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateWirelessDeviceWithMulticastGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateWirelessDeviceWithMulticastGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::AssociateWirelessDeviceWithMulticastGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateWirelessDeviceWithMulticastGroup,
        stubs: @stubs,
        params_class: Params::AssociateWirelessDeviceWithMulticastGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_wireless_device_with_multicast_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a wireless device with a thing.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateWirelessDeviceWithThingInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    #
    # @option params [String] :thing_arn
    #   <p>The ARN of the thing to associate with the wireless device.</p>
    #
    # @return [Types::AssociateWirelessDeviceWithThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_wireless_device_with_thing(
    #     id: 'Id', # required
    #     thing_arn: 'ThingArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateWirelessDeviceWithThingOutput
    #
    def associate_wireless_device_with_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateWirelessDeviceWithThingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateWirelessDeviceWithThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateWirelessDeviceWithThing
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::AssociateWirelessDeviceWithThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateWirelessDeviceWithThing,
        stubs: @stubs,
        params_class: Params::AssociateWirelessDeviceWithThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_wireless_device_with_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a wireless gateway with a certificate.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateWirelessGatewayWithCertificateInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    #
    # @option params [String] :iot_certificate_id
    #   <p>The ID of the certificate to associate with the wireless gateway.</p>
    #
    # @return [Types::AssociateWirelessGatewayWithCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_wireless_gateway_with_certificate(
    #     id: 'Id', # required
    #     iot_certificate_id: 'IotCertificateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateWirelessGatewayWithCertificateOutput
    #   resp.data.iot_certificate_id #=> String
    #
    def associate_wireless_gateway_with_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateWirelessGatewayWithCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateWirelessGatewayWithCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateWirelessGatewayWithCertificate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::AssociateWirelessGatewayWithCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateWirelessGatewayWithCertificate,
        stubs: @stubs,
        params_class: Params::AssociateWirelessGatewayWithCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_wireless_gateway_with_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a wireless gateway with a thing.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateWirelessGatewayWithThingInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    #
    # @option params [String] :thing_arn
    #   <p>The ARN of the thing to associate with the wireless gateway.</p>
    #
    # @return [Types::AssociateWirelessGatewayWithThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_wireless_gateway_with_thing(
    #     id: 'Id', # required
    #     thing_arn: 'ThingArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateWirelessGatewayWithThingOutput
    #
    def associate_wireless_gateway_with_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateWirelessGatewayWithThingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateWirelessGatewayWithThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateWirelessGatewayWithThing
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::AssociateWirelessGatewayWithThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateWirelessGatewayWithThing,
        stubs: @stubs,
        params_class: Params::AssociateWirelessGatewayWithThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_wireless_gateway_with_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels an existing multicast group session.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelMulticastGroupSessionInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    #
    # @return [Types::CancelMulticastGroupSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_multicast_group_session(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelMulticastGroupSessionOutput
    #
    def cancel_multicast_group_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelMulticastGroupSessionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelMulticastGroupSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelMulticastGroupSession
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CancelMulticastGroupSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelMulticastGroupSession,
        stubs: @stubs,
        params_class: Params::CancelMulticastGroupSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_multicast_group_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new destination that maps a device message to an AWS IoT rule.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDestinationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the new resource.</p>
    #
    # @option params [String] :expression_type
    #   <p>The type of value in <code>Expression</code>.</p>
    #
    # @option params [String] :expression
    #   <p>The rule name or topic rule to send messages to.</p>
    #
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM Role that authorizes the destination.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to attach to the new destination. Tags are metadata that you can use to manage a resource.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>
    #
    # @return [Types::CreateDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_destination(
    #     name: 'Name', # required
    #     expression_type: 'RuleName', # required - accepts ["RuleName", "MqttTopic"]
    #     expression: 'Expression', # required
    #     description: 'Description',
    #     role_arn: 'RoleArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDestinationOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #
    def create_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDestination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDestination,
        stubs: @stubs,
        params_class: Params::CreateDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new device profile.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateDeviceProfileInput}.
    #
    # @option params [String] :name
    #   <p>The name of the new resource.</p>
    #
    # @option params [LoRaWANDeviceProfile] :lo_ra_wan
    #   <p>The device profile information to use to create the device profile.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to attach to the new device profile. Tags are metadata that you can use to manage a resource.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>
    #
    # @return [Types::CreateDeviceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_device_profile(
    #     name: 'Name',
    #     lo_ra_wan: {
    #       supports_class_b: false,
    #       class_b_timeout: 1,
    #       ping_slot_period: 1,
    #       ping_slot_dr: 1,
    #       ping_slot_freq: 1,
    #       supports_class_c: false,
    #       class_c_timeout: 1,
    #       mac_version: 'MacVersion',
    #       reg_params_revision: 'RegParamsRevision',
    #       rx_delay1: 1,
    #       rx_dr_offset1: 1,
    #       rx_data_rate2: 1,
    #       rx_freq2: 1,
    #       factory_preset_freqs_list: [
    #         1
    #       ],
    #       max_eirp: 1,
    #       max_duty_cycle: 1,
    #       rf_region: 'RfRegion',
    #       supports_join: false,
    #       supports32_bit_f_cnt: false
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateDeviceProfileOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #
    def create_device_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateDeviceProfileInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateDeviceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateDeviceProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateDeviceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateDeviceProfile,
        stubs: @stubs,
        params_class: Params::CreateDeviceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_device_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a FUOTA task.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFuotaTaskInput}.
    #
    # @option params [String] :name
    #   <p>The name of a FUOTA task.</p>
    #
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request.</p>
    #
    # @option params [LoRaWANFuotaTask] :lo_ra_wan
    #   <p>The LoRaWAN information used with a FUOTA task.</p>
    #
    # @option params [String] :firmware_update_image
    #   <p>The S3 URI points to a firmware update image that is to be used with a FUOTA task.</p>
    #
    # @option params [String] :firmware_update_role
    #   <p>The firmware update role that is to be used with a FUOTA task.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    # @return [Types::CreateFuotaTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_fuota_task(
    #     name: 'Name',
    #     description: 'Description',
    #     client_request_token: 'ClientRequestToken',
    #     lo_ra_wan: {
    #       rf_region: 'EU868' # accepts ["EU868", "US915", "AU915", "AS923-1"]
    #     },
    #     firmware_update_image: 'FirmwareUpdateImage', # required
    #     firmware_update_role: 'FirmwareUpdateRole', # required
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
    #   resp.data #=> Types::CreateFuotaTaskOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #
    def create_fuota_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFuotaTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFuotaTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFuotaTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateFuotaTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFuotaTask,
        stubs: @stubs,
        params_class: Params::CreateFuotaTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_fuota_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a multicast group.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMulticastGroupInput}.
    #
    # @option params [String] :name
    #   <p>The name of the multicast group.</p>
    #
    # @option params [String] :description
    #   <p>The description of the multicast group.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the
    #               same token as a resource that already exists, an exception occurs. If you omit this value,
    #               AWS SDKs will automatically generate a unique client request. </p>
    #
    # @option params [LoRaWANMulticast] :lo_ra_wan
    #   <p>The LoRaWAN information that is to be used with the multicast group.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    # @return [Types::CreateMulticastGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_multicast_group(
    #     name: 'Name',
    #     description: 'Description',
    #     client_request_token: 'ClientRequestToken',
    #     lo_ra_wan: {
    #       rf_region: 'EU868', # accepts ["EU868", "US915", "AU915", "AS923-1"]
    #       dl_class: 'ClassB' # accepts ["ClassB", "ClassC"]
    #     }, # required
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
    #   resp.data #=> Types::CreateMulticastGroupOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #
    def create_multicast_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMulticastGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMulticastGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMulticastGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateMulticastGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMulticastGroup,
        stubs: @stubs,
        params_class: Params::CreateMulticastGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_multicast_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new network analyzer configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateNetworkAnalyzerConfigurationInput}.
    #
    # @option params [String] :name
    #   <p>Name of the network analyzer configuration.</p>
    #
    # @option params [TraceContent] :trace_content
    #   <p>Trace content for your wireless gateway and wireless device resources.</p>
    #
    # @option params [Array<String>] :wireless_devices
    #   <p>Wireless device resources to add to the network analyzer configuration. Provide the <code>WirelessDeviceId</code> of the resource to add in the input array.</p>
    #
    # @option params [Array<String>] :wireless_gateways
    #   <p>Wireless gateway resources to add to the network analyzer configuration. Provide the <code>WirelessGatewayId</code> of the resource to add in the input array.</p>
    #
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request.</p>
    #
    # @return [Types::CreateNetworkAnalyzerConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network_analyzer_configuration(
    #     name: 'Name', # required
    #     trace_content: {
    #       wireless_device_frame_info: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #       log_level: 'INFO' # accepts ["INFO", "ERROR", "DISABLED"]
    #     },
    #     wireless_devices: [
    #       'member'
    #     ],
    #     wireless_gateways: [
    #       'member'
    #     ],
    #     description: 'Description',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateNetworkAnalyzerConfigurationOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #
    def create_network_analyzer_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateNetworkAnalyzerConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateNetworkAnalyzerConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateNetworkAnalyzerConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateNetworkAnalyzerConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateNetworkAnalyzerConfiguration,
        stubs: @stubs,
        params_class: Params::CreateNetworkAnalyzerConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_network_analyzer_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new service profile.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateServiceProfileInput}.
    #
    # @option params [String] :name
    #   <p>The name of the new resource.</p>
    #
    # @option params [LoRaWANServiceProfile] :lo_ra_wan
    #   <p>The service profile information to use to create the service profile.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to attach to the new service profile. Tags are metadata that you can use to manage a resource.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>
    #
    # @return [Types::CreateServiceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_profile(
    #     name: 'Name',
    #     lo_ra_wan: {
    #       add_gw_metadata: false
    #     },
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateServiceProfileOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #
    def create_service_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateServiceProfileInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateServiceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateServiceProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateServiceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateServiceProfile,
        stubs: @stubs,
        params_class: Params::CreateServiceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_service_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provisions a wireless device.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWirelessDeviceInput}.
    #
    # @option params [String] :type
    #   <p>The wireless device type.</p>
    #
    # @option params [String] :name
    #   <p>The name of the new resource.</p>
    #
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    #
    # @option params [String] :destination_name
    #   <p>The name of the destination to assign to the new wireless device.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>
    #
    # @option params [LoRaWANDevice] :lo_ra_wan
    #   <p>The device configuration information to use to create the wireless device.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to attach to the new wireless device. Tags are metadata that you can use to manage a resource.</p>
    #
    # @return [Types::CreateWirelessDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_wireless_device(
    #     type: 'Sidewalk', # required - accepts ["Sidewalk", "LoRaWAN"]
    #     name: 'Name',
    #     description: 'Description',
    #     destination_name: 'DestinationName', # required
    #     client_request_token: 'ClientRequestToken',
    #     lo_ra_wan: {
    #       dev_eui: 'DevEui',
    #       device_profile_id: 'DeviceProfileId',
    #       service_profile_id: 'ServiceProfileId',
    #       otaa_v1_1: {
    #         app_key: 'AppKey',
    #         nwk_key: 'NwkKey',
    #         join_eui: 'JoinEui'
    #       },
    #       otaa_v1_0_x: {
    #         app_key: 'AppKey',
    #         app_eui: 'AppEui',
    #         gen_app_key: 'GenAppKey'
    #       },
    #       abp_v1_1: {
    #         dev_addr: 'DevAddr',
    #         session_keys: {
    #           f_nwk_s_int_key: 'FNwkSIntKey',
    #           s_nwk_s_int_key: 'SNwkSIntKey',
    #           nwk_s_enc_key: 'NwkSEncKey',
    #           app_s_key: 'AppSKey'
    #         },
    #         f_cnt_start: 1
    #       },
    #       abp_v1_0_x: {
    #         dev_addr: 'DevAddr',
    #         session_keys: {
    #           nwk_s_key: 'NwkSKey',
    #           app_s_key: 'AppSKey'
    #         },
    #         f_cnt_start: 1
    #       },
    #       f_ports: {
    #         fuota: 1,
    #         multicast: 1,
    #         clock_sync: 1
    #       }
    #     },
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
    #   resp.data #=> Types::CreateWirelessDeviceOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #
    def create_wireless_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWirelessDeviceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWirelessDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWirelessDevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateWirelessDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWirelessDevice,
        stubs: @stubs,
        params_class: Params::CreateWirelessDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_wireless_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provisions a wireless gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWirelessGatewayInput}.
    #
    # @option params [String] :name
    #   <p>The name of the new resource.</p>
    #
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    #
    # @option params [LoRaWANGateway] :lo_ra_wan
    #   <p>The gateway configuration information to use to create the wireless gateway.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to attach to the new wireless gateway. Tags are metadata that you can use to manage a resource.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>
    #
    # @return [Types::CreateWirelessGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_wireless_gateway(
    #     name: 'Name',
    #     description: 'Description',
    #     lo_ra_wan: {
    #       gateway_eui: 'GatewayEui',
    #       rf_region: 'RfRegion',
    #       join_eui_filters: [
    #         [
    #           'member'
    #         ]
    #       ],
    #       net_id_filters: [
    #         'member'
    #       ],
    #       sub_bands: [
    #         1
    #       ]
    #     }, # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWirelessGatewayOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #
    def create_wireless_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWirelessGatewayInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWirelessGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWirelessGateway
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateWirelessGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWirelessGateway,
        stubs: @stubs,
        params_class: Params::CreateWirelessGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_wireless_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a task for a wireless gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWirelessGatewayTaskInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    #
    # @option params [String] :wireless_gateway_task_definition_id
    #   <p>The ID of the WirelessGatewayTaskDefinition.</p>
    #
    # @return [Types::CreateWirelessGatewayTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_wireless_gateway_task(
    #     id: 'Id', # required
    #     wireless_gateway_task_definition_id: 'WirelessGatewayTaskDefinitionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWirelessGatewayTaskOutput
    #   resp.data.wireless_gateway_task_definition_id #=> String
    #   resp.data.status #=> String, one of ["PENDING", "IN_PROGRESS", "FIRST_RETRY", "SECOND_RETRY", "COMPLETED", "FAILED"]
    #
    def create_wireless_gateway_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWirelessGatewayTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWirelessGatewayTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWirelessGatewayTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateWirelessGatewayTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWirelessGatewayTask,
        stubs: @stubs,
        params_class: Params::CreateWirelessGatewayTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_wireless_gateway_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a gateway task definition.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateWirelessGatewayTaskDefinitionInput}.
    #
    # @option params [Boolean] :auto_create_tasks
    #   <p>Whether to automatically create tasks using this task definition for all gateways with the specified current version. If <code>false</code>, the task must me created by calling <code>CreateWirelessGatewayTask</code>.</p>
    #
    # @option params [String] :name
    #   <p>The name of the new resource.</p>
    #
    # @option params [UpdateWirelessGatewayTaskCreate] :update
    #   <p>Information about the gateways to update.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    # @return [Types::CreateWirelessGatewayTaskDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_wireless_gateway_task_definition(
    #     auto_create_tasks: false, # required
    #     name: 'Name',
    #     update: {
    #       update_data_source: 'UpdateDataSource',
    #       update_data_role: 'UpdateDataRole',
    #       lo_ra_wan: {
    #         update_signature: 'UpdateSignature',
    #         sig_key_crc: 1,
    #         current_version: {
    #           package_version: 'PackageVersion',
    #           model: 'Model',
    #           station: 'Station'
    #         },
    #       }
    #     },
    #     client_request_token: 'ClientRequestToken',
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
    #   resp.data #=> Types::CreateWirelessGatewayTaskDefinitionOutput
    #   resp.data.id #=> String
    #   resp.data.arn #=> String
    #
    def create_wireless_gateway_task_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWirelessGatewayTaskDefinitionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWirelessGatewayTaskDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWirelessGatewayTaskDefinition
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::CreateWirelessGatewayTaskDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWirelessGatewayTaskDefinition,
        stubs: @stubs,
        params_class: Params::CreateWirelessGatewayTaskDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_wireless_gateway_task_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a destination.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDestinationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the resource to delete.</p>
    #
    # @return [Types::DeleteDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_destination(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDestinationOutput
    #
    def delete_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDestination,
        stubs: @stubs,
        params_class: Params::DeleteDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a device profile.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDeviceProfileInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to delete.</p>
    #
    # @return [Types::DeleteDeviceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device_profile(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDeviceProfileOutput
    #
    def delete_device_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDeviceProfileInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDeviceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDeviceProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteDeviceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDeviceProfile,
        stubs: @stubs,
        params_class: Params::DeleteDeviceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_device_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a FUOTA task.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFuotaTaskInput}.
    #
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    #
    # @return [Types::DeleteFuotaTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_fuota_task(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFuotaTaskOutput
    #
    def delete_fuota_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFuotaTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFuotaTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFuotaTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteFuotaTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFuotaTask,
        stubs: @stubs,
        params_class: Params::DeleteFuotaTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_fuota_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a multicast group if it is not in use by a fuota task.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMulticastGroupInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    #
    # @return [Types::DeleteMulticastGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_multicast_group(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMulticastGroupOutput
    #
    def delete_multicast_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMulticastGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMulticastGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMulticastGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteMulticastGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMulticastGroup,
        stubs: @stubs,
        params_class: Params::DeleteMulticastGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_multicast_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a network analyzer configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteNetworkAnalyzerConfigurationInput}.
    #
    # @option params [String] :configuration_name
    #   <p>Name of the network analyzer configuration.</p>
    #
    # @return [Types::DeleteNetworkAnalyzerConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network_analyzer_configuration(
    #     configuration_name: 'ConfigurationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNetworkAnalyzerConfigurationOutput
    #
    def delete_network_analyzer_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNetworkAnalyzerConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNetworkAnalyzerConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNetworkAnalyzerConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteNetworkAnalyzerConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNetworkAnalyzerConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteNetworkAnalyzerConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_network_analyzer_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Remove queued messages from the downlink queue.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteQueuedMessagesInput}.
    #
    # @option params [String] :id
    #   <p>The ID of a given wireless device for which downlink messages will be deleted.</p>
    #
    # @option params [String] :message_id
    #   <p>If message ID is <code>"*"</code>, it cleares the entire downlink queue for a given
    #               device, specified by the wireless device ID. Otherwise, the downlink message with the
    #               specified message ID will be deleted.</p>
    #
    # @option params [String] :wireless_device_type
    #   <p>The wireless device type, which can be either Sidewalk or LoRaWAN.</p>
    #
    # @return [Types::DeleteQueuedMessagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_queued_messages(
    #     id: 'Id', # required
    #     message_id: 'MessageId', # required
    #     wireless_device_type: 'Sidewalk' # accepts ["Sidewalk", "LoRaWAN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteQueuedMessagesOutput
    #
    def delete_queued_messages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteQueuedMessagesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteQueuedMessagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteQueuedMessages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteQueuedMessages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteQueuedMessages,
        stubs: @stubs,
        params_class: Params::DeleteQueuedMessagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_queued_messages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a service profile.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteServiceProfileInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to delete.</p>
    #
    # @return [Types::DeleteServiceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_profile(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServiceProfileOutput
    #
    def delete_service_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServiceProfileInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServiceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteServiceProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteServiceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteServiceProfile,
        stubs: @stubs,
        params_class: Params::DeleteServiceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_service_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a wireless device.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWirelessDeviceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to delete.</p>
    #
    # @return [Types::DeleteWirelessDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_wireless_device(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWirelessDeviceOutput
    #
    def delete_wireless_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWirelessDeviceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWirelessDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWirelessDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteWirelessDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWirelessDevice,
        stubs: @stubs,
        params_class: Params::DeleteWirelessDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_wireless_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a wireless gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWirelessGatewayInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to delete.</p>
    #
    # @return [Types::DeleteWirelessGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_wireless_gateway(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWirelessGatewayOutput
    #
    def delete_wireless_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWirelessGatewayInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWirelessGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWirelessGateway
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteWirelessGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWirelessGateway,
        stubs: @stubs,
        params_class: Params::DeleteWirelessGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_wireless_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a wireless gateway task.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWirelessGatewayTaskInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to delete.</p>
    #
    # @return [Types::DeleteWirelessGatewayTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_wireless_gateway_task(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWirelessGatewayTaskOutput
    #
    def delete_wireless_gateway_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWirelessGatewayTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWirelessGatewayTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWirelessGatewayTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteWirelessGatewayTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWirelessGatewayTask,
        stubs: @stubs,
        params_class: Params::DeleteWirelessGatewayTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_wireless_gateway_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a wireless gateway task definition. Deleting this task definition does not affect tasks that are currently in progress.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWirelessGatewayTaskDefinitionInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to delete.</p>
    #
    # @return [Types::DeleteWirelessGatewayTaskDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_wireless_gateway_task_definition(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWirelessGatewayTaskDefinitionOutput
    #
    def delete_wireless_gateway_task_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWirelessGatewayTaskDefinitionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWirelessGatewayTaskDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWirelessGatewayTaskDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteWirelessGatewayTaskDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWirelessGatewayTaskDefinition,
        stubs: @stubs,
        params_class: Params::DeleteWirelessGatewayTaskDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_wireless_gateway_task_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates your AWS account from a partner account. If <code>PartnerAccountId</code> and <code>PartnerType</code> are <code>null</code>, disassociates your AWS account from all partner accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateAwsAccountFromPartnerAccountInput}.
    #
    # @option params [String] :partner_account_id
    #   <p>The partner account ID to disassociate from the AWS account.</p>
    #
    # @option params [String] :partner_type
    #   <p>The partner type.</p>
    #
    # @return [Types::DisassociateAwsAccountFromPartnerAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_aws_account_from_partner_account(
    #     partner_account_id: 'PartnerAccountId', # required
    #     partner_type: 'Sidewalk' # required - accepts ["Sidewalk"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateAwsAccountFromPartnerAccountOutput
    #
    def disassociate_aws_account_from_partner_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateAwsAccountFromPartnerAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateAwsAccountFromPartnerAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateAwsAccountFromPartnerAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateAwsAccountFromPartnerAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateAwsAccountFromPartnerAccount,
        stubs: @stubs,
        params_class: Params::DisassociateAwsAccountFromPartnerAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_aws_account_from_partner_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a multicast group from a fuota task.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateMulticastGroupFromFuotaTaskInput}.
    #
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    #
    # @option params [String] :multicast_group_id
    #   <p>The ID of the multicast group.</p>
    #
    # @return [Types::DisassociateMulticastGroupFromFuotaTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_multicast_group_from_fuota_task(
    #     id: 'Id', # required
    #     multicast_group_id: 'MulticastGroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateMulticastGroupFromFuotaTaskOutput
    #
    def disassociate_multicast_group_from_fuota_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateMulticastGroupFromFuotaTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateMulticastGroupFromFuotaTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateMulticastGroupFromFuotaTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateMulticastGroupFromFuotaTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateMulticastGroupFromFuotaTask,
        stubs: @stubs,
        params_class: Params::DisassociateMulticastGroupFromFuotaTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_multicast_group_from_fuota_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a wireless device from a FUOTA task.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateWirelessDeviceFromFuotaTaskInput}.
    #
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    #
    # @option params [String] :wireless_device_id
    #   <p>The ID of the wireless device.</p>
    #
    # @return [Types::DisassociateWirelessDeviceFromFuotaTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_wireless_device_from_fuota_task(
    #     id: 'Id', # required
    #     wireless_device_id: 'WirelessDeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateWirelessDeviceFromFuotaTaskOutput
    #
    def disassociate_wireless_device_from_fuota_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateWirelessDeviceFromFuotaTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateWirelessDeviceFromFuotaTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateWirelessDeviceFromFuotaTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateWirelessDeviceFromFuotaTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateWirelessDeviceFromFuotaTask,
        stubs: @stubs,
        params_class: Params::DisassociateWirelessDeviceFromFuotaTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_wireless_device_from_fuota_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a wireless device from a multicast group.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateWirelessDeviceFromMulticastGroupInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    #
    # @option params [String] :wireless_device_id
    #   <p>The ID of the wireless device.</p>
    #
    # @return [Types::DisassociateWirelessDeviceFromMulticastGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_wireless_device_from_multicast_group(
    #     id: 'Id', # required
    #     wireless_device_id: 'WirelessDeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateWirelessDeviceFromMulticastGroupOutput
    #
    def disassociate_wireless_device_from_multicast_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateWirelessDeviceFromMulticastGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateWirelessDeviceFromMulticastGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateWirelessDeviceFromMulticastGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateWirelessDeviceFromMulticastGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateWirelessDeviceFromMulticastGroup,
        stubs: @stubs,
        params_class: Params::DisassociateWirelessDeviceFromMulticastGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_wireless_device_from_multicast_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a wireless device from its currently associated thing.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateWirelessDeviceFromThingInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    #
    # @return [Types::DisassociateWirelessDeviceFromThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_wireless_device_from_thing(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateWirelessDeviceFromThingOutput
    #
    def disassociate_wireless_device_from_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateWirelessDeviceFromThingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateWirelessDeviceFromThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateWirelessDeviceFromThing
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateWirelessDeviceFromThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateWirelessDeviceFromThing,
        stubs: @stubs,
        params_class: Params::DisassociateWirelessDeviceFromThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_wireless_device_from_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a wireless gateway from its currently associated certificate.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateWirelessGatewayFromCertificateInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    #
    # @return [Types::DisassociateWirelessGatewayFromCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_wireless_gateway_from_certificate(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateWirelessGatewayFromCertificateOutput
    #
    def disassociate_wireless_gateway_from_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateWirelessGatewayFromCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateWirelessGatewayFromCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateWirelessGatewayFromCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateWirelessGatewayFromCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateWirelessGatewayFromCertificate,
        stubs: @stubs,
        params_class: Params::DisassociateWirelessGatewayFromCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_wireless_gateway_from_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a wireless gateway from its currently associated thing.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateWirelessGatewayFromThingInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    #
    # @return [Types::DisassociateWirelessGatewayFromThingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_wireless_gateway_from_thing(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateWirelessGatewayFromThingOutput
    #
    def disassociate_wireless_gateway_from_thing(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateWirelessGatewayFromThingInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateWirelessGatewayFromThingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateWirelessGatewayFromThing
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DisassociateWirelessGatewayFromThing
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateWirelessGatewayFromThing,
        stubs: @stubs,
        params_class: Params::DisassociateWirelessGatewayFromThingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_wireless_gateway_from_thing
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a destination.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDestinationInput}.
    #
    # @option params [String] :name
    #   <p>The name of the resource to get.</p>
    #
    # @return [Types::GetDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_destination(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDestinationOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.expression #=> String
    #   resp.data.expression_type #=> String, one of ["RuleName", "MqttTopic"]
    #   resp.data.description #=> String
    #   resp.data.role_arn #=> String
    #
    def get_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDestination
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDestination,
        stubs: @stubs,
        params_class: Params::GetDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a device profile.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDeviceProfileInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to get.</p>
    #
    # @return [Types::GetDeviceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_device_profile(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDeviceProfileOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.id #=> String
    #   resp.data.lo_ra_wan #=> Types::LoRaWANDeviceProfile
    #   resp.data.lo_ra_wan.supports_class_b #=> Boolean
    #   resp.data.lo_ra_wan.class_b_timeout #=> Integer
    #   resp.data.lo_ra_wan.ping_slot_period #=> Integer
    #   resp.data.lo_ra_wan.ping_slot_dr #=> Integer
    #   resp.data.lo_ra_wan.ping_slot_freq #=> Integer
    #   resp.data.lo_ra_wan.supports_class_c #=> Boolean
    #   resp.data.lo_ra_wan.class_c_timeout #=> Integer
    #   resp.data.lo_ra_wan.mac_version #=> String
    #   resp.data.lo_ra_wan.reg_params_revision #=> String
    #   resp.data.lo_ra_wan.rx_delay1 #=> Integer
    #   resp.data.lo_ra_wan.rx_dr_offset1 #=> Integer
    #   resp.data.lo_ra_wan.rx_data_rate2 #=> Integer
    #   resp.data.lo_ra_wan.rx_freq2 #=> Integer
    #   resp.data.lo_ra_wan.factory_preset_freqs_list #=> Array<Integer>
    #   resp.data.lo_ra_wan.factory_preset_freqs_list[0] #=> Integer
    #   resp.data.lo_ra_wan.max_eirp #=> Integer
    #   resp.data.lo_ra_wan.max_duty_cycle #=> Integer
    #   resp.data.lo_ra_wan.rf_region #=> String
    #   resp.data.lo_ra_wan.supports_join #=> Boolean
    #   resp.data.lo_ra_wan.supports32_bit_f_cnt #=> Boolean
    #
    def get_device_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDeviceProfileInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDeviceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDeviceProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetDeviceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDeviceProfile,
        stubs: @stubs,
        params_class: Params::GetDeviceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_device_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get the event configuration by resource types.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEventConfigurationByResourceTypesInput}.
    #
    # @return [Types::GetEventConfigurationByResourceTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_configuration_by_resource_types()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetEventConfigurationByResourceTypesOutput
    #   resp.data.device_registration_state #=> Types::DeviceRegistrationStateResourceTypeEventConfiguration
    #   resp.data.device_registration_state.sidewalk #=> Types::SidewalkResourceTypeEventConfiguration
    #   resp.data.device_registration_state.sidewalk.wireless_device_event_topic #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.proximity #=> Types::ProximityResourceTypeEventConfiguration
    #   resp.data.proximity.sidewalk #=> Types::SidewalkResourceTypeEventConfiguration
    #   resp.data.join #=> Types::JoinResourceTypeEventConfiguration
    #   resp.data.join.lo_ra_wan #=> Types::LoRaWANJoinResourceTypeEventConfiguration
    #   resp.data.join.lo_ra_wan.wireless_device_event_topic #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.connection_status #=> Types::ConnectionStatusResourceTypeEventConfiguration
    #   resp.data.connection_status.lo_ra_wan #=> Types::LoRaWANConnectionStatusResourceTypeEventConfiguration
    #   resp.data.connection_status.lo_ra_wan.wireless_gateway_event_topic #=> String, one of ["Enabled", "Disabled"]
    #
    def get_event_configuration_by_resource_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEventConfigurationByResourceTypesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEventConfigurationByResourceTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEventConfigurationByResourceTypes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException]),
        data_parser: Parsers::GetEventConfigurationByResourceTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEventConfigurationByResourceTypes,
        stubs: @stubs,
        params_class: Params::GetEventConfigurationByResourceTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_event_configuration_by_resource_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a FUOTA task.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFuotaTaskInput}.
    #
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    #
    # @return [Types::GetFuotaTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_fuota_task(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFuotaTaskOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #   resp.data.status #=> String, one of ["Pending", "FuotaSession_Waiting", "In_FuotaSession", "FuotaDone", "Delete_Waiting"]
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.lo_ra_wan #=> Types::LoRaWANFuotaTaskGetInfo
    #   resp.data.lo_ra_wan.rf_region #=> String
    #   resp.data.lo_ra_wan.start_time #=> Time
    #   resp.data.firmware_update_image #=> String
    #   resp.data.firmware_update_role #=> String
    #   resp.data.created_at #=> Time
    #
    def get_fuota_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFuotaTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFuotaTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFuotaTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetFuotaTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFuotaTask,
        stubs: @stubs,
        params_class: Params::GetFuotaTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_fuota_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns current default log levels or log levels by resource types. Based on resource types, log levels can be
    #             for wireless device log options or wireless gateway log options.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLogLevelsByResourceTypesInput}.
    #
    # @return [Types::GetLogLevelsByResourceTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_log_levels_by_resource_types()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLogLevelsByResourceTypesOutput
    #   resp.data.default_log_level #=> String, one of ["INFO", "ERROR", "DISABLED"]
    #   resp.data.wireless_gateway_log_options #=> Array<WirelessGatewayLogOption>
    #   resp.data.wireless_gateway_log_options[0] #=> Types::WirelessGatewayLogOption
    #   resp.data.wireless_gateway_log_options[0].type #=> String, one of ["LoRaWAN"]
    #   resp.data.wireless_gateway_log_options[0].log_level #=> String, one of ["INFO", "ERROR", "DISABLED"]
    #   resp.data.wireless_gateway_log_options[0].events #=> Array<WirelessGatewayEventLogOption>
    #   resp.data.wireless_gateway_log_options[0].events[0] #=> Types::WirelessGatewayEventLogOption
    #   resp.data.wireless_gateway_log_options[0].events[0].event #=> String, one of ["CUPS_Request", "Certificate"]
    #   resp.data.wireless_gateway_log_options[0].events[0].log_level #=> String, one of ["INFO", "ERROR", "DISABLED"]
    #   resp.data.wireless_device_log_options #=> Array<WirelessDeviceLogOption>
    #   resp.data.wireless_device_log_options[0] #=> Types::WirelessDeviceLogOption
    #   resp.data.wireless_device_log_options[0].type #=> String, one of ["Sidewalk", "LoRaWAN"]
    #   resp.data.wireless_device_log_options[0].log_level #=> String, one of ["INFO", "ERROR", "DISABLED"]
    #   resp.data.wireless_device_log_options[0].events #=> Array<WirelessDeviceEventLogOption>
    #   resp.data.wireless_device_log_options[0].events[0] #=> Types::WirelessDeviceEventLogOption
    #   resp.data.wireless_device_log_options[0].events[0].event #=> String, one of ["Join", "Rejoin", "Uplink_Data", "Downlink_Data", "Registration"]
    #   resp.data.wireless_device_log_options[0].events[0].log_level #=> String, one of ["INFO", "ERROR", "DISABLED"]
    #
    def get_log_levels_by_resource_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLogLevelsByResourceTypesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLogLevelsByResourceTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLogLevelsByResourceTypes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetLogLevelsByResourceTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLogLevelsByResourceTypes,
        stubs: @stubs,
        params_class: Params::GetLogLevelsByResourceTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_log_levels_by_resource_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a multicast group.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMulticastGroupInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    #
    # @return [Types::GetMulticastGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_multicast_group(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMulticastGroupOutput
    #   resp.data.arn #=> String
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.status #=> String
    #   resp.data.lo_ra_wan #=> Types::LoRaWANMulticastGet
    #   resp.data.lo_ra_wan.rf_region #=> String, one of ["EU868", "US915", "AU915", "AS923-1"]
    #   resp.data.lo_ra_wan.dl_class #=> String, one of ["ClassB", "ClassC"]
    #   resp.data.lo_ra_wan.number_of_devices_requested #=> Integer
    #   resp.data.lo_ra_wan.number_of_devices_in_group #=> Integer
    #   resp.data.created_at #=> Time
    #
    def get_multicast_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMulticastGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMulticastGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMulticastGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetMulticastGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMulticastGroup,
        stubs: @stubs,
        params_class: Params::GetMulticastGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_multicast_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a multicast group session.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMulticastGroupSessionInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    #
    # @return [Types::GetMulticastGroupSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_multicast_group_session(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMulticastGroupSessionOutput
    #   resp.data.lo_ra_wan #=> Types::LoRaWANMulticastSession
    #   resp.data.lo_ra_wan.dl_dr #=> Integer
    #   resp.data.lo_ra_wan.dl_freq #=> Integer
    #   resp.data.lo_ra_wan.session_start_time #=> Time
    #   resp.data.lo_ra_wan.session_timeout #=> Integer
    #
    def get_multicast_group_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMulticastGroupSessionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMulticastGroupSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMulticastGroupSession
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetMulticastGroupSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMulticastGroupSession,
        stubs: @stubs,
        params_class: Params::GetMulticastGroupSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_multicast_group_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get network analyzer configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNetworkAnalyzerConfigurationInput}.
    #
    # @option params [String] :configuration_name
    #   <p>Name of the network analyzer configuration.</p>
    #
    # @return [Types::GetNetworkAnalyzerConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_analyzer_configuration(
    #     configuration_name: 'ConfigurationName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNetworkAnalyzerConfigurationOutput
    #   resp.data.trace_content #=> Types::TraceContent
    #   resp.data.trace_content.wireless_device_frame_info #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.trace_content.log_level #=> String, one of ["INFO", "ERROR", "DISABLED"]
    #   resp.data.wireless_devices #=> Array<String>
    #   resp.data.wireless_devices[0] #=> String
    #   resp.data.wireless_gateways #=> Array<String>
    #   resp.data.wireless_gateways[0] #=> String
    #   resp.data.description #=> String
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #
    def get_network_analyzer_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNetworkAnalyzerConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNetworkAnalyzerConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNetworkAnalyzerConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetNetworkAnalyzerConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNetworkAnalyzerConfiguration,
        stubs: @stubs,
        params_class: Params::GetNetworkAnalyzerConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_network_analyzer_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a partner account. If <code>PartnerAccountId</code> and <code>PartnerType</code> are <code>null</code>, returns all partner accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPartnerAccountInput}.
    #
    # @option params [String] :partner_account_id
    #   <p>The partner account ID to disassociate from the AWS account.</p>
    #
    # @option params [String] :partner_type
    #   <p>The partner type.</p>
    #
    # @return [Types::GetPartnerAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_partner_account(
    #     partner_account_id: 'PartnerAccountId', # required
    #     partner_type: 'Sidewalk' # required - accepts ["Sidewalk"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPartnerAccountOutput
    #   resp.data.sidewalk #=> Types::SidewalkAccountInfoWithFingerprint
    #   resp.data.sidewalk.amazon_id #=> String
    #   resp.data.sidewalk.fingerprint #=> String
    #   resp.data.sidewalk.arn #=> String
    #   resp.data.account_linked #=> Boolean
    #
    def get_partner_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPartnerAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPartnerAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPartnerAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetPartnerAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPartnerAccount,
        stubs: @stubs,
        params_class: Params::GetPartnerAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_partner_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Get the event configuration for a particular resource identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourceEventConfigurationInput}.
    #
    # @option params [String] :identifier
    #   <p>Resource identifier to opt in for event messaging.</p>
    #
    # @option params [String] :identifier_type
    #   <p>Identifier type of the particular resource identifier for event configuration.</p>
    #
    # @option params [String] :partner_type
    #   <p>Partner type of the resource if the identifier type is PartnerAccountId.</p>
    #
    # @return [Types::GetResourceEventConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_event_configuration(
    #     identifier: 'Identifier', # required
    #     identifier_type: 'PartnerAccountId', # required - accepts ["PartnerAccountId", "DevEui", "GatewayEui", "WirelessDeviceId", "WirelessGatewayId"]
    #     partner_type: 'Sidewalk' # accepts ["Sidewalk"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceEventConfigurationOutput
    #   resp.data.device_registration_state #=> Types::DeviceRegistrationStateEventConfiguration
    #   resp.data.device_registration_state.sidewalk #=> Types::SidewalkEventNotificationConfigurations
    #   resp.data.device_registration_state.sidewalk.amazon_id_event_topic #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.device_registration_state.wireless_device_id_event_topic #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.proximity #=> Types::ProximityEventConfiguration
    #   resp.data.proximity.sidewalk #=> Types::SidewalkEventNotificationConfigurations
    #   resp.data.proximity.wireless_device_id_event_topic #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.join #=> Types::JoinEventConfiguration
    #   resp.data.join.lo_ra_wan #=> Types::LoRaWANJoinEventNotificationConfigurations
    #   resp.data.join.lo_ra_wan.dev_eui_event_topic #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.join.wireless_device_id_event_topic #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.connection_status #=> Types::ConnectionStatusEventConfiguration
    #   resp.data.connection_status.lo_ra_wan #=> Types::LoRaWANConnectionStatusEventNotificationConfigurations
    #   resp.data.connection_status.lo_ra_wan.gateway_eui_event_topic #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.connection_status.wireless_gateway_id_event_topic #=> String, one of ["Enabled", "Disabled"]
    #
    def get_resource_event_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceEventConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceEventConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourceEventConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetResourceEventConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourceEventConfiguration,
        stubs: @stubs,
        params_class: Params::GetResourceEventConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_event_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Fetches the log-level override, if any, for a given resource-ID and resource-type. It can be used for
    #             a wireless device or a wireless gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourceLogLevelInput}.
    #
    # @option params [String] :resource_identifier
    #   <p>The identifier of the resource. For a Wireless Device, it is the wireless device ID. For a wireless gateway,
    #               it is the wireless gateway ID.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of the resource, which can be <code>WirelessDevice</code> or <code>WirelessGateway</code>.</p>
    #
    # @return [Types::GetResourceLogLevelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_log_level(
    #     resource_identifier: 'ResourceIdentifier', # required
    #     resource_type: 'ResourceType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceLogLevelOutput
    #   resp.data.log_level #=> String, one of ["INFO", "ERROR", "DISABLED"]
    #
    def get_resource_log_level(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceLogLevelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceLogLevelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourceLogLevel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetResourceLogLevel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourceLogLevel,
        stubs: @stubs,
        params_class: Params::GetResourceLogLevelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_log_level
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the account-specific endpoint for Configuration and Update Server (CUPS) protocol or LoRaWAN Network Server (LNS) connections.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceEndpointInput}.
    #
    # @option params [String] :service_type
    #   <p>The service type for which to get endpoint information about. Can be <code>CUPS</code> for the
    #               Configuration and Update Server endpoint, or <code>LNS</code> for the LoRaWAN Network Server endpoint or
    #               <code>CLAIM</code> for the global endpoint.</p>
    #
    # @return [Types::GetServiceEndpointOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_endpoint(
    #     service_type: 'CUPS' # accepts ["CUPS", "LNS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceEndpointOutput
    #   resp.data.service_type #=> String, one of ["CUPS", "LNS"]
    #   resp.data.service_endpoint #=> String
    #   resp.data.server_trust #=> String
    #
    def get_service_endpoint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceEndpointInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceEndpointInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServiceEndpoint
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
        data_parser: Parsers::GetServiceEndpoint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServiceEndpoint,
        stubs: @stubs,
        params_class: Params::GetServiceEndpointOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service_endpoint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a service profile.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceProfileInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to get.</p>
    #
    # @return [Types::GetServiceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_profile(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceProfileOutput
    #   resp.data.arn #=> String
    #   resp.data.name #=> String
    #   resp.data.id #=> String
    #   resp.data.lo_ra_wan #=> Types::LoRaWANGetServiceProfileInfo
    #   resp.data.lo_ra_wan.ul_rate #=> Integer
    #   resp.data.lo_ra_wan.ul_bucket_size #=> Integer
    #   resp.data.lo_ra_wan.ul_rate_policy #=> String
    #   resp.data.lo_ra_wan.dl_rate #=> Integer
    #   resp.data.lo_ra_wan.dl_bucket_size #=> Integer
    #   resp.data.lo_ra_wan.dl_rate_policy #=> String
    #   resp.data.lo_ra_wan.add_gw_metadata #=> Boolean
    #   resp.data.lo_ra_wan.dev_status_req_freq #=> Integer
    #   resp.data.lo_ra_wan.report_dev_status_battery #=> Boolean
    #   resp.data.lo_ra_wan.report_dev_status_margin #=> Boolean
    #   resp.data.lo_ra_wan.dr_min #=> Integer
    #   resp.data.lo_ra_wan.dr_max #=> Integer
    #   resp.data.lo_ra_wan.channel_mask #=> String
    #   resp.data.lo_ra_wan.pr_allowed #=> Boolean
    #   resp.data.lo_ra_wan.hr_allowed #=> Boolean
    #   resp.data.lo_ra_wan.ra_allowed #=> Boolean
    #   resp.data.lo_ra_wan.nwk_geo_loc #=> Boolean
    #   resp.data.lo_ra_wan.target_per #=> Integer
    #   resp.data.lo_ra_wan.min_gw_diversity #=> Integer
    #
    def get_service_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceProfileInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServiceProfile
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetServiceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServiceProfile,
        stubs: @stubs,
        params_class: Params::GetServiceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a wireless device.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWirelessDeviceInput}.
    #
    # @option params [String] :identifier
    #   <p>The identifier of the wireless device to get.</p>
    #
    # @option params [String] :identifier_type
    #   <p>The type of identifier used in <code>identifier</code>.</p>
    #
    # @return [Types::GetWirelessDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_device(
    #     identifier: 'Identifier', # required
    #     identifier_type: 'WirelessDeviceId' # required - accepts ["WirelessDeviceId", "DevEui", "ThingName", "SidewalkManufacturingSn"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWirelessDeviceOutput
    #   resp.data.type #=> String, one of ["Sidewalk", "LoRaWAN"]
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.destination_name #=> String
    #   resp.data.id #=> String
    #   resp.data.arn #=> String
    #   resp.data.thing_name #=> String
    #   resp.data.thing_arn #=> String
    #   resp.data.lo_ra_wan #=> Types::LoRaWANDevice
    #   resp.data.lo_ra_wan.dev_eui #=> String
    #   resp.data.lo_ra_wan.device_profile_id #=> String
    #   resp.data.lo_ra_wan.service_profile_id #=> String
    #   resp.data.lo_ra_wan.otaa_v1_1 #=> Types::OtaaV1_1
    #   resp.data.lo_ra_wan.otaa_v1_1.app_key #=> String
    #   resp.data.lo_ra_wan.otaa_v1_1.nwk_key #=> String
    #   resp.data.lo_ra_wan.otaa_v1_1.join_eui #=> String
    #   resp.data.lo_ra_wan.otaa_v1_0_x #=> Types::OtaaV1_0_x
    #   resp.data.lo_ra_wan.otaa_v1_0_x.app_key #=> String
    #   resp.data.lo_ra_wan.otaa_v1_0_x.app_eui #=> String
    #   resp.data.lo_ra_wan.otaa_v1_0_x.gen_app_key #=> String
    #   resp.data.lo_ra_wan.abp_v1_1 #=> Types::AbpV1_1
    #   resp.data.lo_ra_wan.abp_v1_1.dev_addr #=> String
    #   resp.data.lo_ra_wan.abp_v1_1.session_keys #=> Types::SessionKeysAbpV1_1
    #   resp.data.lo_ra_wan.abp_v1_1.session_keys.f_nwk_s_int_key #=> String
    #   resp.data.lo_ra_wan.abp_v1_1.session_keys.s_nwk_s_int_key #=> String
    #   resp.data.lo_ra_wan.abp_v1_1.session_keys.nwk_s_enc_key #=> String
    #   resp.data.lo_ra_wan.abp_v1_1.session_keys.app_s_key #=> String
    #   resp.data.lo_ra_wan.abp_v1_1.f_cnt_start #=> Integer
    #   resp.data.lo_ra_wan.abp_v1_0_x #=> Types::AbpV1_0_x
    #   resp.data.lo_ra_wan.abp_v1_0_x.dev_addr #=> String
    #   resp.data.lo_ra_wan.abp_v1_0_x.session_keys #=> Types::SessionKeysAbpV1_0_x
    #   resp.data.lo_ra_wan.abp_v1_0_x.session_keys.nwk_s_key #=> String
    #   resp.data.lo_ra_wan.abp_v1_0_x.session_keys.app_s_key #=> String
    #   resp.data.lo_ra_wan.abp_v1_0_x.f_cnt_start #=> Integer
    #   resp.data.lo_ra_wan.f_ports #=> Types::FPorts
    #   resp.data.lo_ra_wan.f_ports.fuota #=> Integer
    #   resp.data.lo_ra_wan.f_ports.multicast #=> Integer
    #   resp.data.lo_ra_wan.f_ports.clock_sync #=> Integer
    #   resp.data.sidewalk #=> Types::SidewalkDevice
    #   resp.data.sidewalk.amazon_id #=> String
    #   resp.data.sidewalk.sidewalk_id #=> String
    #   resp.data.sidewalk.sidewalk_manufacturing_sn #=> String
    #   resp.data.sidewalk.device_certificates #=> Array<CertificateList>
    #   resp.data.sidewalk.device_certificates[0] #=> Types::CertificateList
    #   resp.data.sidewalk.device_certificates[0].signing_alg #=> String, one of ["Ed25519", "P256r1"]
    #   resp.data.sidewalk.device_certificates[0].value #=> String
    #
    def get_wireless_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWirelessDeviceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWirelessDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWirelessDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetWirelessDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWirelessDevice,
        stubs: @stubs,
        params_class: Params::GetWirelessDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_wireless_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets operating information about a wireless device.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWirelessDeviceStatisticsInput}.
    #
    # @option params [String] :wireless_device_id
    #   <p>The ID of the wireless device for which to get the data.</p>
    #
    # @return [Types::GetWirelessDeviceStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_device_statistics(
    #     wireless_device_id: 'WirelessDeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWirelessDeviceStatisticsOutput
    #   resp.data.wireless_device_id #=> String
    #   resp.data.last_uplink_received_at #=> String
    #   resp.data.lo_ra_wan #=> Types::LoRaWANDeviceMetadata
    #   resp.data.lo_ra_wan.dev_eui #=> String
    #   resp.data.lo_ra_wan.f_port #=> Integer
    #   resp.data.lo_ra_wan.data_rate #=> Integer
    #   resp.data.lo_ra_wan.frequency #=> Integer
    #   resp.data.lo_ra_wan.timestamp #=> String
    #   resp.data.lo_ra_wan.gateways #=> Array<LoRaWANGatewayMetadata>
    #   resp.data.lo_ra_wan.gateways[0] #=> Types::LoRaWANGatewayMetadata
    #   resp.data.lo_ra_wan.gateways[0].gateway_eui #=> String
    #   resp.data.lo_ra_wan.gateways[0].snr #=> Float
    #   resp.data.lo_ra_wan.gateways[0].rssi #=> Float
    #   resp.data.sidewalk #=> Types::SidewalkDeviceMetadata
    #   resp.data.sidewalk.rssi #=> Integer
    #   resp.data.sidewalk.battery_level #=> String, one of ["normal", "low", "critical"]
    #   resp.data.sidewalk.event #=> String, one of ["discovered", "lost", "ack", "nack", "passthrough"]
    #   resp.data.sidewalk.device_state #=> String, one of ["Provisioned", "RegisteredNotSeen", "RegisteredReachable", "RegisteredUnreachable"]
    #
    def get_wireless_device_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWirelessDeviceStatisticsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWirelessDeviceStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWirelessDeviceStatistics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetWirelessDeviceStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWirelessDeviceStatistics,
        stubs: @stubs,
        params_class: Params::GetWirelessDeviceStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_wireless_device_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a wireless gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWirelessGatewayInput}.
    #
    # @option params [String] :identifier
    #   <p>The identifier of the wireless gateway to get.</p>
    #
    # @option params [String] :identifier_type
    #   <p>The type of identifier used in <code>identifier</code>.</p>
    #
    # @return [Types::GetWirelessGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_gateway(
    #     identifier: 'Identifier', # required
    #     identifier_type: 'GatewayEui' # required - accepts ["GatewayEui", "WirelessGatewayId", "ThingName"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWirelessGatewayOutput
    #   resp.data.name #=> String
    #   resp.data.id #=> String
    #   resp.data.description #=> String
    #   resp.data.lo_ra_wan #=> Types::LoRaWANGateway
    #   resp.data.lo_ra_wan.gateway_eui #=> String
    #   resp.data.lo_ra_wan.rf_region #=> String
    #   resp.data.lo_ra_wan.join_eui_filters #=> Array<Array<String>>
    #   resp.data.lo_ra_wan.join_eui_filters[0] #=> Array<String>
    #   resp.data.lo_ra_wan.join_eui_filters[0][0] #=> String
    #   resp.data.lo_ra_wan.net_id_filters #=> Array<String>
    #   resp.data.lo_ra_wan.net_id_filters[0] #=> String
    #   resp.data.lo_ra_wan.sub_bands #=> Array<Integer>
    #   resp.data.lo_ra_wan.sub_bands[0] #=> Integer
    #   resp.data.arn #=> String
    #   resp.data.thing_name #=> String
    #   resp.data.thing_arn #=> String
    #
    def get_wireless_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWirelessGatewayInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWirelessGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWirelessGateway
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetWirelessGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWirelessGateway,
        stubs: @stubs,
        params_class: Params::GetWirelessGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_wireless_gateway
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the ID of the certificate that is currently associated with a wireless gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWirelessGatewayCertificateInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to get.</p>
    #
    # @return [Types::GetWirelessGatewayCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_gateway_certificate(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWirelessGatewayCertificateOutput
    #   resp.data.iot_certificate_id #=> String
    #   resp.data.lo_ra_wan_network_server_certificate_id #=> String
    #
    def get_wireless_gateway_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWirelessGatewayCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWirelessGatewayCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWirelessGatewayCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetWirelessGatewayCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWirelessGatewayCertificate,
        stubs: @stubs,
        params_class: Params::GetWirelessGatewayCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_wireless_gateway_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the firmware version and other information about a wireless gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWirelessGatewayFirmwareInformationInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to get.</p>
    #
    # @return [Types::GetWirelessGatewayFirmwareInformationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_gateway_firmware_information(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWirelessGatewayFirmwareInformationOutput
    #   resp.data.lo_ra_wan #=> Types::LoRaWANGatewayCurrentVersion
    #   resp.data.lo_ra_wan.current_version #=> Types::LoRaWANGatewayVersion
    #   resp.data.lo_ra_wan.current_version.package_version #=> String
    #   resp.data.lo_ra_wan.current_version.model #=> String
    #   resp.data.lo_ra_wan.current_version.station #=> String
    #
    def get_wireless_gateway_firmware_information(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWirelessGatewayFirmwareInformationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWirelessGatewayFirmwareInformationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWirelessGatewayFirmwareInformation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetWirelessGatewayFirmwareInformation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWirelessGatewayFirmwareInformation,
        stubs: @stubs,
        params_class: Params::GetWirelessGatewayFirmwareInformationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_wireless_gateway_firmware_information
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets operating information about a wireless gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWirelessGatewayStatisticsInput}.
    #
    # @option params [String] :wireless_gateway_id
    #   <p>The ID of the wireless gateway for which to get the data.</p>
    #
    # @return [Types::GetWirelessGatewayStatisticsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_gateway_statistics(
    #     wireless_gateway_id: 'WirelessGatewayId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWirelessGatewayStatisticsOutput
    #   resp.data.wireless_gateway_id #=> String
    #   resp.data.last_uplink_received_at #=> String
    #   resp.data.connection_status #=> String, one of ["Connected", "Disconnected"]
    #
    def get_wireless_gateway_statistics(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWirelessGatewayStatisticsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWirelessGatewayStatisticsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWirelessGatewayStatistics
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetWirelessGatewayStatistics
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWirelessGatewayStatistics,
        stubs: @stubs,
        params_class: Params::GetWirelessGatewayStatisticsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_wireless_gateway_statistics
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a wireless gateway task.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWirelessGatewayTaskInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to get.</p>
    #
    # @return [Types::GetWirelessGatewayTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_gateway_task(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWirelessGatewayTaskOutput
    #   resp.data.wireless_gateway_id #=> String
    #   resp.data.wireless_gateway_task_definition_id #=> String
    #   resp.data.last_uplink_received_at #=> String
    #   resp.data.task_created_at #=> String
    #   resp.data.status #=> String, one of ["PENDING", "IN_PROGRESS", "FIRST_RETRY", "SECOND_RETRY", "COMPLETED", "FAILED"]
    #
    def get_wireless_gateway_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWirelessGatewayTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWirelessGatewayTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWirelessGatewayTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetWirelessGatewayTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWirelessGatewayTask,
        stubs: @stubs,
        params_class: Params::GetWirelessGatewayTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_wireless_gateway_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a wireless gateway task definition.</p>
    #
    # @param [Hash] params
    #   See {Types::GetWirelessGatewayTaskDefinitionInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to get.</p>
    #
    # @return [Types::GetWirelessGatewayTaskDefinitionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_wireless_gateway_task_definition(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetWirelessGatewayTaskDefinitionOutput
    #   resp.data.auto_create_tasks #=> Boolean
    #   resp.data.name #=> String
    #   resp.data.update #=> Types::UpdateWirelessGatewayTaskCreate
    #   resp.data.update.update_data_source #=> String
    #   resp.data.update.update_data_role #=> String
    #   resp.data.update.lo_ra_wan #=> Types::LoRaWANUpdateGatewayTaskCreate
    #   resp.data.update.lo_ra_wan.update_signature #=> String
    #   resp.data.update.lo_ra_wan.sig_key_crc #=> Integer
    #   resp.data.update.lo_ra_wan.current_version #=> Types::LoRaWANGatewayVersion
    #   resp.data.update.lo_ra_wan.current_version.package_version #=> String
    #   resp.data.update.lo_ra_wan.current_version.model #=> String
    #   resp.data.update.lo_ra_wan.current_version.station #=> String
    #   resp.data.update.lo_ra_wan.update_version #=> Types::LoRaWANGatewayVersion
    #   resp.data.arn #=> String
    #
    def get_wireless_gateway_task_definition(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetWirelessGatewayTaskDefinitionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetWirelessGatewayTaskDefinitionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetWirelessGatewayTaskDefinition
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::GetWirelessGatewayTaskDefinition
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetWirelessGatewayTaskDefinition,
        stubs: @stubs,
        params_class: Params::GetWirelessGatewayTaskDefinitionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_wireless_gateway_task_definition
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the destinations registered to your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDestinationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    # @return [Types::ListDestinationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_destinations(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDestinationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.destination_list #=> Array<Destinations>
    #   resp.data.destination_list[0] #=> Types::Destinations
    #   resp.data.destination_list[0].arn #=> String
    #   resp.data.destination_list[0].name #=> String
    #   resp.data.destination_list[0].expression_type #=> String, one of ["RuleName", "MqttTopic"]
    #   resp.data.destination_list[0].expression #=> String
    #   resp.data.destination_list[0].description #=> String
    #   resp.data.destination_list[0].role_arn #=> String
    #
    def list_destinations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDestinationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDestinationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDestinations
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
        data_parser: Parsers::ListDestinations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDestinations,
        stubs: @stubs,
        params_class: Params::ListDestinationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_destinations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the device profiles registered to your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDeviceProfilesInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @return [Types::ListDeviceProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_device_profiles(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDeviceProfilesOutput
    #   resp.data.next_token #=> String
    #   resp.data.device_profile_list #=> Array<DeviceProfile>
    #   resp.data.device_profile_list[0] #=> Types::DeviceProfile
    #   resp.data.device_profile_list[0].arn #=> String
    #   resp.data.device_profile_list[0].name #=> String
    #   resp.data.device_profile_list[0].id #=> String
    #
    def list_device_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDeviceProfilesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDeviceProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDeviceProfiles
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
        data_parser: Parsers::ListDeviceProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDeviceProfiles,
        stubs: @stubs,
        params_class: Params::ListDeviceProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_device_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List event configurations where at least one event topic has been enabled.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEventConfigurationsInput}.
    #
    # @option params [String] :resource_type
    #   <p>Resource type to filter event configurations.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response;
    #               otherwise <b>null</b> to receive the first set of results.</p>
    #
    # @return [Types::ListEventConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_configurations(
    #     resource_type: 'SidewalkAccount', # required - accepts ["SidewalkAccount", "WirelessDevice", "WirelessGateway"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEventConfigurationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.event_configurations_list #=> Array<EventConfigurationItem>
    #   resp.data.event_configurations_list[0] #=> Types::EventConfigurationItem
    #   resp.data.event_configurations_list[0].identifier #=> String
    #   resp.data.event_configurations_list[0].identifier_type #=> String, one of ["PartnerAccountId", "DevEui", "GatewayEui", "WirelessDeviceId", "WirelessGatewayId"]
    #   resp.data.event_configurations_list[0].partner_type #=> String, one of ["Sidewalk"]
    #   resp.data.event_configurations_list[0].events #=> Types::EventNotificationItemConfigurations
    #   resp.data.event_configurations_list[0].events.device_registration_state #=> Types::DeviceRegistrationStateEventConfiguration
    #   resp.data.event_configurations_list[0].events.device_registration_state.sidewalk #=> Types::SidewalkEventNotificationConfigurations
    #   resp.data.event_configurations_list[0].events.device_registration_state.sidewalk.amazon_id_event_topic #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.event_configurations_list[0].events.device_registration_state.wireless_device_id_event_topic #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.event_configurations_list[0].events.proximity #=> Types::ProximityEventConfiguration
    #   resp.data.event_configurations_list[0].events.proximity.sidewalk #=> Types::SidewalkEventNotificationConfigurations
    #   resp.data.event_configurations_list[0].events.proximity.wireless_device_id_event_topic #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.event_configurations_list[0].events.join #=> Types::JoinEventConfiguration
    #   resp.data.event_configurations_list[0].events.join.lo_ra_wan #=> Types::LoRaWANJoinEventNotificationConfigurations
    #   resp.data.event_configurations_list[0].events.join.lo_ra_wan.dev_eui_event_topic #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.event_configurations_list[0].events.join.wireless_device_id_event_topic #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.event_configurations_list[0].events.connection_status #=> Types::ConnectionStatusEventConfiguration
    #   resp.data.event_configurations_list[0].events.connection_status.lo_ra_wan #=> Types::LoRaWANConnectionStatusEventNotificationConfigurations
    #   resp.data.event_configurations_list[0].events.connection_status.lo_ra_wan.gateway_eui_event_topic #=> String, one of ["Enabled", "Disabled"]
    #   resp.data.event_configurations_list[0].events.connection_status.wireless_gateway_id_event_topic #=> String, one of ["Enabled", "Disabled"]
    #
    def list_event_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventConfigurationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEventConfigurations
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
        data_parser: Parsers::ListEventConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEventConfigurations,
        stubs: @stubs,
        params_class: Params::ListEventConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_event_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the FUOTA tasks registered to your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFuotaTasksInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @return [Types::ListFuotaTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fuota_tasks(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFuotaTasksOutput
    #   resp.data.next_token #=> String
    #   resp.data.fuota_task_list #=> Array<FuotaTask>
    #   resp.data.fuota_task_list[0] #=> Types::FuotaTask
    #   resp.data.fuota_task_list[0].id #=> String
    #   resp.data.fuota_task_list[0].arn #=> String
    #   resp.data.fuota_task_list[0].name #=> String
    #
    def list_fuota_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFuotaTasksInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFuotaTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFuotaTasks
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
        data_parser: Parsers::ListFuotaTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFuotaTasks,
        stubs: @stubs,
        params_class: Params::ListFuotaTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_fuota_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the multicast groups registered to your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMulticastGroupsInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @return [Types::ListMulticastGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_multicast_groups(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMulticastGroupsOutput
    #   resp.data.next_token #=> String
    #   resp.data.multicast_group_list #=> Array<MulticastGroup>
    #   resp.data.multicast_group_list[0] #=> Types::MulticastGroup
    #   resp.data.multicast_group_list[0].id #=> String
    #   resp.data.multicast_group_list[0].arn #=> String
    #   resp.data.multicast_group_list[0].name #=> String
    #
    def list_multicast_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMulticastGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMulticastGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMulticastGroups
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
        data_parser: Parsers::ListMulticastGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMulticastGroups,
        stubs: @stubs,
        params_class: Params::ListMulticastGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_multicast_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all multicast groups associated with a fuota task.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMulticastGroupsByFuotaTaskInput}.
    #
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @return [Types::ListMulticastGroupsByFuotaTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_multicast_groups_by_fuota_task(
    #     id: 'Id', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMulticastGroupsByFuotaTaskOutput
    #   resp.data.next_token #=> String
    #   resp.data.multicast_group_list #=> Array<MulticastGroupByFuotaTask>
    #   resp.data.multicast_group_list[0] #=> Types::MulticastGroupByFuotaTask
    #   resp.data.multicast_group_list[0].id #=> String
    #
    def list_multicast_groups_by_fuota_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMulticastGroupsByFuotaTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMulticastGroupsByFuotaTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMulticastGroupsByFuotaTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListMulticastGroupsByFuotaTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMulticastGroupsByFuotaTask,
        stubs: @stubs,
        params_class: Params::ListMulticastGroupsByFuotaTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_multicast_groups_by_fuota_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the network analyzer configurations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNetworkAnalyzerConfigurationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    # @return [Types::ListNetworkAnalyzerConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_network_analyzer_configurations(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNetworkAnalyzerConfigurationsOutput
    #   resp.data.next_token #=> String
    #   resp.data.network_analyzer_configuration_list #=> Array<NetworkAnalyzerConfigurations>
    #   resp.data.network_analyzer_configuration_list[0] #=> Types::NetworkAnalyzerConfigurations
    #   resp.data.network_analyzer_configuration_list[0].arn #=> String
    #   resp.data.network_analyzer_configuration_list[0].name #=> String
    #
    def list_network_analyzer_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNetworkAnalyzerConfigurationsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNetworkAnalyzerConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNetworkAnalyzerConfigurations
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
        data_parser: Parsers::ListNetworkAnalyzerConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNetworkAnalyzerConfigurations,
        stubs: @stubs,
        params_class: Params::ListNetworkAnalyzerConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_network_analyzer_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the partner accounts associated with your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPartnerAccountsInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @return [Types::ListPartnerAccountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_partner_accounts(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPartnerAccountsOutput
    #   resp.data.next_token #=> String
    #   resp.data.sidewalk #=> Array<SidewalkAccountInfoWithFingerprint>
    #   resp.data.sidewalk[0] #=> Types::SidewalkAccountInfoWithFingerprint
    #   resp.data.sidewalk[0].amazon_id #=> String
    #   resp.data.sidewalk[0].fingerprint #=> String
    #   resp.data.sidewalk[0].arn #=> String
    #
    def list_partner_accounts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPartnerAccountsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPartnerAccountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPartnerAccounts
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListPartnerAccounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPartnerAccounts,
        stubs: @stubs,
        params_class: Params::ListPartnerAccountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_partner_accounts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List queued messages in the downlink queue.</p>
    #
    # @param [Hash] params
    #   See {Types::ListQueuedMessagesInput}.
    #
    # @option params [String] :id
    #   <p>The ID of a given wireless device which the downlink message packets are being sent.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise
    #               <b>null</b> to receive the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @option params [String] :wireless_device_type
    #   <p>The wireless device type, whic can be either Sidewalk or LoRaWAN.</p>
    #
    # @return [Types::ListQueuedMessagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_queued_messages(
    #     id: 'Id', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     wireless_device_type: 'Sidewalk' # accepts ["Sidewalk", "LoRaWAN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListQueuedMessagesOutput
    #   resp.data.next_token #=> String
    #   resp.data.downlink_queue_messages_list #=> Array<DownlinkQueueMessage>
    #   resp.data.downlink_queue_messages_list[0] #=> Types::DownlinkQueueMessage
    #   resp.data.downlink_queue_messages_list[0].message_id #=> String
    #   resp.data.downlink_queue_messages_list[0].transmit_mode #=> Integer
    #   resp.data.downlink_queue_messages_list[0].received_at #=> String
    #   resp.data.downlink_queue_messages_list[0].lo_ra_wan #=> Types::LoRaWANSendDataToDevice
    #   resp.data.downlink_queue_messages_list[0].lo_ra_wan.f_port #=> Integer
    #
    def list_queued_messages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListQueuedMessagesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListQueuedMessagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListQueuedMessages
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListQueuedMessages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListQueuedMessages,
        stubs: @stubs,
        params_class: Params::ListQueuedMessagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_queued_messages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the service profiles registered to your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServiceProfilesInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @return [Types::ListServiceProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_profiles(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServiceProfilesOutput
    #   resp.data.next_token #=> String
    #   resp.data.service_profile_list #=> Array<ServiceProfile>
    #   resp.data.service_profile_list[0] #=> Types::ServiceProfile
    #   resp.data.service_profile_list[0].arn #=> String
    #   resp.data.service_profile_list[0].name #=> String
    #   resp.data.service_profile_list[0].id #=> String
    #
    def list_service_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServiceProfilesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServiceProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServiceProfiles
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
        data_parser: Parsers::ListServiceProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServiceProfiles,
        stubs: @stubs,
        params_class: Params::ListServiceProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_service_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags (metadata) you have assigned to the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource for which you want to list tags.</p>
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
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Lists the wireless devices registered to your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWirelessDevicesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    # @option params [String] :destination_name
    #   <p>A filter to list only the wireless devices that use this destination.</p>
    #
    # @option params [String] :device_profile_id
    #   <p>A filter to list only the wireless devices that use this device profile.</p>
    #
    # @option params [String] :service_profile_id
    #   <p>A filter to list only the wireless devices that use this service profile.</p>
    #
    # @option params [String] :wireless_device_type
    #   <p>A filter to list only the wireless devices that use this wireless device type.</p>
    #
    # @option params [String] :fuota_task_id
    #   <p>The ID of a FUOTA task.</p>
    #
    # @option params [String] :multicast_group_id
    #   <p>The ID of the multicast group.</p>
    #
    # @return [Types::ListWirelessDevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_wireless_devices(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     destination_name: 'DestinationName',
    #     device_profile_id: 'DeviceProfileId',
    #     service_profile_id: 'ServiceProfileId',
    #     wireless_device_type: 'Sidewalk', # accepts ["Sidewalk", "LoRaWAN"]
    #     fuota_task_id: 'FuotaTaskId',
    #     multicast_group_id: 'MulticastGroupId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWirelessDevicesOutput
    #   resp.data.next_token #=> String
    #   resp.data.wireless_device_list #=> Array<WirelessDeviceStatistics>
    #   resp.data.wireless_device_list[0] #=> Types::WirelessDeviceStatistics
    #   resp.data.wireless_device_list[0].arn #=> String
    #   resp.data.wireless_device_list[0].id #=> String
    #   resp.data.wireless_device_list[0].type #=> String, one of ["Sidewalk", "LoRaWAN"]
    #   resp.data.wireless_device_list[0].name #=> String
    #   resp.data.wireless_device_list[0].destination_name #=> String
    #   resp.data.wireless_device_list[0].last_uplink_received_at #=> String
    #   resp.data.wireless_device_list[0].lo_ra_wan #=> Types::LoRaWANListDevice
    #   resp.data.wireless_device_list[0].lo_ra_wan.dev_eui #=> String
    #   resp.data.wireless_device_list[0].sidewalk #=> Types::SidewalkListDevice
    #   resp.data.wireless_device_list[0].sidewalk.amazon_id #=> String
    #   resp.data.wireless_device_list[0].sidewalk.sidewalk_id #=> String
    #   resp.data.wireless_device_list[0].sidewalk.sidewalk_manufacturing_sn #=> String
    #   resp.data.wireless_device_list[0].sidewalk.device_certificates #=> Array<CertificateList>
    #   resp.data.wireless_device_list[0].sidewalk.device_certificates[0] #=> Types::CertificateList
    #   resp.data.wireless_device_list[0].sidewalk.device_certificates[0].signing_alg #=> String, one of ["Ed25519", "P256r1"]
    #   resp.data.wireless_device_list[0].sidewalk.device_certificates[0].value #=> String
    #   resp.data.wireless_device_list[0].fuota_device_status #=> String, one of ["Initial", "Package_Not_Supported", "FragAlgo_unsupported", "Not_enough_memory", "FragIndex_unsupported", "Wrong_descriptor", "SessionCnt_replay", "MissingFrag", "MemoryError", "MICError", "Successful"]
    #   resp.data.wireless_device_list[0].multicast_device_status #=> String
    #   resp.data.wireless_device_list[0].mc_group_id #=> Integer
    #
    def list_wireless_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWirelessDevicesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWirelessDevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWirelessDevices
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
        data_parser: Parsers::ListWirelessDevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWirelessDevices,
        stubs: @stubs,
        params_class: Params::ListWirelessDevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_wireless_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the wireless gateway tasks definitions registered to your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWirelessGatewayTaskDefinitionsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    # @option params [String] :task_definition_type
    #   <p>A filter to list only the wireless gateway task definitions that use this task definition type.</p>
    #
    # @return [Types::ListWirelessGatewayTaskDefinitionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_wireless_gateway_task_definitions(
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     task_definition_type: 'UPDATE' # accepts ["UPDATE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWirelessGatewayTaskDefinitionsOutput
    #   resp.data.next_token #=> String
    #   resp.data.task_definitions #=> Array<UpdateWirelessGatewayTaskEntry>
    #   resp.data.task_definitions[0] #=> Types::UpdateWirelessGatewayTaskEntry
    #   resp.data.task_definitions[0].id #=> String
    #   resp.data.task_definitions[0].lo_ra_wan #=> Types::LoRaWANUpdateGatewayTaskEntry
    #   resp.data.task_definitions[0].lo_ra_wan.current_version #=> Types::LoRaWANGatewayVersion
    #   resp.data.task_definitions[0].lo_ra_wan.current_version.package_version #=> String
    #   resp.data.task_definitions[0].lo_ra_wan.current_version.model #=> String
    #   resp.data.task_definitions[0].lo_ra_wan.current_version.station #=> String
    #   resp.data.task_definitions[0].lo_ra_wan.update_version #=> Types::LoRaWANGatewayVersion
    #   resp.data.task_definitions[0].arn #=> String
    #
    def list_wireless_gateway_task_definitions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWirelessGatewayTaskDefinitionsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWirelessGatewayTaskDefinitionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWirelessGatewayTaskDefinitions
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
        data_parser: Parsers::ListWirelessGatewayTaskDefinitions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWirelessGatewayTaskDefinitions,
        stubs: @stubs,
        params_class: Params::ListWirelessGatewayTaskDefinitionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_wireless_gateway_task_definitions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the wireless gateways registered to your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListWirelessGatewaysInput}.
    #
    # @option params [String] :next_token
    #   <p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in this operation.</p>
    #
    # @return [Types::ListWirelessGatewaysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_wireless_gateways(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListWirelessGatewaysOutput
    #   resp.data.next_token #=> String
    #   resp.data.wireless_gateway_list #=> Array<WirelessGatewayStatistics>
    #   resp.data.wireless_gateway_list[0] #=> Types::WirelessGatewayStatistics
    #   resp.data.wireless_gateway_list[0].arn #=> String
    #   resp.data.wireless_gateway_list[0].id #=> String
    #   resp.data.wireless_gateway_list[0].name #=> String
    #   resp.data.wireless_gateway_list[0].description #=> String
    #   resp.data.wireless_gateway_list[0].lo_ra_wan #=> Types::LoRaWANGateway
    #   resp.data.wireless_gateway_list[0].lo_ra_wan.gateway_eui #=> String
    #   resp.data.wireless_gateway_list[0].lo_ra_wan.rf_region #=> String
    #   resp.data.wireless_gateway_list[0].lo_ra_wan.join_eui_filters #=> Array<Array<String>>
    #   resp.data.wireless_gateway_list[0].lo_ra_wan.join_eui_filters[0] #=> Array<String>
    #   resp.data.wireless_gateway_list[0].lo_ra_wan.join_eui_filters[0][0] #=> String
    #   resp.data.wireless_gateway_list[0].lo_ra_wan.net_id_filters #=> Array<String>
    #   resp.data.wireless_gateway_list[0].lo_ra_wan.net_id_filters[0] #=> String
    #   resp.data.wireless_gateway_list[0].lo_ra_wan.sub_bands #=> Array<Integer>
    #   resp.data.wireless_gateway_list[0].lo_ra_wan.sub_bands[0] #=> Integer
    #   resp.data.wireless_gateway_list[0].last_uplink_received_at #=> String
    #
    def list_wireless_gateways(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListWirelessGatewaysInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListWirelessGatewaysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListWirelessGateways
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
        data_parser: Parsers::ListWirelessGateways
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListWirelessGateways,
        stubs: @stubs,
        params_class: Params::ListWirelessGatewaysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_wireless_gateways
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the log-level override for a resource-ID and resource-type. This option can be specified for a wireless gateway
    #             or a wireless device. A limit of 200 log level override can be set per account.</p>
    #
    # @param [Hash] params
    #   See {Types::PutResourceLogLevelInput}.
    #
    # @option params [String] :resource_identifier
    #   <p>The identifier of the resource. For a Wireless Device, it is the wireless device ID. For a wireless gateway,
    #               it is the wireless gateway ID.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of the resource, which can be <code>WirelessDevice</code> or <code>WirelessGateway</code>.</p>
    #
    # @option params [String] :log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to <code>ERROR</code> to display
    #               less verbose logs containing only error information, or to <code>INFO</code> for more detailed logs.</p>
    #
    # @return [Types::PutResourceLogLevelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_log_level(
    #     resource_identifier: 'ResourceIdentifier', # required
    #     resource_type: 'ResourceType', # required
    #     log_level: 'INFO' # required - accepts ["INFO", "ERROR", "DISABLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutResourceLogLevelOutput
    #
    def put_resource_log_level(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutResourceLogLevelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutResourceLogLevelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutResourceLogLevel
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::PutResourceLogLevel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutResourceLogLevel,
        stubs: @stubs,
        params_class: Params::PutResourceLogLevelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_resource_log_level
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the log-level overrides for all resources; both wireless devices and wireless gateways.</p>
    #
    # @param [Hash] params
    #   See {Types::ResetAllResourceLogLevelsInput}.
    #
    # @return [Types::ResetAllResourceLogLevelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_all_resource_log_levels()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetAllResourceLogLevelsOutput
    #
    def reset_all_resource_log_levels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetAllResourceLogLevelsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetAllResourceLogLevelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetAllResourceLogLevels
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ResetAllResourceLogLevels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetAllResourceLogLevels,
        stubs: @stubs,
        params_class: Params::ResetAllResourceLogLevelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_all_resource_log_levels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the log-level override, if any, for a specific resource-ID and resource-type. It can be used for
    #             a wireless device or a wireless gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::ResetResourceLogLevelInput}.
    #
    # @option params [String] :resource_identifier
    #   <p>The identifier of the resource. For a Wireless Device, it is the wireless device ID. For a wireless gateway,
    #               it is the wireless gateway ID.</p>
    #
    # @option params [String] :resource_type
    #   <p>The type of the resource, which can be <code>WirelessDevice</code> or <code>WirelessGateway</code>.</p>
    #
    # @return [Types::ResetResourceLogLevelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_resource_log_level(
    #     resource_identifier: 'ResourceIdentifier', # required
    #     resource_type: 'ResourceType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetResourceLogLevelOutput
    #
    def reset_resource_log_level(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetResourceLogLevelInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetResourceLogLevelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetResourceLogLevel
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ResetResourceLogLevel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetResourceLogLevel,
        stubs: @stubs,
        params_class: Params::ResetResourceLogLevelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_resource_log_level
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends the specified data to a multicast group.</p>
    #
    # @param [Hash] params
    #   See {Types::SendDataToMulticastGroupInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    #
    # @option params [String] :payload_data
    #   <p>The binary to be sent to the end device, encoded in base64.</p>
    #
    # @option params [MulticastWirelessMetadata] :wireless_metadata
    #   <p>Wireless metadata that is to be sent to multicast group.</p>
    #
    # @return [Types::SendDataToMulticastGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_data_to_multicast_group(
    #     id: 'Id', # required
    #     payload_data: 'PayloadData', # required
    #     wireless_metadata: {
    #       lo_ra_wan: {
    #         f_port: 1
    #       }
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendDataToMulticastGroupOutput
    #   resp.data.message_id #=> String
    #
    def send_data_to_multicast_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendDataToMulticastGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendDataToMulticastGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendDataToMulticastGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::SendDataToMulticastGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendDataToMulticastGroup,
        stubs: @stubs,
        params_class: Params::SendDataToMulticastGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_data_to_multicast_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends a decrypted application data frame to a device.</p>
    #
    # @param [Hash] params
    #   See {Types::SendDataToWirelessDeviceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the wireless device to receive the data.</p>
    #
    # @option params [Integer] :transmit_mode
    #   <p>The transmit mode to use to send data to the wireless device. Can be: <code>0</code> for UM (unacknowledge mode) or <code>1</code> for AM (acknowledge mode).</p>
    #
    # @option params [String] :payload_data
    #   <p>The binary to be sent to the end device, encoded in base64.</p>
    #
    # @option params [WirelessMetadata] :wireless_metadata
    #   <p>Metadata about the message request.</p>
    #
    # @return [Types::SendDataToWirelessDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.send_data_to_wireless_device(
    #     id: 'Id', # required
    #     transmit_mode: 1, # required
    #     payload_data: 'PayloadData', # required
    #     wireless_metadata: {
    #       lo_ra_wan: {
    #         f_port: 1
    #       },
    #       sidewalk: {
    #         seq: 1,
    #         message_type: 'CUSTOM_COMMAND_ID_NOTIFY' # accepts ["CUSTOM_COMMAND_ID_NOTIFY", "CUSTOM_COMMAND_ID_GET", "CUSTOM_COMMAND_ID_SET", "CUSTOM_COMMAND_ID_RESP"]
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SendDataToWirelessDeviceOutput
    #   resp.data.message_id #=> String
    #
    def send_data_to_wireless_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SendDataToWirelessDeviceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SendDataToWirelessDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SendDataToWirelessDevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::SendDataToWirelessDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SendDataToWirelessDevice,
        stubs: @stubs,
        params_class: Params::SendDataToWirelessDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :send_data_to_wireless_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a bulk association of all qualifying wireless devices with a multicast group.</p>
    #
    # @param [Hash] params
    #   See {Types::StartBulkAssociateWirelessDeviceWithMulticastGroupInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    #
    # @option params [String] :query_string
    #   <p>Query string used to search for wireless devices as part of the bulk associate and disassociate process.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    # @return [Types::StartBulkAssociateWirelessDeviceWithMulticastGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_bulk_associate_wireless_device_with_multicast_group(
    #     id: 'Id', # required
    #     query_string: 'QueryString',
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
    #   resp.data #=> Types::StartBulkAssociateWirelessDeviceWithMulticastGroupOutput
    #
    def start_bulk_associate_wireless_device_with_multicast_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartBulkAssociateWirelessDeviceWithMulticastGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartBulkAssociateWirelessDeviceWithMulticastGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartBulkAssociateWirelessDeviceWithMulticastGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::StartBulkAssociateWirelessDeviceWithMulticastGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartBulkAssociateWirelessDeviceWithMulticastGroup,
        stubs: @stubs,
        params_class: Params::StartBulkAssociateWirelessDeviceWithMulticastGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_bulk_associate_wireless_device_with_multicast_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a bulk disassociatin of all qualifying wireless devices from a multicast group.</p>
    #
    # @param [Hash] params
    #   See {Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    #
    # @option params [String] :query_string
    #   <p>Query string used to search for wireless devices as part of the bulk associate and disassociate process.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>
    #
    # @return [Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_bulk_disassociate_wireless_device_from_multicast_group(
    #     id: 'Id', # required
    #     query_string: 'QueryString',
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
    #   resp.data #=> Types::StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput
    #
    def start_bulk_disassociate_wireless_device_from_multicast_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartBulkDisassociateWirelessDeviceFromMulticastGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartBulkDisassociateWirelessDeviceFromMulticastGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartBulkDisassociateWirelessDeviceFromMulticastGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::StartBulkDisassociateWirelessDeviceFromMulticastGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartBulkDisassociateWirelessDeviceFromMulticastGroup,
        stubs: @stubs,
        params_class: Params::StartBulkDisassociateWirelessDeviceFromMulticastGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_bulk_disassociate_wireless_device_from_multicast_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a FUOTA task.</p>
    #
    # @param [Hash] params
    #   See {Types::StartFuotaTaskInput}.
    #
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    #
    # @option params [LoRaWANStartFuotaTask] :lo_ra_wan
    #   <p>The LoRaWAN information used to start a FUOTA task.</p>
    #
    # @return [Types::StartFuotaTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_fuota_task(
    #     id: 'Id', # required
    #     lo_ra_wan: {
    #       start_time: Time.now
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartFuotaTaskOutput
    #
    def start_fuota_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartFuotaTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartFuotaTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartFuotaTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::StartFuotaTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartFuotaTask,
        stubs: @stubs,
        params_class: Params::StartFuotaTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_fuota_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a multicast group session.</p>
    #
    # @param [Hash] params
    #   See {Types::StartMulticastGroupSessionInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    #
    # @option params [LoRaWANMulticastSession] :lo_ra_wan
    #   <p>The LoRaWAN information used with the multicast session.</p>
    #
    # @return [Types::StartMulticastGroupSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_multicast_group_session(
    #     id: 'Id', # required
    #     lo_ra_wan: {
    #       dl_dr: 1,
    #       dl_freq: 1,
    #       session_start_time: Time.now,
    #       session_timeout: 1
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartMulticastGroupSessionOutput
    #
    def start_multicast_group_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartMulticastGroupSessionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartMulticastGroupSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartMulticastGroupSession
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::StartMulticastGroupSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartMulticastGroupSession,
        stubs: @stubs,
        params_class: Params::StartMulticastGroupSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_multicast_group_session
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a tag to a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to add tags to.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Adds to or modifies the tags of the given resource. Tags are metadata that you can use to manage a resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::InternalServerException, Errors::TooManyTagsException, Errors::ValidationException]),
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

    # <p>Simulates a provisioned device by sending an uplink data payload of <code>Hello</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::TestWirelessDeviceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the wireless device to test.</p>
    #
    # @return [Types::TestWirelessDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_wireless_device(
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestWirelessDeviceOutput
    #   resp.data.result #=> String
    #
    def test_wireless_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestWirelessDeviceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestWirelessDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestWirelessDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::TestWirelessDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestWirelessDevice,
        stubs: @stubs,
        params_class: Params::TestWirelessDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_wireless_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes one or more tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to remove tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of the keys of the tags to remove from the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Updates properties of a destination.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDestinationInput}.
    #
    # @option params [String] :name
    #   <p>The new name of the resource.</p>
    #
    # @option params [String] :expression_type
    #   <p>The type of value in <code>Expression</code>.</p>
    #
    # @option params [String] :expression
    #   <p>The new rule name or topic rule to send messages to.</p>
    #
    # @option params [String] :description
    #   <p>A new description of the resource.</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the IAM Role that authorizes the destination.</p>
    #
    # @return [Types::UpdateDestinationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_destination(
    #     name: 'Name', # required
    #     expression_type: 'RuleName', # accepts ["RuleName", "MqttTopic"]
    #     expression: 'Expression',
    #     description: 'Description',
    #     role_arn: 'RoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDestinationOutput
    #
    def update_destination(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDestinationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDestinationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDestination
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateDestination
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDestination,
        stubs: @stubs,
        params_class: Params::UpdateDestinationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_destination
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update the event configuration by resource types.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEventConfigurationByResourceTypesInput}.
    #
    # @option params [DeviceRegistrationStateResourceTypeEventConfiguration] :device_registration_state
    #   <p>Device registration state resource type event configuration object for enabling and disabling wireless
    #               gateway topic.</p>
    #
    # @option params [ProximityResourceTypeEventConfiguration] :proximity
    #   <p>Proximity resource type event configuration object for enabling and disabling wireless gateway topic.</p>
    #
    # @option params [JoinResourceTypeEventConfiguration] :join
    #   <p>Join resource type event configuration object for enabling and disabling wireless device topic.</p>
    #
    # @option params [ConnectionStatusResourceTypeEventConfiguration] :connection_status
    #   <p>Connection status resource type event configuration object for enabling and disabling wireless gateway topic.</p>
    #
    # @return [Types::UpdateEventConfigurationByResourceTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_configuration_by_resource_types(
    #     device_registration_state: {
    #       sidewalk: {
    #         wireless_device_event_topic: 'Enabled' # accepts ["Enabled", "Disabled"]
    #       }
    #     },
    #     proximity: {
    #     },
    #     join: {
    #       lo_ra_wan: {
    #         wireless_device_event_topic: 'Enabled' # accepts ["Enabled", "Disabled"]
    #       }
    #     },
    #     connection_status: {
    #       lo_ra_wan: {
    #         wireless_gateway_event_topic: 'Enabled' # accepts ["Enabled", "Disabled"]
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEventConfigurationByResourceTypesOutput
    #
    def update_event_configuration_by_resource_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEventConfigurationByResourceTypesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEventConfigurationByResourceTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEventConfigurationByResourceTypes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateEventConfigurationByResourceTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEventConfigurationByResourceTypes,
        stubs: @stubs,
        params_class: Params::UpdateEventConfigurationByResourceTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_event_configuration_by_resource_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates properties of a FUOTA task.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFuotaTaskInput}.
    #
    # @option params [String] :id
    #   <p>The ID of a FUOTA task.</p>
    #
    # @option params [String] :name
    #   <p>The name of a FUOTA task.</p>
    #
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    #
    # @option params [LoRaWANFuotaTask] :lo_ra_wan
    #   <p>The LoRaWAN information used with a FUOTA task.</p>
    #
    # @option params [String] :firmware_update_image
    #   <p>The S3 URI points to a firmware update image that is to be used with a FUOTA task.</p>
    #
    # @option params [String] :firmware_update_role
    #   <p>The firmware update role that is to be used with a FUOTA task.</p>
    #
    # @return [Types::UpdateFuotaTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_fuota_task(
    #     id: 'Id', # required
    #     name: 'Name',
    #     description: 'Description',
    #     lo_ra_wan: {
    #       rf_region: 'EU868' # accepts ["EU868", "US915", "AU915", "AS923-1"]
    #     },
    #     firmware_update_image: 'FirmwareUpdateImage',
    #     firmware_update_role: 'FirmwareUpdateRole'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFuotaTaskOutput
    #
    def update_fuota_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFuotaTaskInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFuotaTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFuotaTask
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateFuotaTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFuotaTask,
        stubs: @stubs,
        params_class: Params::UpdateFuotaTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_fuota_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Set default log level, or log levels by resource types. This can be for wireless device log options or
    #             wireless gateways log options and is used to control the log messages that'll be displayed in CloudWatch.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLogLevelsByResourceTypesInput}.
    #
    # @option params [String] :default_log_level
    #   <p>The log level for a log message. The log levels can be disabled, or set to <code>ERROR</code> to display
    #               less verbose logs containing only error information, or to <code>INFO</code> for more detailed logs.</p>
    #
    # @option params [Array<WirelessDeviceLogOption>] :wireless_device_log_options
    #   <p>The list of wireless device log options.</p>
    #
    # @option params [Array<WirelessGatewayLogOption>] :wireless_gateway_log_options
    #   <p>The list of wireless gateway log options.</p>
    #
    # @return [Types::UpdateLogLevelsByResourceTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_log_levels_by_resource_types(
    #     default_log_level: 'INFO', # accepts ["INFO", "ERROR", "DISABLED"]
    #     wireless_device_log_options: [
    #       {
    #         type: 'Sidewalk', # required - accepts ["Sidewalk", "LoRaWAN"]
    #         log_level: 'INFO', # required - accepts ["INFO", "ERROR", "DISABLED"]
    #         events: [
    #           {
    #             event: 'Join', # required - accepts ["Join", "Rejoin", "Uplink_Data", "Downlink_Data", "Registration"]
    #             log_level: 'INFO' # required - accepts ["INFO", "ERROR", "DISABLED"]
    #           }
    #         ]
    #       }
    #     ],
    #     wireless_gateway_log_options: [
    #       {
    #         type: 'LoRaWAN', # required - accepts ["LoRaWAN"]
    #         log_level: 'INFO', # required - accepts ["INFO", "ERROR", "DISABLED"]
    #         events: [
    #           {
    #             event: 'CUPS_Request', # required - accepts ["CUPS_Request", "Certificate"]
    #             log_level: 'INFO' # required - accepts ["INFO", "ERROR", "DISABLED"]
    #           }
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLogLevelsByResourceTypesOutput
    #
    def update_log_levels_by_resource_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLogLevelsByResourceTypesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLogLevelsByResourceTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLogLevelsByResourceTypes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateLogLevelsByResourceTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLogLevelsByResourceTypes,
        stubs: @stubs,
        params_class: Params::UpdateLogLevelsByResourceTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_log_levels_by_resource_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates properties of a multicast group session.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMulticastGroupInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the multicast group.</p>
    #
    # @option params [String] :name
    #   <p>The name of the multicast group.</p>
    #
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    #
    # @option params [LoRaWANMulticast] :lo_ra_wan
    #   <p>The LoRaWAN information that is to be used with the multicast group.</p>
    #
    # @return [Types::UpdateMulticastGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_multicast_group(
    #     id: 'Id', # required
    #     name: 'Name',
    #     description: 'Description',
    #     lo_ra_wan: {
    #       rf_region: 'EU868', # accepts ["EU868", "US915", "AU915", "AS923-1"]
    #       dl_class: 'ClassB' # accepts ["ClassB", "ClassC"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMulticastGroupOutput
    #
    def update_multicast_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMulticastGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMulticastGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMulticastGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateMulticastGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMulticastGroup,
        stubs: @stubs,
        params_class: Params::UpdateMulticastGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_multicast_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update network analyzer configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateNetworkAnalyzerConfigurationInput}.
    #
    # @option params [String] :configuration_name
    #   <p>Name of the network analyzer configuration.</p>
    #
    # @option params [TraceContent] :trace_content
    #   <p>Trace content for your wireless gateway and wireless device resources.</p>
    #
    # @option params [Array<String>] :wireless_devices_to_add
    #   <p>Wireless device resources to add to the network analyzer configuration. Provide the
    #               <code>WirelessDeviceId</code> of the resource to add in the input array.</p>
    #
    # @option params [Array<String>] :wireless_devices_to_remove
    #   <p>Wireless device resources to remove from the network analyzer configuration. Provide the
    #               <code>WirelessDeviceId</code> of the resources to remove in the input array.</p>
    #
    # @option params [Array<String>] :wireless_gateways_to_add
    #   <p>Wireless gateway resources to add to the network analyzer configuration. Provide the
    #               <code>WirelessGatewayId</code> of the resource to add in the input array.</p>
    #
    # @option params [Array<String>] :wireless_gateways_to_remove
    #   <p>Wireless gateway resources to remove from the network analyzer configuration. Provide the
    #               <code>WirelessGatewayId</code> of the resources to remove in the input array.</p>
    #
    # @option params [String] :description
    #   <p>The description of the new resource.</p>
    #
    # @return [Types::UpdateNetworkAnalyzerConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_analyzer_configuration(
    #     configuration_name: 'ConfigurationName', # required
    #     trace_content: {
    #       wireless_device_frame_info: 'ENABLED', # accepts ["ENABLED", "DISABLED"]
    #       log_level: 'INFO' # accepts ["INFO", "ERROR", "DISABLED"]
    #     },
    #     wireless_devices_to_add: [
    #       'member'
    #     ],
    #     wireless_gateways_to_add: [
    #       'member'
    #     ],
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNetworkAnalyzerConfigurationOutput
    #
    def update_network_analyzer_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNetworkAnalyzerConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNetworkAnalyzerConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNetworkAnalyzerConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateNetworkAnalyzerConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNetworkAnalyzerConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateNetworkAnalyzerConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_network_analyzer_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates properties of a partner account.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePartnerAccountInput}.
    #
    # @option params [SidewalkUpdateAccount] :sidewalk
    #   <p>The Sidewalk account credentials.</p>
    #
    # @option params [String] :partner_account_id
    #   <p>The ID of the partner account to update.</p>
    #
    # @option params [String] :partner_type
    #   <p>The partner type.</p>
    #
    # @return [Types::UpdatePartnerAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_partner_account(
    #     sidewalk: {
    #       app_server_private_key: 'AppServerPrivateKey'
    #     }, # required
    #     partner_account_id: 'PartnerAccountId', # required
    #     partner_type: 'Sidewalk' # required - accepts ["Sidewalk"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePartnerAccountOutput
    #
    def update_partner_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePartnerAccountInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePartnerAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePartnerAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdatePartnerAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePartnerAccount,
        stubs: @stubs,
        params_class: Params::UpdatePartnerAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_partner_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Update the event configuration for a particular resource identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResourceEventConfigurationInput}.
    #
    # @option params [String] :identifier
    #   <p>Resource identifier to opt in for event messaging.</p>
    #
    # @option params [String] :identifier_type
    #   <p>Identifier type of the particular resource identifier for event configuration.</p>
    #
    # @option params [String] :partner_type
    #   <p>Partner type of the resource if the identifier type is PartnerAccountId</p>
    #
    # @option params [DeviceRegistrationStateEventConfiguration] :device_registration_state
    #   <p>Event configuration for the device registration state event</p>
    #
    # @option params [ProximityEventConfiguration] :proximity
    #   <p>Event configuration for the Proximity event</p>
    #
    # @option params [JoinEventConfiguration] :join
    #   <p>Event configuration for the join event</p>
    #
    # @option params [ConnectionStatusEventConfiguration] :connection_status
    #   <p>Event configuration for the connection status event</p>
    #
    # @return [Types::UpdateResourceEventConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_event_configuration(
    #     identifier: 'Identifier', # required
    #     identifier_type: 'PartnerAccountId', # required - accepts ["PartnerAccountId", "DevEui", "GatewayEui", "WirelessDeviceId", "WirelessGatewayId"]
    #     partner_type: 'Sidewalk', # accepts ["Sidewalk"]
    #     device_registration_state: {
    #       sidewalk: {
    #         amazon_id_event_topic: 'Enabled' # accepts ["Enabled", "Disabled"]
    #       },
    #       wireless_device_id_event_topic: 'Enabled' # accepts ["Enabled", "Disabled"]
    #     },
    #     proximity: {
    #       wireless_device_id_event_topic: 'Enabled' # accepts ["Enabled", "Disabled"]
    #     },
    #     join: {
    #       lo_ra_wan: {
    #         dev_eui_event_topic: 'Enabled' # accepts ["Enabled", "Disabled"]
    #       },
    #       wireless_device_id_event_topic: 'Enabled' # accepts ["Enabled", "Disabled"]
    #     },
    #     connection_status: {
    #       lo_ra_wan: {
    #         gateway_eui_event_topic: 'Enabled' # accepts ["Enabled", "Disabled"]
    #       },
    #       wireless_gateway_id_event_topic: 'Enabled' # accepts ["Enabled", "Disabled"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResourceEventConfigurationOutput
    #
    def update_resource_event_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResourceEventConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResourceEventConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResourceEventConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateResourceEventConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResourceEventConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateResourceEventConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resource_event_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates properties of a wireless device.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateWirelessDeviceInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    #
    # @option params [String] :destination_name
    #   <p>The name of the new destination for the device.</p>
    #
    # @option params [String] :name
    #   <p>The new name of the resource.</p>
    #
    # @option params [String] :description
    #   <p>A new description of the resource.</p>
    #
    # @option params [LoRaWANUpdateDevice] :lo_ra_wan
    #   <p>The updated wireless device's configuration.</p>
    #
    # @return [Types::UpdateWirelessDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_wireless_device(
    #     id: 'Id', # required
    #     destination_name: 'DestinationName',
    #     name: 'Name',
    #     description: 'Description',
    #     lo_ra_wan: {
    #       device_profile_id: 'DeviceProfileId',
    #       service_profile_id: 'ServiceProfileId',
    #       abp_v1_1: {
    #         f_cnt_start: 1
    #       },
    #       abp_v1_0_x: {
    #         f_cnt_start: 1
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWirelessDeviceOutput
    #
    def update_wireless_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWirelessDeviceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWirelessDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWirelessDevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateWirelessDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWirelessDevice,
        stubs: @stubs,
        params_class: Params::UpdateWirelessDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_wireless_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates properties of a wireless gateway.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateWirelessGatewayInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the resource to update.</p>
    #
    # @option params [String] :name
    #   <p>The new name of the resource.</p>
    #
    # @option params [String] :description
    #   <p>A new description of the resource.</p>
    #
    # @option params [Array<Array<String>>] :join_eui_filters
    #   <p>A list of JoinEuiRange used by LoRa gateways to filter LoRa frames.</p>
    #
    # @option params [Array<String>] :net_id_filters
    #   <p>A list of NetId values that are used by LoRa gateways to filter the uplink frames.</p>
    #
    # @return [Types::UpdateWirelessGatewayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_wireless_gateway(
    #     id: 'Id', # required
    #     name: 'Name',
    #     description: 'Description',
    #     join_eui_filters: [
    #       [
    #         'member'
    #       ]
    #     ],
    #     net_id_filters: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWirelessGatewayOutput
    #
    def update_wireless_gateway(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWirelessGatewayInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWirelessGatewayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWirelessGateway
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ThrottlingException, Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateWirelessGateway
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWirelessGateway,
        stubs: @stubs,
        params_class: Params::UpdateWirelessGatewayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_wireless_gateway
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
