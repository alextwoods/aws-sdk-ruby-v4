# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::SSOOIDC
  # An API client for AWSSSOOIDCService
  # See {#initialize} for a full list of supported configuration options
  # <p>AWS Single Sign-On (SSO) OpenID Connect (OIDC) is a web service that enables a client
  #       (such as AWS CLI or a native application) to register with AWS SSO. The service also
  #       enables the client to fetch the user’s access token upon successful authentication and
  #       authorization with AWS SSO. This service conforms with the OAuth 2.0 based implementation of
  #       the device authorization grant standard (<a href="https://tools.ietf.org/html/rfc8628">https://tools.ietf.org/html/rfc8628</a>).</p>
  #
  #          <p>For general information about AWS SSO, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html">What is AWS
  #         Single Sign-On?</a> in the <i>AWS SSO User Guide</i>.</p>
  #
  #          <p>This API reference guide describes the AWS SSO OIDC operations that you can call
  #       programatically and includes detailed information on data types and errors.</p>
  #
  #          <note>
  #             <p>AWS provides SDKs that consist of libraries and sample code for various programming
  #         languages and platforms such as Java, Ruby, .Net, iOS, and Android. The SDKs provide a
  #         convenient way to create programmatic access to AWS SSO and other AWS services. For more
  #         information about the AWS SDKs, including how to download and install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p>
  #          </note>
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
    def initialize(config = AWS::SDK::SSOOIDC::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates and returns an access token for the authorized client. The access token issued
    #       will be used to fetch short-term credentials for the assigned roles in the AWS
    #       account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateTokenInput}.
    #
    # @option params [String] :client_id
    #   <p>The unique identifier string for each client. This value should come from the persisted result of the <a>RegisterClient</a> API.</p>
    #
    # @option params [String] :client_secret
    #   <p>A secret string generated for the client. This value should come from the persisted result of the <a>RegisterClient</a> API.</p>
    #
    # @option params [String] :grant_type
    #   <p>Supports grant types for authorization code, refresh token, and device code request.</p>
    #
    # @option params [String] :device_code
    #   <p>Used only when calling this API for the device code grant type. This short-term code is
    #         used to identify this authentication attempt. This should come from an in-memory reference to
    #         the result of the <a>StartDeviceAuthorization</a> API.</p>
    #
    # @option params [String] :code
    #   <p>The authorization code received from the authorization service. This parameter is required to perform an authorization grant request to get access to a token.</p>
    #
    # @option params [String] :refresh_token
    #   <p>The token used to obtain an access token in the event that the access token is invalid or expired. This token is not issued by the service.</p>
    #
    # @option params [Array<String>] :scope
    #   <p>The list of scopes that is defined by the client. Upon authorization, this list is used to
    #         restrict permissions when granting an access token.</p>
    #
    # @option params [String] :redirect_uri
    #   <p>The location of the application that will receive the authorization code. Users authorize
    #         the service to send the request to this location.</p>
    #
    # @return [Types::CreateTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_token(
    #     client_id: 'clientId', # required
    #     client_secret: 'clientSecret', # required
    #     grant_type: 'grantType', # required
    #     device_code: 'deviceCode', # required
    #     code: 'code',
    #     refresh_token: 'refreshToken',
    #     scope: [
    #       'member'
    #     ],
    #     redirect_uri: 'redirectUri'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTokenOutput
    #   resp.data.access_token #=> String
    #   resp.data.token_type #=> String
    #   resp.data.expires_in #=> Integer
    #   resp.data.refresh_token #=> String
    #   resp.data.id_token #=> String
    #
    def create_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTokenInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateToken
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ExpiredTokenException, Errors::SlowDownException, Errors::UnauthorizedClientException, Errors::InvalidGrantException, Errors::AuthorizationPendingException, Errors::InvalidRequestException, Errors::InvalidScopeException, Errors::UnsupportedGrantTypeException, Errors::AccessDeniedException, Errors::InvalidClientException]),
        data_parser: Parsers::CreateToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateToken,
        stubs: @stubs,
        params_class: Params::CreateTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a client with AWS SSO. This allows clients to initiate device authorization.
    #       The output should be persisted for reuse through many authentication requests.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterClientInput}.
    #
    # @option params [String] :client_name
    #   <p>The friendly name of the client.</p>
    #
    # @option params [String] :client_type
    #   <p>The type of client. The service supports only <code>public</code> as a client type. Anything other than public will be rejected by the service.</p>
    #
    # @option params [Array<String>] :scopes
    #   <p>The list of scopes that are defined by the client. Upon authorization, this list is used
    #         to restrict permissions when granting an access token.</p>
    #
    # @return [Types::RegisterClientOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_client(
    #     client_name: 'clientName', # required
    #     client_type: 'clientType', # required
    #     scopes: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterClientOutput
    #   resp.data.client_id #=> String
    #   resp.data.client_secret #=> String
    #   resp.data.client_id_issued_at #=> Integer
    #   resp.data.client_secret_expires_at #=> Integer
    #   resp.data.authorization_endpoint #=> String
    #   resp.data.token_endpoint #=> String
    #
    def register_client(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterClientInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterClientInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterClient
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::InvalidClientMetadataException, Errors::InvalidRequestException, Errors::InvalidScopeException]),
        data_parser: Parsers::RegisterClient
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterClient,
        stubs: @stubs,
        params_class: Params::RegisterClientOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_client
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Initiates device authorization by requesting a pair of verification codes from the authorization service.</p>
    #
    # @param [Hash] params
    #   See {Types::StartDeviceAuthorizationInput}.
    #
    # @option params [String] :client_id
    #   <p>The unique identifier string for the client that is registered with AWS SSO. This value
    #         should come from the persisted result of the <a>RegisterClient</a> API
    #         operation.</p>
    #
    # @option params [String] :client_secret
    #   <p>A secret string that is generated for the client. This value should come from the
    #         persisted result of the <a>RegisterClient</a> API operation.</p>
    #
    # @option params [String] :start_url
    #   <p>The URL for the AWS SSO user portal. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/using-the-portal.html">Using
    #           the User Portal</a> in the <i>AWS Single Sign-On User Guide</i>.</p>
    #
    # @return [Types::StartDeviceAuthorizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_device_authorization(
    #     client_id: 'clientId', # required
    #     client_secret: 'clientSecret', # required
    #     start_url: 'startUrl' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDeviceAuthorizationOutput
    #   resp.data.device_code #=> String
    #   resp.data.user_code #=> String
    #   resp.data.verification_uri #=> String
    #   resp.data.verification_uri_complete #=> String
    #   resp.data.expires_in #=> Integer
    #   resp.data.interval #=> Integer
    #
    def start_device_authorization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDeviceAuthorizationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDeviceAuthorizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDeviceAuthorization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::SlowDownException, Errors::UnauthorizedClientException, Errors::InvalidRequestException, Errors::InvalidClientException]),
        data_parser: Parsers::StartDeviceAuthorization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDeviceAuthorization,
        stubs: @stubs,
        params_class: Params::StartDeviceAuthorizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_device_authorization
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
