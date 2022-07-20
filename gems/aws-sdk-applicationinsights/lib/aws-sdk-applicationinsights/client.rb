# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ApplicationInsights
  # An API client for EC2WindowsBarleyService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon CloudWatch Application Insights</fullname>
  #          <p> Amazon CloudWatch Application Insights is a service that helps you detect common
  #          problems with your applications. It enables you to pinpoint the source of issues in your
  #          applications (built with technologies such as Microsoft IIS, .NET, and Microsoft SQL
  #          Server), by providing key insights into detected problems.</p>
  #          <p>After you onboard your application, CloudWatch Application Insights identifies,
  #          recommends, and sets up metrics and logs. It continuously analyzes and correlates your
  #          metrics and logs for unusual behavior to surface actionable problems with your application.
  #          For example, if your application is slow and unresponsive and leading to HTTP 500 errors in
  #          your Application Load Balancer (ALB), Application Insights informs you that a memory
  #          pressure problem with your SQL Server database is occurring. It bases this analysis on
  #          impactful metrics and log errors. </p>
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
    def initialize(config = AWS::SDK::ApplicationInsights::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds an application that is created from a resource group.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [Boolean] :ops_center_enabled
    #   <p> When set to <code>true</code>, creates opsItems for any problems detected on an
    #            application. </p>
    #
    # @option params [Boolean] :cwe_monitor_enabled
    #   <p> Indicates whether Application Insights can listen to CloudWatch events for the
    #            application resources, such as <code>instance terminated</code>, <code>failed
    #               deployment</code>, and others. </p>
    #
    # @option params [String] :ops_item_sns_topic_arn
    #   <p> The SNS topic provided to Application Insights that is associated to the created
    #            opsItem. Allows you to receive notifications for updates to the opsItem. </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>List of tags to add to the application. tag key (<code>Key</code>) and an associated tag
    #            value (<code>Value</code>). The maximum length of a tag key is 128 characters. The maximum
    #            length of a tag value is 256 characters.</p>
    #
    # @option params [Boolean] :auto_config_enabled
    #   <p> Indicates whether Application Insights automatically configures unmonitored resources
    #            in the resource group. </p>
    #
    # @option params [Boolean] :auto_create
    #   <p> Configures all of the resources in the resource group by applying the recommended
    #            configurations. </p>
    #
    # @option params [String] :grouping_type
    #   <p>Application Insights can create applications based on a resource group or on an account.
    #         To create an account-based application using all of the resources in the account, set this parameter to <code>ACCOUNT_BASED</code>.
    #         </p>
    #
    # @return [Types::CreateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application(
    #     resource_group_name: 'ResourceGroupName',
    #     ops_center_enabled: false,
    #     cwe_monitor_enabled: false,
    #     ops_item_sns_topic_arn: 'OpsItemSNSTopicArn',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     auto_config_enabled: false,
    #     auto_create: false,
    #     grouping_type: 'ACCOUNT_BASED' # accepts ["ACCOUNT_BASED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationOutput
    #   resp.data.application_info #=> Types::ApplicationInfo
    #   resp.data.application_info.resource_group_name #=> String
    #   resp.data.application_info.life_cycle #=> String
    #   resp.data.application_info.ops_item_sns_topic_arn #=> String
    #   resp.data.application_info.ops_center_enabled #=> Boolean
    #   resp.data.application_info.cwe_monitor_enabled #=> Boolean
    #   resp.data.application_info.remarks #=> String
    #   resp.data.application_info.auto_config_enabled #=> Boolean
    #   resp.data.application_info.discovery_type #=> String, one of ["RESOURCE_GROUP_BASED", "ACCOUNT_BASED"]
    #
    def create_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceInUseException, Errors::ValidationException, Errors::TagsAlreadyExistException]),
        data_parser: Parsers::CreateApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApplication,
        stubs: @stubs,
        params_class: Params::CreateApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a custom component by grouping similar standalone instances to monitor.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateComponentInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    #
    # @option params [Array<String>] :resource_list
    #   <p>The list of resource ARNs that belong to the component.</p>
    #
    # @return [Types::CreateComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_component(
    #     resource_group_name: 'ResourceGroupName', # required
    #     component_name: 'ComponentName', # required
    #     resource_list: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateComponentOutput
    #
    def create_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateComponent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ResourceInUseException, Errors::ValidationException]),
        data_parser: Parsers::CreateComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateComponent,
        stubs: @stubs,
        params_class: Params::CreateComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds an log pattern to a <code>LogPatternSet</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLogPatternInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [String] :pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #
    # @option params [String] :pattern_name
    #   <p>The name of the log pattern.</p>
    #
    # @option params [String] :pattern
    #   <p>The log pattern. The pattern must be DFA compatible. Patterns that utilize forward
    #            lookahead or backreference constructions are not supported.</p>
    #
    # @option params [Integer] :rank
    #   <p>Rank of the log pattern. Must be a value between <code>1</code> and
    #               <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set
    #            your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will
    #            be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be
    #            last to get matched. When you configure custom log patterns from the console, a
    #               <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A
    #               <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a
    #               <code>High</code> severity pattern translates to a <code>250,000</code> rank. Rank
    #            values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for
    #            AWS-provided patterns. </p>
    #
    # @return [Types::CreateLogPatternOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_log_pattern(
    #     resource_group_name: 'ResourceGroupName', # required
    #     pattern_set_name: 'PatternSetName', # required
    #     pattern_name: 'PatternName', # required
    #     pattern: 'Pattern', # required
    #     rank: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLogPatternOutput
    #   resp.data.log_pattern #=> Types::LogPattern
    #   resp.data.log_pattern.pattern_set_name #=> String
    #   resp.data.log_pattern.pattern_name #=> String
    #   resp.data.log_pattern.pattern #=> String
    #   resp.data.log_pattern.rank #=> Integer
    #   resp.data.resource_group_name #=> String
    #
    def create_log_pattern(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLogPatternInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLogPatternInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLogPattern
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ResourceInUseException, Errors::ValidationException]),
        data_parser: Parsers::CreateLogPattern
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLogPattern,
        stubs: @stubs,
        params_class: Params::CreateLogPatternOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_log_pattern
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified application from monitoring. Does not delete the
    #          application.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @return [Types::DeleteApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_application(
    #     resource_group_name: 'ResourceGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationOutput
    #
    def delete_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplication,
        stubs: @stubs,
        params_class: Params::DeleteApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Ungroups a custom component. When you ungroup custom components, all applicable monitors
    #          that are set up for the component are removed and the instances revert to their standalone
    #          status.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteComponentInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    #
    # @return [Types::DeleteComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_component(
    #     resource_group_name: 'ResourceGroupName', # required
    #     component_name: 'ComponentName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteComponentOutput
    #
    def delete_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteComponent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DeleteComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteComponent,
        stubs: @stubs,
        params_class: Params::DeleteComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified log pattern from a <code>LogPatternSet</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLogPatternInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [String] :pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #
    # @option params [String] :pattern_name
    #   <p>The name of the log pattern.</p>
    #
    # @return [Types::DeleteLogPatternOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_log_pattern(
    #     resource_group_name: 'ResourceGroupName', # required
    #     pattern_set_name: 'PatternSetName', # required
    #     pattern_name: 'PatternName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLogPatternOutput
    #
    def delete_log_pattern(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLogPatternInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLogPatternInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLogPattern
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException, Errors::BadRequestException]),
        data_parser: Parsers::DeleteLogPattern
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLogPattern,
        stubs: @stubs,
        params_class: Params::DeleteLogPatternOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_log_pattern
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the application.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeApplicationInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @return [Types::DescribeApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application(
    #     resource_group_name: 'ResourceGroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeApplicationOutput
    #   resp.data.application_info #=> Types::ApplicationInfo
    #   resp.data.application_info.resource_group_name #=> String
    #   resp.data.application_info.life_cycle #=> String
    #   resp.data.application_info.ops_item_sns_topic_arn #=> String
    #   resp.data.application_info.ops_center_enabled #=> Boolean
    #   resp.data.application_info.cwe_monitor_enabled #=> Boolean
    #   resp.data.application_info.remarks #=> String
    #   resp.data.application_info.auto_config_enabled #=> Boolean
    #   resp.data.application_info.discovery_type #=> String, one of ["RESOURCE_GROUP_BASED", "ACCOUNT_BASED"]
    #
    def describe_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApplication,
        stubs: @stubs,
        params_class: Params::DescribeApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a component and lists the resources that are grouped together in a
    #          component.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeComponentInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    #
    # @return [Types::DescribeComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_component(
    #     resource_group_name: 'ResourceGroupName', # required
    #     component_name: 'ComponentName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeComponentOutput
    #   resp.data.application_component #=> Types::ApplicationComponent
    #   resp.data.application_component.component_name #=> String
    #   resp.data.application_component.component_remarks #=> String
    #   resp.data.application_component.resource_type #=> String
    #   resp.data.application_component.os_type #=> String, one of ["WINDOWS", "LINUX"]
    #   resp.data.application_component.tier #=> String, one of ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY"]
    #   resp.data.application_component.monitor #=> Boolean
    #   resp.data.application_component.detected_workload #=> Hash<String, Hash<String, String>>
    #   resp.data.application_component.detected_workload['key'] #=> Hash<String, String>
    #   resp.data.application_component.detected_workload['key']['key'] #=> String
    #   resp.data.resource_list #=> Array<String>
    #   resp.data.resource_list[0] #=> String
    #
    def describe_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeComponent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeComponent,
        stubs: @stubs,
        params_class: Params::DescribeComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the monitoring configuration of the component.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeComponentConfigurationInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    #
    # @return [Types::DescribeComponentConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_component_configuration(
    #     resource_group_name: 'ResourceGroupName', # required
    #     component_name: 'ComponentName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeComponentConfigurationOutput
    #   resp.data.monitor #=> Boolean
    #   resp.data.tier #=> String, one of ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY"]
    #   resp.data.component_configuration #=> String
    #
    def describe_component_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeComponentConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeComponentConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeComponentConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeComponentConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeComponentConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeComponentConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_component_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the recommended monitoring configuration of the component.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeComponentConfigurationRecommendationInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    #
    # @option params [String] :tier
    #   <p>The tier of the application component.</p>
    #
    # @return [Types::DescribeComponentConfigurationRecommendationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_component_configuration_recommendation(
    #     resource_group_name: 'ResourceGroupName', # required
    #     component_name: 'ComponentName', # required
    #     tier: 'CUSTOM' # required - accepts ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeComponentConfigurationRecommendationOutput
    #   resp.data.component_configuration #=> String
    #
    def describe_component_configuration_recommendation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeComponentConfigurationRecommendationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeComponentConfigurationRecommendationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeComponentConfigurationRecommendation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeComponentConfigurationRecommendation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeComponentConfigurationRecommendation,
        stubs: @stubs,
        params_class: Params::DescribeComponentConfigurationRecommendationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_component_configuration_recommendation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describe a specific log pattern from a <code>LogPatternSet</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeLogPatternInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [String] :pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #
    # @option params [String] :pattern_name
    #   <p>The name of the log pattern.</p>
    #
    # @return [Types::DescribeLogPatternOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_log_pattern(
    #     resource_group_name: 'ResourceGroupName', # required
    #     pattern_set_name: 'PatternSetName', # required
    #     pattern_name: 'PatternName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeLogPatternOutput
    #   resp.data.resource_group_name #=> String
    #   resp.data.log_pattern #=> Types::LogPattern
    #   resp.data.log_pattern.pattern_set_name #=> String
    #   resp.data.log_pattern.pattern_name #=> String
    #   resp.data.log_pattern.pattern #=> String
    #   resp.data.log_pattern.rank #=> Integer
    #
    def describe_log_pattern(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeLogPatternInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeLogPatternInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeLogPattern
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeLogPattern
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeLogPattern,
        stubs: @stubs,
        params_class: Params::DescribeLogPatternOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_log_pattern
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an anomaly or error with the application.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeObservationInput}.
    #
    # @option params [String] :observation_id
    #   <p>The ID of the observation.</p>
    #
    # @return [Types::DescribeObservationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_observation(
    #     observation_id: 'ObservationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeObservationOutput
    #   resp.data.observation #=> Types::Observation
    #   resp.data.observation.id #=> String
    #   resp.data.observation.start_time #=> Time
    #   resp.data.observation.end_time #=> Time
    #   resp.data.observation.source_type #=> String
    #   resp.data.observation.source_arn #=> String
    #   resp.data.observation.log_group #=> String
    #   resp.data.observation.line_time #=> Time
    #   resp.data.observation.log_text #=> String
    #   resp.data.observation.log_filter #=> String, one of ["ERROR", "WARN", "INFO"]
    #   resp.data.observation.metric_namespace #=> String
    #   resp.data.observation.metric_name #=> String
    #   resp.data.observation.unit #=> String
    #   resp.data.observation.value #=> Float
    #   resp.data.observation.cloud_watch_event_id #=> String
    #   resp.data.observation.cloud_watch_event_source #=> String, one of ["EC2", "CODE_DEPLOY", "HEALTH", "RDS"]
    #   resp.data.observation.cloud_watch_event_detail_type #=> String
    #   resp.data.observation.health_event_arn #=> String
    #   resp.data.observation.health_service #=> String
    #   resp.data.observation.health_event_type_code #=> String
    #   resp.data.observation.health_event_type_category #=> String
    #   resp.data.observation.health_event_description #=> String
    #   resp.data.observation.code_deploy_deployment_id #=> String
    #   resp.data.observation.code_deploy_deployment_group #=> String
    #   resp.data.observation.code_deploy_state #=> String
    #   resp.data.observation.code_deploy_application #=> String
    #   resp.data.observation.code_deploy_instance_group_id #=> String
    #   resp.data.observation.ec2_state #=> String
    #   resp.data.observation.rds_event_categories #=> String
    #   resp.data.observation.rds_event_message #=> String
    #   resp.data.observation.s3_event_name #=> String
    #   resp.data.observation.states_execution_arn #=> String
    #   resp.data.observation.states_arn #=> String
    #   resp.data.observation.states_status #=> String
    #   resp.data.observation.states_input #=> String
    #   resp.data.observation.ebs_event #=> String
    #   resp.data.observation.ebs_result #=> String
    #   resp.data.observation.ebs_cause #=> String
    #   resp.data.observation.ebs_request_id #=> String
    #   resp.data.observation.x_ray_fault_percent #=> Integer
    #   resp.data.observation.x_ray_throttle_percent #=> Integer
    #   resp.data.observation.x_ray_error_percent #=> Integer
    #   resp.data.observation.x_ray_request_count #=> Integer
    #   resp.data.observation.x_ray_request_average_latency #=> Integer
    #   resp.data.observation.x_ray_node_name #=> String
    #   resp.data.observation.x_ray_node_type #=> String
    #
    def describe_observation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeObservationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeObservationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeObservation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeObservation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeObservation,
        stubs: @stubs,
        params_class: Params::DescribeObservationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_observation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes an application problem.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProblemInput}.
    #
    # @option params [String] :problem_id
    #   <p>The ID of the problem.</p>
    #
    # @return [Types::DescribeProblemOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_problem(
    #     problem_id: 'ProblemId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProblemOutput
    #   resp.data.problem #=> Types::Problem
    #   resp.data.problem.id #=> String
    #   resp.data.problem.title #=> String
    #   resp.data.problem.insights #=> String
    #   resp.data.problem.status #=> String, one of ["IGNORE", "RESOLVED", "PENDING", "RECURRING"]
    #   resp.data.problem.affected_resource #=> String
    #   resp.data.problem.start_time #=> Time
    #   resp.data.problem.end_time #=> Time
    #   resp.data.problem.severity_level #=> String, one of ["Informative", "Low", "Medium", "High"]
    #   resp.data.problem.resource_group_name #=> String
    #   resp.data.problem.feedback #=> Hash<String, String>
    #   resp.data.problem.feedback['key'] #=> String, one of ["NOT_SPECIFIED", "USEFUL", "NOT_USEFUL"]
    #   resp.data.problem.recurring_count #=> Integer
    #   resp.data.problem.last_recurrence_time #=> Time
    #
    def describe_problem(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProblemInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProblemInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProblem
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeProblem
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProblem,
        stubs: @stubs,
        params_class: Params::DescribeProblemOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_problem
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the anomalies or errors associated with the problem.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProblemObservationsInput}.
    #
    # @option params [String] :problem_id
    #   <p>The ID of the problem.</p>
    #
    # @return [Types::DescribeProblemObservationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_problem_observations(
    #     problem_id: 'ProblemId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProblemObservationsOutput
    #   resp.data.related_observations #=> Types::RelatedObservations
    #   resp.data.related_observations.observation_list #=> Array<Observation>
    #   resp.data.related_observations.observation_list[0] #=> Types::Observation
    #   resp.data.related_observations.observation_list[0].id #=> String
    #   resp.data.related_observations.observation_list[0].start_time #=> Time
    #   resp.data.related_observations.observation_list[0].end_time #=> Time
    #   resp.data.related_observations.observation_list[0].source_type #=> String
    #   resp.data.related_observations.observation_list[0].source_arn #=> String
    #   resp.data.related_observations.observation_list[0].log_group #=> String
    #   resp.data.related_observations.observation_list[0].line_time #=> Time
    #   resp.data.related_observations.observation_list[0].log_text #=> String
    #   resp.data.related_observations.observation_list[0].log_filter #=> String, one of ["ERROR", "WARN", "INFO"]
    #   resp.data.related_observations.observation_list[0].metric_namespace #=> String
    #   resp.data.related_observations.observation_list[0].metric_name #=> String
    #   resp.data.related_observations.observation_list[0].unit #=> String
    #   resp.data.related_observations.observation_list[0].value #=> Float
    #   resp.data.related_observations.observation_list[0].cloud_watch_event_id #=> String
    #   resp.data.related_observations.observation_list[0].cloud_watch_event_source #=> String, one of ["EC2", "CODE_DEPLOY", "HEALTH", "RDS"]
    #   resp.data.related_observations.observation_list[0].cloud_watch_event_detail_type #=> String
    #   resp.data.related_observations.observation_list[0].health_event_arn #=> String
    #   resp.data.related_observations.observation_list[0].health_service #=> String
    #   resp.data.related_observations.observation_list[0].health_event_type_code #=> String
    #   resp.data.related_observations.observation_list[0].health_event_type_category #=> String
    #   resp.data.related_observations.observation_list[0].health_event_description #=> String
    #   resp.data.related_observations.observation_list[0].code_deploy_deployment_id #=> String
    #   resp.data.related_observations.observation_list[0].code_deploy_deployment_group #=> String
    #   resp.data.related_observations.observation_list[0].code_deploy_state #=> String
    #   resp.data.related_observations.observation_list[0].code_deploy_application #=> String
    #   resp.data.related_observations.observation_list[0].code_deploy_instance_group_id #=> String
    #   resp.data.related_observations.observation_list[0].ec2_state #=> String
    #   resp.data.related_observations.observation_list[0].rds_event_categories #=> String
    #   resp.data.related_observations.observation_list[0].rds_event_message #=> String
    #   resp.data.related_observations.observation_list[0].s3_event_name #=> String
    #   resp.data.related_observations.observation_list[0].states_execution_arn #=> String
    #   resp.data.related_observations.observation_list[0].states_arn #=> String
    #   resp.data.related_observations.observation_list[0].states_status #=> String
    #   resp.data.related_observations.observation_list[0].states_input #=> String
    #   resp.data.related_observations.observation_list[0].ebs_event #=> String
    #   resp.data.related_observations.observation_list[0].ebs_result #=> String
    #   resp.data.related_observations.observation_list[0].ebs_cause #=> String
    #   resp.data.related_observations.observation_list[0].ebs_request_id #=> String
    #   resp.data.related_observations.observation_list[0].x_ray_fault_percent #=> Integer
    #   resp.data.related_observations.observation_list[0].x_ray_throttle_percent #=> Integer
    #   resp.data.related_observations.observation_list[0].x_ray_error_percent #=> Integer
    #   resp.data.related_observations.observation_list[0].x_ray_request_count #=> Integer
    #   resp.data.related_observations.observation_list[0].x_ray_request_average_latency #=> Integer
    #   resp.data.related_observations.observation_list[0].x_ray_node_name #=> String
    #   resp.data.related_observations.observation_list[0].x_ray_node_type #=> String
    #
    def describe_problem_observations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProblemObservationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProblemObservationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProblemObservations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DescribeProblemObservations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProblemObservations,
        stubs: @stubs,
        params_class: Params::DescribeProblemObservationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_problem_observations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the IDs of the applications that you are monitoring. </p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #
    # @return [Types::ListApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_applications(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationsOutput
    #   resp.data.application_info_list #=> Array<ApplicationInfo>
    #   resp.data.application_info_list[0] #=> Types::ApplicationInfo
    #   resp.data.application_info_list[0].resource_group_name #=> String
    #   resp.data.application_info_list[0].life_cycle #=> String
    #   resp.data.application_info_list[0].ops_item_sns_topic_arn #=> String
    #   resp.data.application_info_list[0].ops_center_enabled #=> Boolean
    #   resp.data.application_info_list[0].cwe_monitor_enabled #=> Boolean
    #   resp.data.application_info_list[0].remarks #=> String
    #   resp.data.application_info_list[0].auto_config_enabled #=> Boolean
    #   resp.data.application_info_list[0].discovery_type #=> String, one of ["RESOURCE_GROUP_BASED", "ACCOUNT_BASED"]
    #   resp.data.next_token #=> String
    #
    def list_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListApplications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplications,
        stubs: @stubs,
        params_class: Params::ListApplicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_applications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the auto-grouped, standalone, and custom components of the application.</p>
    #
    # @param [Hash] params
    #   See {Types::ListComponentsInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #
    # @return [Types::ListComponentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_components(
    #     resource_group_name: 'ResourceGroupName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListComponentsOutput
    #   resp.data.application_component_list #=> Array<ApplicationComponent>
    #   resp.data.application_component_list[0] #=> Types::ApplicationComponent
    #   resp.data.application_component_list[0].component_name #=> String
    #   resp.data.application_component_list[0].component_remarks #=> String
    #   resp.data.application_component_list[0].resource_type #=> String
    #   resp.data.application_component_list[0].os_type #=> String, one of ["WINDOWS", "LINUX"]
    #   resp.data.application_component_list[0].tier #=> String, one of ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY"]
    #   resp.data.application_component_list[0].monitor #=> Boolean
    #   resp.data.application_component_list[0].detected_workload #=> Hash<String, Hash<String, String>>
    #   resp.data.application_component_list[0].detected_workload['key'] #=> Hash<String, String>
    #   resp.data.application_component_list[0].detected_workload['key']['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_components(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListComponentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListComponentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListComponents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListComponents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListComponents,
        stubs: @stubs,
        params_class: Params::ListComponentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_components
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by
    #          Application Insights. Examples of events represented are: </p>
    #          <ul>
    #             <li>
    #                <p>INFO: creating a new alarm or updating an alarm threshold.</p>
    #             </li>
    #             <li>
    #                <p>WARN: alarm not created due to insufficient data points used to predict
    #                thresholds.</p>
    #             </li>
    #             <li>
    #                <p>ERROR: alarm not created due to permission errors or exceeding quotas. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListConfigurationHistoryInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>Resource group to which the application belongs. </p>
    #
    # @option params [Time] :start_time
    #   <p>The start time of the event. </p>
    #
    # @option params [Time] :end_time
    #   <p>The end time of the event.</p>
    #
    # @option params [String] :event_status
    #   <p>The status of the configuration update event. Possible values include INFO, WARN, and
    #            ERROR.</p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of results returned by <code>ListConfigurationHistory</code> in
    #            paginated output. When this parameter is used, <code>ListConfigurationHistory</code>
    #            returns only <code>MaxResults</code> in a single page along with a <code>NextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListConfigurationHistory</code> request with the returned
    #               <code>NextToken</code> value. If this parameter is not used, then
    #               <code>ListConfigurationHistory</code> returns all results. </p>
    #
    # @option params [String] :next_token
    #   <p>The <code>NextToken</code> value returned from a previous paginated
    #               <code>ListConfigurationHistory</code> request where <code>MaxResults</code> was used and
    #            the results exceeded the value of that parameter. Pagination continues from the end of the
    #            previous results that returned the <code>NextToken</code> value. This value is
    #               <code>null</code> when there are no more results to return.</p>
    #
    # @return [Types::ListConfigurationHistoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configuration_history(
    #     resource_group_name: 'ResourceGroupName',
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     event_status: 'INFO', # accepts ["INFO", "WARN", "ERROR"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConfigurationHistoryOutput
    #   resp.data.event_list #=> Array<ConfigurationEvent>
    #   resp.data.event_list[0] #=> Types::ConfigurationEvent
    #   resp.data.event_list[0].monitored_resource_arn #=> String
    #   resp.data.event_list[0].event_status #=> String, one of ["INFO", "WARN", "ERROR"]
    #   resp.data.event_list[0].event_resource_type #=> String, one of ["CLOUDWATCH_ALARM", "CLOUDWATCH_LOG", "CLOUDFORMATION", "SSM_ASSOCIATION"]
    #   resp.data.event_list[0].event_time #=> Time
    #   resp.data.event_list[0].event_detail #=> String
    #   resp.data.event_list[0].event_resource_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_configuration_history(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConfigurationHistoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConfigurationHistoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConfigurationHistory
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListConfigurationHistory
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConfigurationHistory,
        stubs: @stubs,
        params_class: Params::ListConfigurationHistoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_configuration_history
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the log pattern sets in the specific application.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLogPatternSetsInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #
    # @return [Types::ListLogPatternSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_log_pattern_sets(
    #     resource_group_name: 'ResourceGroupName', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLogPatternSetsOutput
    #   resp.data.resource_group_name #=> String
    #   resp.data.log_pattern_sets #=> Array<String>
    #   resp.data.log_pattern_sets[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_log_pattern_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLogPatternSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLogPatternSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLogPatternSets
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListLogPatternSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLogPatternSets,
        stubs: @stubs,
        params_class: Params::ListLogPatternSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_log_pattern_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the log patterns in the specific log <code>LogPatternSet</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLogPatternsInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [String] :pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #
    # @return [Types::ListLogPatternsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_log_patterns(
    #     resource_group_name: 'ResourceGroupName', # required
    #     pattern_set_name: 'PatternSetName',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLogPatternsOutput
    #   resp.data.resource_group_name #=> String
    #   resp.data.log_patterns #=> Array<LogPattern>
    #   resp.data.log_patterns[0] #=> Types::LogPattern
    #   resp.data.log_patterns[0].pattern_set_name #=> String
    #   resp.data.log_patterns[0].pattern_name #=> String
    #   resp.data.log_patterns[0].pattern #=> String
    #   resp.data.log_patterns[0].rank #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_log_patterns(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLogPatternsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLogPatternsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLogPatterns
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListLogPatterns
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLogPatterns,
        stubs: @stubs,
        params_class: Params::ListLogPatternsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_log_patterns
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the problems with your application.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProblemsInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [Time] :start_time
    #   <p>The time when the problem was detected, in epoch seconds. If you don't specify a time
    #            frame for the request, problems within the past seven days are returned.</p>
    #
    # @option params [Time] :end_time
    #   <p>The time when the problem ended, in epoch seconds. If not specified, problems within the
    #            past seven days are returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #            results, make another call with the returned <code>NextToken</code> value.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request the next page of results.</p>
    #
    # @option params [String] :component_name
    #   <p> The name of the component. </p>
    #
    # @return [Types::ListProblemsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_problems(
    #     resource_group_name: 'ResourceGroupName',
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     component_name: 'ComponentName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProblemsOutput
    #   resp.data.problem_list #=> Array<Problem>
    #   resp.data.problem_list[0] #=> Types::Problem
    #   resp.data.problem_list[0].id #=> String
    #   resp.data.problem_list[0].title #=> String
    #   resp.data.problem_list[0].insights #=> String
    #   resp.data.problem_list[0].status #=> String, one of ["IGNORE", "RESOLVED", "PENDING", "RECURRING"]
    #   resp.data.problem_list[0].affected_resource #=> String
    #   resp.data.problem_list[0].start_time #=> Time
    #   resp.data.problem_list[0].end_time #=> Time
    #   resp.data.problem_list[0].severity_level #=> String, one of ["Informative", "Low", "Medium", "High"]
    #   resp.data.problem_list[0].resource_group_name #=> String
    #   resp.data.problem_list[0].feedback #=> Hash<String, String>
    #   resp.data.problem_list[0].feedback['key'] #=> String, one of ["NOT_SPECIFIED", "USEFUL", "NOT_USEFUL"]
    #   resp.data.problem_list[0].recurring_count #=> Integer
    #   resp.data.problem_list[0].last_recurrence_time #=> Time
    #   resp.data.next_token #=> String
    #   resp.data.resource_group_name #=> String
    #
    def list_problems(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProblemsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProblemsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProblems
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListProblems
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProblems,
        stubs: @stubs,
        params_class: Params::ListProblemsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_problems
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve a list of the tags (keys and values) that are associated with a specified
    #          application. A <i>tag</i> is a label that you optionally define and associate
    #          with an application. Each tag consists of a required <i>tag key</i> and an
    #          optional associated <i>tag value</i>. A tag key is a general label that acts
    #          as a category for more specific tag values. A tag value acts as a descriptor within a tag
    #          key.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the application that you want to retrieve tag
    #            information for.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Add one or more tags (keys and values) to a specified application. A
    #             <i>tag</i> is a label that you optionally define and associate with an
    #          application. Tags can help you categorize and manage application in different ways, such as
    #          by purpose, owner, environment, or other criteria. </p>
    #          <p>Each tag consists of a required <i>tag key</i> and an associated
    #             <i>tag value</i>, both of which you define. A tag key is a general label
    #          that acts as a category for more specific tag values. A tag value acts as a descriptor
    #          within a tag key.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the application that you want to add one or more tags
    #            to.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that to add to the application. A tag consists of a required tag key
    #               (<code>Key</code>) and an associated tag value (<code>Value</code>). The maximum length
    #            of a tag key is 128 characters. The maximum length of a tag value is 256 characters.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyTagsException, Errors::ValidationException]),
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

    # <p>Remove one or more tags (keys and values) from a specified application.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the application that you want to remove one or more
    #            tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tags (tag keys) that you want to remove from the resource. When you specify a tag
    #            key, the action removes both that key and its associated tag value.</p>
    #            <p>To remove more than one tag from the application, append the <code>TagKeys</code>
    #            parameter and argument for each additional tag to remove, separated by an ampersand.
    #         </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException]),
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

    # <p>Updates the application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [Boolean] :ops_center_enabled
    #   <p> When set to <code>true</code>, creates opsItems for any problems detected on an
    #            application. </p>
    #
    # @option params [Boolean] :cwe_monitor_enabled
    #   <p> Indicates whether Application Insights can listen to CloudWatch events for the
    #            application resources, such as <code>instance terminated</code>, <code>failed
    #               deployment</code>, and others. </p>
    #
    # @option params [String] :ops_item_sns_topic_arn
    #   <p> The SNS topic provided to Application Insights that is associated to the created
    #            opsItem. Allows you to receive notifications for updates to the opsItem.</p>
    #
    # @option params [Boolean] :remove_sns_topic
    #   <p> Disassociates the SNS topic from the opsItem created for detected problems.</p>
    #
    # @option params [Boolean] :auto_config_enabled
    #   <p> Turns auto-configuration on or off. </p>
    #
    # @return [Types::UpdateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application(
    #     resource_group_name: 'ResourceGroupName', # required
    #     ops_center_enabled: false,
    #     cwe_monitor_enabled: false,
    #     ops_item_sns_topic_arn: 'OpsItemSNSTopicArn',
    #     remove_sns_topic: false,
    #     auto_config_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationOutput
    #   resp.data.application_info #=> Types::ApplicationInfo
    #   resp.data.application_info.resource_group_name #=> String
    #   resp.data.application_info.life_cycle #=> String
    #   resp.data.application_info.ops_item_sns_topic_arn #=> String
    #   resp.data.application_info.ops_center_enabled #=> Boolean
    #   resp.data.application_info.cwe_monitor_enabled #=> Boolean
    #   resp.data.application_info.remarks #=> String
    #   resp.data.application_info.auto_config_enabled #=> Boolean
    #   resp.data.application_info.discovery_type #=> String, one of ["RESOURCE_GROUP_BASED", "ACCOUNT_BASED"]
    #
    def update_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApplication,
        stubs: @stubs,
        params_class: Params::UpdateApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the custom component name and/or the list of resources that make up the
    #          component.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateComponentInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    #
    # @option params [String] :new_component_name
    #   <p>The new name of the component.</p>
    #
    # @option params [Array<String>] :resource_list
    #   <p>The list of resource ARNs that belong to the component.</p>
    #
    # @return [Types::UpdateComponentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_component(
    #     resource_group_name: 'ResourceGroupName', # required
    #     component_name: 'ComponentName', # required
    #     new_component_name: 'NewComponentName',
    #     resource_list: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateComponentOutput
    #
    def update_component(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateComponentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateComponentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateComponent
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ResourceInUseException, Errors::ValidationException]),
        data_parser: Parsers::UpdateComponent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateComponent,
        stubs: @stubs,
        params_class: Params::UpdateComponentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_component
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the monitoring configurations for the component. The configuration input
    #          parameter is an escaped JSON of the configuration and should match the schema of what is
    #          returned by <code>DescribeComponentConfigurationRecommendation</code>. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateComponentConfigurationInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [String] :component_name
    #   <p>The name of the component.</p>
    #
    # @option params [Boolean] :monitor
    #   <p>Indicates whether the application component is monitored.</p>
    #
    # @option params [String] :tier
    #   <p>The tier of the application component.</p>
    #
    # @option params [String] :component_configuration
    #   <p>The configuration settings of the component. The value is the escaped JSON of the
    #            configuration. For more information about the JSON format, see <a href="https://docs.aws.amazon.com/sdk-for-javascript/v2/developer-guide/working-with-json.html">Working with JSON</a>. You can send a request to
    #               <code>DescribeComponentConfigurationRecommendation</code> to see the recommended
    #            configuration for a component. For the complete format of the component configuration file,
    #            see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/component-config.html">Component Configuration</a>.</p>
    #
    # @option params [Boolean] :auto_config_enabled
    #   <p> Automatically configures the component by applying the recommended configurations.
    #         </p>
    #
    # @return [Types::UpdateComponentConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_component_configuration(
    #     resource_group_name: 'ResourceGroupName', # required
    #     component_name: 'ComponentName', # required
    #     monitor: false,
    #     tier: 'CUSTOM', # accepts ["CUSTOM", "DEFAULT", "DOT_NET_CORE", "DOT_NET_WORKER", "DOT_NET_WEB_TIER", "DOT_NET_WEB", "SQL_SERVER", "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP", "MYSQL", "POSTGRESQL", "JAVA_JMX", "ORACLE", "SAP_HANA_MULTI_NODE", "SAP_HANA_SINGLE_NODE", "SAP_HANA_HIGH_AVAILABILITY", "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE", "SHAREPOINT", "ACTIVE_DIRECTORY"]
    #     component_configuration: 'ComponentConfiguration',
    #     auto_config_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateComponentConfigurationOutput
    #
    def update_component_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateComponentConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateComponentConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateComponentConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::UpdateComponentConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateComponentConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateComponentConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_component_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a log pattern to a <code>LogPatternSet</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLogPatternInput}.
    #
    # @option params [String] :resource_group_name
    #   <p>The name of the resource group.</p>
    #
    # @option params [String] :pattern_set_name
    #   <p>The name of the log pattern set.</p>
    #
    # @option params [String] :pattern_name
    #   <p>The name of the log pattern.</p>
    #
    # @option params [String] :pattern
    #   <p>The log pattern. The pattern must be DFA compatible. Patterns that utilize forward
    #            lookahead or backreference constructions are not supported.</p>
    #
    # @option params [Integer] :rank
    #   <p>Rank of the log pattern. Must be a value between <code>1</code> and
    #               <code>1,000,000</code>. The patterns are sorted by rank, so we recommend that you set
    #            your highest priority patterns with the lowest rank. A pattern of rank <code>1</code> will
    #            be the first to get matched to a log line. A pattern of rank <code>1,000,000</code> will be
    #            last to get matched. When you configure custom log patterns from the console, a
    #               <code>Low</code> severity pattern translates to a <code>750,000</code> rank. A
    #               <code>Medium</code> severity pattern translates to a <code>500,000</code> rank. And a
    #               <code>High</code> severity pattern translates to a <code>250,000</code> rank. Rank
    #            values less than <code>1</code> or greater than <code>1,000,000</code> are reserved for
    #            AWS-provided patterns. </p>
    #
    # @return [Types::UpdateLogPatternOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_log_pattern(
    #     resource_group_name: 'ResourceGroupName', # required
    #     pattern_set_name: 'PatternSetName', # required
    #     pattern_name: 'PatternName', # required
    #     pattern: 'Pattern',
    #     rank: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLogPatternOutput
    #   resp.data.resource_group_name #=> String
    #   resp.data.log_pattern #=> Types::LogPattern
    #   resp.data.log_pattern.pattern_set_name #=> String
    #   resp.data.log_pattern.pattern_name #=> String
    #   resp.data.log_pattern.pattern #=> String
    #   resp.data.log_pattern.rank #=> Integer
    #
    def update_log_pattern(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLogPatternInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLogPatternInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLogPattern
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InternalServerException, Errors::ResourceInUseException, Errors::ValidationException]),
        data_parser: Parsers::UpdateLogPattern
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLogPattern,
        stubs: @stubs,
        params_class: Params::UpdateLogPatternOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_log_pattern
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
