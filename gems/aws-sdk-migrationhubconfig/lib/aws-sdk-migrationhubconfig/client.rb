# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::MigrationHubConfig
  # An API client for AWSMigrationHubMultiAccountService
  # See {#initialize} for a full list of supported configuration options
  # <p>The AWS Migration Hub home region APIs are available specifically for working with your
  #       Migration Hub home region. You can use these APIs to determine a home region, as well as to
  #       create and work with controls that describe the home region.</p>
  #
  #          <ul>
  #             <li>
  #                <p>You must make API calls for write actions (create, notify, associate, disassociate,
  #           import, or put) while in your home region, or a <code>HomeRegionNotSetException</code>
  #           error is returned.</p>
  #             </li>
  #             <li>
  #                <p>API calls for read actions (list, describe, stop, and delete) are permitted outside of
  #           your home region.</p>
  #             </li>
  #             <li>
  #                <p>If you call a write API outside the home region, an <code>InvalidInputException</code>
  #           is returned.</p>
  #             </li>
  #             <li>
  #                <p>You can call <code>GetHomeRegion</code> action to obtain the account's Migration Hub
  #           home region.</p>
  #             </li>
  #          </ul>
  #
  #          <p>For specific API usage, see the sections that follow in this AWS Migration Hub Home Region
  #       API reference. </p>
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
    def initialize(config = AWS::SDK::MigrationHubConfig::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>This API sets up the home region for the calling account only.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateHomeRegionControlInput}.
    #
    # @option params [String] :home_region
    #   <p>The name of the home region of the calling account.</p>
    #
    # @option params [Target] :target
    #   <p>The account for which this command sets up a home region control. The <code>Target</code>
    #         is always of type <code>ACCOUNT</code>.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Optional Boolean flag to indicate whether any effect should take place. It tests whether
    #         the caller has permission to make the call.</p>
    #
    # @return [Types::CreateHomeRegionControlOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_home_region_control(
    #     home_region: 'HomeRegion', # required
    #     target: {
    #       type: 'ACCOUNT', # required - accepts ["ACCOUNT"]
    #       id: 'Id'
    #     }, # required
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateHomeRegionControlOutput
    #   resp.data.home_region_control #=> Types::HomeRegionControl
    #   resp.data.home_region_control.control_id #=> String
    #   resp.data.home_region_control.home_region #=> String
    #   resp.data.home_region_control.target #=> Types::Target
    #   resp.data.home_region_control.target.type #=> String, one of ["ACCOUNT"]
    #   resp.data.home_region_control.target.id #=> String
    #   resp.data.home_region_control.requested_time #=> Time
    #
    def create_home_region_control(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateHomeRegionControlInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateHomeRegionControlInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateHomeRegionControl
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::DryRunOperation, Errors::InternalServerError, Errors::ThrottlingException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateHomeRegionControl
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateHomeRegionControl,
        stubs: @stubs,
        params_class: Params::CreateHomeRegionControlOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_home_region_control
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This API permits filtering on the <code>ControlId</code> and <code>HomeRegion</code>
    #       fields.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeHomeRegionControlsInput}.
    #
    # @option params [String] :control_id
    #   <p>The <code>ControlID</code> is a unique identifier string of your
    #           <code>HomeRegionControl</code> object.</p>
    #
    # @option params [String] :home_region
    #   <p>The name of the home region you'd like to view.</p>
    #
    # @option params [Target] :target
    #   <p>The target parameter specifies the identifier to which the home region is applied, which
    #         is always of type <code>ACCOUNT</code>. It applies the home region to the current
    #           <code>ACCOUNT</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of filtering results to display per page. </p>
    #
    # @option params [String] :next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, more results are available.
    #         To retrieve the next page of results, make the call again using the returned token in
    #           <code>NextToken</code>.</p>
    #
    # @return [Types::DescribeHomeRegionControlsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_home_region_controls(
    #     control_id: 'ControlId',
    #     home_region: 'HomeRegion',
    #     target: {
    #       type: 'ACCOUNT', # required - accepts ["ACCOUNT"]
    #       id: 'Id'
    #     },
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeHomeRegionControlsOutput
    #   resp.data.home_region_controls #=> Array<HomeRegionControl>
    #   resp.data.home_region_controls[0] #=> Types::HomeRegionControl
    #   resp.data.home_region_controls[0].control_id #=> String
    #   resp.data.home_region_controls[0].home_region #=> String
    #   resp.data.home_region_controls[0].target #=> Types::Target
    #   resp.data.home_region_controls[0].target.type #=> String, one of ["ACCOUNT"]
    #   resp.data.home_region_controls[0].target.id #=> String
    #   resp.data.home_region_controls[0].requested_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_home_region_controls(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeHomeRegionControlsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeHomeRegionControlsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeHomeRegionControls
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerError, Errors::ThrottlingException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeHomeRegionControls
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeHomeRegionControls,
        stubs: @stubs,
        params_class: Params::DescribeHomeRegionControlsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_home_region_controls
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the calling account’s home region, if configured. This API is used by other AWS
    #       services to determine the regional endpoint for calling AWS Application Discovery Service and
    #       Migration Hub. You must call <code>GetHomeRegion</code> at least once before you call any
    #       other AWS Application Discovery Service and AWS Migration Hub APIs, to obtain the account's
    #       Migration Hub home region.</p>
    #
    # @param [Hash] params
    #   See {Types::GetHomeRegionInput}.
    #
    # @return [Types::GetHomeRegionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_home_region()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetHomeRegionOutput
    #   resp.data.home_region #=> String
    #
    def get_home_region(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetHomeRegionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetHomeRegionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetHomeRegion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedException, Errors::InternalServerError, Errors::ThrottlingException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetHomeRegion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetHomeRegion,
        stubs: @stubs,
        params_class: Params::GetHomeRegionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_home_region
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
