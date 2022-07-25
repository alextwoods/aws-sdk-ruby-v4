# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::AppConfigData
  # An API client for AppConfigData
  # See {#initialize} for a full list of supported configuration options
  # <p>AppConfig Data provides the data plane APIs your application uses to retrieve configuration data.
  #          Here's how it works:</p>
  #          <p>Your application retrieves configuration data by first establishing a configuration
  #          session using the AppConfig Data <a>StartConfigurationSession</a> API action. Your session's
  #          client then makes periodic calls to <a>GetLatestConfiguration</a> to check for
  #          and retrieve the latest data available.</p>
  #          <p>When calling <code>StartConfigurationSession</code>, your code sends the following
  #          information:</p>
  #          <ul>
  #             <li>
  #                <p>Identifiers (ID or name) of an AppConfig application, environment, and
  #                configuration profile that the session tracks.</p>
  #             </li>
  #             <li>
  #                <p>(Optional) The minimum amount of time the session's client must wait between calls
  #                to <code>GetLatestConfiguration</code>.</p>
  #             </li>
  #          </ul>
  #          <p>In response, AppConfig provides an <code>InitialConfigurationToken</code> to be given to
  #          the session's client and used the first time it calls <code>GetLatestConfiguration</code>
  #          for that session.</p>
  #          <p>When calling <code>GetLatestConfiguration</code>, your client code sends the most recent
  #             <code>ConfigurationToken</code> value it has and receives in response:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <code>NextPollConfigurationToken</code>: the <code>ConfigurationToken</code> value
  #                to use on the next call to <code>GetLatestConfiguration</code>.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>NextPollIntervalInSeconds</code>: the duration the client should wait before
  #                making its next call to <code>GetLatestConfiguration</code>. This duration may vary
  #                over the course of the session, so it should be used instead of the value sent on the
  #                   <code>StartConfigurationSession</code> call.</p>
  #             </li>
  #             <li>
  #                <p>The configuration: the latest data intended for the session. This may be empty if
  #                the client already has the latest version of the configuration.</p>
  #             </li>
  #          </ul>
  #          <p>For more information and to view example CLI commands that show how to retrieve a
  #          configuration using the AppConfig Data <code>StartConfigurationSession</code> and
  #             <code>GetLatestConfiguration</code> API actions, see <a href="http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration">Receiving the
  #             configuration</a> in the <i>AppConfig User Guide</i>.</p>
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
    def initialize(config = AWS::SDK::AppConfigData::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Retrieves the latest deployed configuration. This API may return empty configuration
    #          data if the client already has the latest version. For more information about this API
    #          action and to view example CLI commands that show how to use it with the <a>StartConfigurationSession</a> API action, see <a href="http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration">Receiving the
    #             configuration</a> in the <i>AppConfig User Guide</i>. </p>
    #          <important>
    #             <p>Note the following important information.</p>
    #             <ul>
    #                <li>
    #                   <p>Each configuration token is only valid for one call to <code>GetLatestConfiguration</code>.
    #                   The <code>GetLatestConfiguration</code> response includes a <code>NextPollConfigurationToken</code> that
    #                   should always replace the token used for the just-completed call in preparation
    #                   for the next one. </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>GetLatestConfiguration</code> is a priced call. For more information, see
    #                      <a href="https://aws.amazon.com/systems-manager/pricing/">Pricing</a>.</p>
    #                </li>
    #             </ul>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::GetLatestConfigurationInput}.
    #
    # @option params [String] :configuration_token
    #   <p>Token describing the current state of the configuration session. To obtain a token,
    #            first call the <a>StartConfigurationSession</a> API. Note that every call to
    #               <code>GetLatestConfiguration</code> will return a new <code>ConfigurationToken</code>
    #               (<code>NextPollConfigurationToken</code> in the response) and MUST be provided to
    #            subsequent <code>GetLatestConfiguration</code> API calls.</p>
    #
    # @return [Types::GetLatestConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_latest_configuration(
    #     configuration_token: 'ConfigurationToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLatestConfigurationOutput
    #   resp.data.next_poll_configuration_token #=> String
    #   resp.data.next_poll_interval_in_seconds #=> Integer
    #   resp.data.content_type #=> String
    #   resp.data.configuration #=> String
    #
    def get_latest_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLatestConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLatestConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLatestConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::GetLatestConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLatestConfiguration,
        stubs: @stubs,
        params_class: Params::GetLatestConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_latest_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a configuration session used to retrieve a deployed configuration. For more
    #          information about this API action and to view example CLI commands that show how to use
    #          it with the <a>GetLatestConfiguration</a> API action, see <a href="http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration">Receiving the
    #             configuration</a> in the <i>AppConfig User Guide</i>. </p>
    #
    # @param [Hash] params
    #   See {Types::StartConfigurationSessionInput}.
    #
    # @option params [String] :application_identifier
    #   <p>The application ID or the application name.</p>
    #
    # @option params [String] :environment_identifier
    #   <p>The environment ID or the environment name.</p>
    #
    # @option params [String] :configuration_profile_identifier
    #   <p>The configuration profile ID or the configuration profile name.</p>
    #
    # @option params [Integer] :required_minimum_poll_interval_in_seconds
    #   <p>Sets a constraint on a session. If you specify a value of, for example, 60 seconds, then
    #            the client that established the session can't call <a>GetLatestConfiguration</a>
    #            more frequently then every 60 seconds.</p>
    #
    # @return [Types::StartConfigurationSessionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_configuration_session(
    #     application_identifier: 'ApplicationIdentifier', # required
    #     environment_identifier: 'EnvironmentIdentifier', # required
    #     configuration_profile_identifier: 'ConfigurationProfileIdentifier', # required
    #     required_minimum_poll_interval_in_seconds: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartConfigurationSessionOutput
    #   resp.data.initial_configuration_token #=> String
    #
    def start_configuration_session(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartConfigurationSessionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartConfigurationSessionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartConfigurationSession
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::BadRequestException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException]),
        data_parser: Parsers::StartConfigurationSession
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartConfigurationSession,
        stubs: @stubs,
        params_class: Params::StartConfigurationSessionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_configuration_session
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
