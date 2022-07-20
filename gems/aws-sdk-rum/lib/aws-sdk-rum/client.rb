# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::RUM
  # An API client for RUM
  # See {#initialize} for a full list of supported configuration options
  # <p>With Amazon CloudWatch RUM, you can perform real-user monitoring to collect client-side data about
  #        your web application performance from actual user sessions in real time. The data collected includes page load
  #        times, client-side errors, and user behavior. When you view this data, you can see it all aggregated together and
  #        also see breakdowns by the browsers and devices that your customers use.</p>
  #
  #          <p>You can use the collected data to quickly identify and debug client-side performance issues. CloudWatch
  #        RUM helps you visualize anomalies in your application performance and find relevant debugging data such as error
  #        messages, stack traces, and user sessions. You can also use RUM to
  #        understand the range of end-user impact including the number of users, geolocations, and browsers used.</p>
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
    def initialize(config = AWS::SDK::RUM::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a Amazon CloudWatch RUM app monitor, which collects telemetry data from your application and sends that
    #       data to RUM. The data includes performance and reliability information such as page load time, client-side errors,
    #       and user behavior.</p>
    #          <p>You use this operation only to create a new app monitor. To update an existing app monitor, use <a href="https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_UpdateAppMonitor.html">UpdateAppMonitor</a> instead.</p>
    #          <p>After you create an app monitor, sign in to the CloudWatch RUM console to get
    #          the JavaScript code snippet to add to your web application. For more information, see
    #          <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html">How do I find a code snippet
    #          that I've already generated?</a>
    #          </p>
    #
    # @see https://docs.aws.amazon.com/rum/latest/developerguide/CreateAppMonitor.html API Reference
    #
    # @param [Hash] params
    #   See {Types::CreateAppMonitorInput}.
    #
    # @option params [String] :name
    #   <p>A name for the app monitor.</p>
    #
    # @option params [String] :domain
    #   <p>The top-level internet domain name for which your application has administrative authority.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Assigns one or more tags (key-value pairs) to the app monitor.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #            permissions by granting a user
    #            permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #
    #            <p>You can associate as many as 50 tags with an app monitor.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    # @option params [AppMonitorConfiguration] :app_monitor_configuration
    #   <p>A structure that contains much of the configuration data for the app monitor. If you are using
    #            Amazon Cognito for authorization, you must include this structure in your request, and it must include the ID of the
    #            Amazon Cognito identity pool to use for authorization. If you don't include <code>AppMonitorConfiguration</code>, you must set up your own
    #            authorization method. For more information, see
    #            <a href="https://docs.aws.amazon.com/monitoring/CloudWatch-RUM-get-started-authorization.html">Authorize your application
    #               to send data to Amazon Web Services</a>.</p>
    #            <p>If you omit this argument, the sample rate used for RUM is set to 10% of the user sessions.</p>
    #
    # @option params [Boolean] :cw_log_enabled
    #   <p>Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM
    #            sends a copy of this telemetry data to Amazon CloudWatch Logs
    #            in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur
    #            Amazon CloudWatch Logs charges.</p>
    #            <p>If you omit this parameter, the default is <code>false</code>.</p>
    #
    # @return [Types::CreateAppMonitorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_app_monitor(
    #     name: 'Name', # required
    #     domain: 'Domain', # required
    #     tags: {
    #       'key' => 'value'
    #     },
    #     app_monitor_configuration: {
    #       identity_pool_id: 'IdentityPoolId',
    #       excluded_pages: [
    #         'member'
    #       ],
    #       favorite_pages: [
    #         'member'
    #       ],
    #       session_sample_rate: 1.0,
    #       guest_role_arn: 'GuestRoleArn',
    #       allow_cookies: false,
    #       telemetries: [
    #         'errors' # accepts ["errors", "performance", "http"]
    #       ],
    #       enable_x_ray: false
    #     },
    #     cw_log_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAppMonitorOutput
    #   resp.data.id #=> String
    #
    def create_app_monitor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAppMonitorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAppMonitorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAppMonitor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ConflictException, Errors::ValidationException, Errors::ServiceQuotaExceededException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateAppMonitor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAppMonitor,
        stubs: @stubs,
        params_class: Params::CreateAppMonitorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_app_monitor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an existing app monitor. This immediately stops the collection of data.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppMonitorInput}.
    #
    # @option params [String] :name
    #   <p>The name of the app monitor to delete.</p>
    #
    # @return [Types::DeleteAppMonitorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_app_monitor(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppMonitorOutput
    #
    def delete_app_monitor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppMonitorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppMonitorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAppMonitor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteAppMonitor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAppMonitor,
        stubs: @stubs,
        params_class: Params::DeleteAppMonitorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_app_monitor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the complete configuration information for one app monitor.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAppMonitorInput}.
    #
    # @option params [String] :name
    #   <p>The app monitor to retrieve information for.</p>
    #
    # @return [Types::GetAppMonitorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_monitor(
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppMonitorOutput
    #   resp.data.app_monitor #=> Types::AppMonitor
    #   resp.data.app_monitor.name #=> String
    #   resp.data.app_monitor.domain #=> String
    #   resp.data.app_monitor.id #=> String
    #   resp.data.app_monitor.created #=> String
    #   resp.data.app_monitor.last_modified #=> String
    #   resp.data.app_monitor.tags #=> Hash<String, String>
    #   resp.data.app_monitor.tags['key'] #=> String
    #   resp.data.app_monitor.state #=> String, one of ["CREATED", "DELETING", "ACTIVE"]
    #   resp.data.app_monitor.app_monitor_configuration #=> Types::AppMonitorConfiguration
    #   resp.data.app_monitor.app_monitor_configuration.identity_pool_id #=> String
    #   resp.data.app_monitor.app_monitor_configuration.excluded_pages #=> Array<String>
    #   resp.data.app_monitor.app_monitor_configuration.excluded_pages[0] #=> String
    #   resp.data.app_monitor.app_monitor_configuration.included_pages #=> Array<String>
    #   resp.data.app_monitor.app_monitor_configuration.favorite_pages #=> Array<String>
    #   resp.data.app_monitor.app_monitor_configuration.favorite_pages[0] #=> String
    #   resp.data.app_monitor.app_monitor_configuration.session_sample_rate #=> Float
    #   resp.data.app_monitor.app_monitor_configuration.guest_role_arn #=> String
    #   resp.data.app_monitor.app_monitor_configuration.allow_cookies #=> Boolean
    #   resp.data.app_monitor.app_monitor_configuration.telemetries #=> Array<String>
    #   resp.data.app_monitor.app_monitor_configuration.telemetries[0] #=> String, one of ["errors", "performance", "http"]
    #   resp.data.app_monitor.app_monitor_configuration.enable_x_ray #=> Boolean
    #   resp.data.app_monitor.data_storage #=> Types::DataStorage
    #   resp.data.app_monitor.data_storage.cw_log #=> Types::CwLog
    #   resp.data.app_monitor.data_storage.cw_log.cw_log_enabled #=> Boolean
    #   resp.data.app_monitor.data_storage.cw_log.cw_log_group #=> String
    #
    def get_app_monitor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppMonitorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppMonitorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAppMonitor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetAppMonitor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAppMonitor,
        stubs: @stubs,
        params_class: Params::GetAppMonitorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_app_monitor
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the raw performance events that RUM has collected from your web application,
    #          so that you can do your own processing or analysis of this data.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAppMonitorDataInput}.
    #
    # @option params [String] :name
    #   <p>The name of the app monitor that collected the data that you want to retrieve.</p>
    #
    # @option params [TimeRange] :time_range
    #   <p>A structure that defines the time range that you want to retrieve results from.</p>
    #
    # @option params [Array<QueryFilter>] :filters
    #   <p>An array of structures that you can use to filter the results to those that match one or
    #            more sets of key-value pairs that you specify.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in one operation. </p>
    #
    # @option params [String] :next_token
    #   <p>Use the token returned by the previous operation to request the next page of results.</p>
    #
    # @return [Types::GetAppMonitorDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_app_monitor_data(
    #     name: 'Name', # required
    #     time_range: {
    #       after: 1, # required
    #       before: 1
    #     }, # required
    #     filters: [
    #       {
    #         name: 'Name',
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppMonitorDataOutput
    #   resp.data.events #=> Array<String>
    #   resp.data.events[0] #=> String
    #   resp.data.next_token #=> String
    #
    def get_app_monitor_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppMonitorDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppMonitorDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAppMonitorData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetAppMonitorData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAppMonitorData,
        stubs: @stubs,
        params_class: Params::GetAppMonitorDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_app_monitor_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the Amazon CloudWatch RUM app monitors in the account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppMonitorsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in one operation. </p>
    #
    # @option params [String] :next_token
    #   <p>Use the token returned by the previous operation to request the next page of results.</p>
    #
    # @return [Types::ListAppMonitorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_app_monitors(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppMonitorsOutput
    #   resp.data.next_token #=> String
    #   resp.data.app_monitor_summaries #=> Array<AppMonitorSummary>
    #   resp.data.app_monitor_summaries[0] #=> Types::AppMonitorSummary
    #   resp.data.app_monitor_summaries[0].name #=> String
    #   resp.data.app_monitor_summaries[0].id #=> String
    #   resp.data.app_monitor_summaries[0].created #=> String
    #   resp.data.app_monitor_summaries[0].last_modified #=> String
    #   resp.data.app_monitor_summaries[0].state #=> String, one of ["CREATED", "DELETING", "ACTIVE"]
    #
    def list_app_monitors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppMonitorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppMonitorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppMonitors
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListAppMonitors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppMonitors,
        stubs: @stubs,
        params_class: Params::ListAppMonitorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_app_monitors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Displays the tags associated with a CloudWatch RUM resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that you want to see the tags of.</p>
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
    #   resp.data.resource_arn #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>Sends telemetry events about your application performance and user behavior to CloudWatch RUM. The code
    #       snippet that RUM generates for you to add to your application includes <code>PutRumEvents</code> operations to
    #       send this data to RUM.</p>
    #          <p>Each <code>PutRumEvents</code> operation can send a batch of events from one user session.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRumEventsInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the app monitor that is sending this data.</p>
    #
    # @option params [String] :batch_id
    #   <p>A unique identifier for this batch of RUM event data.</p>
    #
    # @option params [AppMonitorDetails] :app_monitor_details
    #   <p>A structure that contains information about the app monitor that collected this telemetry information.</p>
    #
    # @option params [UserDetails] :user_details
    #   <p>A structure that contains information about the user session that this batch of events was collected from.</p>
    #
    # @option params [Array<RumEvent>] :rum_events
    #   <p>An array of structures that contain the telemetry event data.</p>
    #
    # @return [Types::PutRumEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_rum_events(
    #     id: 'Id', # required
    #     batch_id: 'BatchId', # required
    #     app_monitor_details: {
    #       name: 'name',
    #       id: 'id',
    #       version: 'version'
    #     }, # required
    #     user_details: {
    #       user_id: 'userId',
    #       session_id: 'sessionId'
    #     }, # required
    #     rum_events: [
    #       {
    #         id: 'id', # required
    #         timestamp: Time.now, # required
    #         type: 'type', # required
    #         metadata: 'metadata',
    #         details: 'details' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRumEventsOutput
    #
    def put_rum_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRumEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRumEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::HostPrefix,
        host_prefix: "dataplane.",
        disable_host_prefix: @config.disable_host_prefix
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRumEvents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::PutRumEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRumEvents,
        stubs: @stubs,
        params_class: Params::PutRumEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_rum_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified CloudWatch RUM resource. Currently,
    #        the only resources that
    #        can be tagged app monitors.</p>
    #          <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #        permissions by granting a user
    #        permission to access or change only resources with certain tag values.</p>
    #          <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #          <p>You can use the <code>TagResource</code> action with a resource that already has tags.
    #        If you specify a new tag key for the resource,
    #        this tag is appended to the list of tags associated
    #        with the alarm. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces
    #        the previous value for that tag.</p>
    #          <p>You can associate as many as 50 tags with a resource.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch RUM resource that you're adding tags to.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>Removes one or more tags from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the CloudWatch RUM resource that you're removing tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
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

    # <p>Updates the configuration of an existing app monitor. When you use this operation, only the parts of the app monitor
    #          configuration that you specify in this operation are changed. For any parameters that you omit, the existing
    #          values are kept.</p>
    #          <p>You can't use this operation to change the tags of an existing app monitor. To change the tags of an existing app monitor, use
    #          <a href="https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_TagResource.html">TagResource</a>.</p>
    #          <p>To create a new app monitor, use <a href="https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_CreateAppMonitor.html">CreateAppMonitor</a>.</p>
    #          <p>After you update an app monitor, sign in to the CloudWatch RUM console to get
    #          the updated JavaScript code snippet to add to your web application. For more information, see
    #          <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html">How do I find a code snippet
    #             that I've already generated?</a>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAppMonitorInput}.
    #
    # @option params [String] :name
    #   <p>The name of the app monitor to update.</p>
    #
    # @option params [String] :domain
    #   <p>The top-level internet domain name for which your application has administrative authority.</p>
    #
    # @option params [AppMonitorConfiguration] :app_monitor_configuration
    #   <p>A structure that contains much of the configuration data for the app monitor. If you are using
    #            Amazon Cognito for authorization, you must include this structure in your request, and it must include the ID of the
    #            Amazon Cognito identity pool to use for authorization. If you don't include <code>AppMonitorConfiguration</code>, you must set up your own
    #            authorization method. For more information, see
    #            <a href="https://docs.aws.amazon.com/monitoring/CloudWatch-RUM-get-started-authorization.html">Authorize your application
    #               to send data to Amazon Web Services</a>.</p>
    #
    # @option params [Boolean] :cw_log_enabled
    #   <p>Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter specifies whether RUM
    #            sends a copy of this telemetry data to Amazon CloudWatch Logs
    #            in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur
    #            Amazon CloudWatch Logs charges.</p>
    #
    # @return [Types::UpdateAppMonitorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_app_monitor(
    #     name: 'Name', # required
    #     domain: 'Domain',
    #     app_monitor_configuration: {
    #       identity_pool_id: 'IdentityPoolId',
    #       excluded_pages: [
    #         'member'
    #       ],
    #       favorite_pages: [
    #         'member'
    #       ],
    #       session_sample_rate: 1.0,
    #       guest_role_arn: 'GuestRoleArn',
    #       allow_cookies: false,
    #       telemetries: [
    #         'errors' # accepts ["errors", "performance", "http"]
    #       ],
    #       enable_x_ray: false
    #     },
    #     cw_log_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAppMonitorOutput
    #
    def update_app_monitor(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAppMonitorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAppMonitorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAppMonitor
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ThrottlingException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateAppMonitor
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAppMonitor,
        stubs: @stubs,
        params_class: Params::UpdateAppMonitorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_app_monitor
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
