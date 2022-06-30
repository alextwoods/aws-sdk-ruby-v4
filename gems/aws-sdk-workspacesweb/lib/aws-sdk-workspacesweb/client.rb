# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::WorkSpacesWeb
  # An API client for AWSErmineControlPlaneService
  # See {#initialize} for a full list of supported configuration options
  # <p>WorkSpaces Web is a low cost, fully managed WorkSpace built specifically to facilitate
  #          secure, web-based workloads. WorkSpaces Web makes it easy for customers to safely provide
  #          their employees with access to internal websites and SaaS web applications without the
  #          administrative burden of appliances or specialized client software. WorkSpaces Web provides
  #          simple policy tools tailored for user interactions, while offloading common tasks like
  #          capacity management, scaling, and maintaining browser images.</p>
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
    def initialize(config = AWS::SDK::WorkSpacesWeb::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a browser settings resource with a web portal.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateBrowserSettingsInput}.
    #
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    # @option params [String] :browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #
    # @return [Types::AssociateBrowserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_browser_settings(
    #     portal_arn: 'portalArn', # required
    #     browser_settings_arn: 'browserSettingsArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateBrowserSettingsOutput
    #   resp.data.portal_arn #=> String
    #   resp.data.browser_settings_arn #=> String
    #
    def associate_browser_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateBrowserSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateBrowserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateBrowserSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::AssociateBrowserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateBrowserSettings,
        stubs: @stubs,
        params_class: Params::AssociateBrowserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_browser_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a network settings resource with a web portal.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateNetworkSettingsInput}.
    #
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    # @option params [String] :network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #
    # @return [Types::AssociateNetworkSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_network_settings(
    #     portal_arn: 'portalArn', # required
    #     network_settings_arn: 'networkSettingsArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateNetworkSettingsOutput
    #   resp.data.portal_arn #=> String
    #   resp.data.network_settings_arn #=> String
    #
    def associate_network_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateNetworkSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateNetworkSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateNetworkSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::AssociateNetworkSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateNetworkSettings,
        stubs: @stubs,
        params_class: Params::AssociateNetworkSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_network_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a trust store with a web portal.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateTrustStoreInput}.
    #
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    # @option params [String] :trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #
    # @return [Types::AssociateTrustStoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_trust_store(
    #     portal_arn: 'portalArn', # required
    #     trust_store_arn: 'trustStoreArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateTrustStoreOutput
    #   resp.data.portal_arn #=> String
    #   resp.data.trust_store_arn #=> String
    #
    def associate_trust_store(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateTrustStoreInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateTrustStoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateTrustStore
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::AssociateTrustStore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateTrustStore,
        stubs: @stubs,
        params_class: Params::AssociateTrustStoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_trust_store
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a user settings resource with a web portal.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateUserSettingsInput}.
    #
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    # @option params [String] :user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #
    # @return [Types::AssociateUserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_user_settings(
    #     portal_arn: 'portalArn', # required
    #     user_settings_arn: 'userSettingsArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateUserSettingsOutput
    #   resp.data.portal_arn #=> String
    #   resp.data.user_settings_arn #=> String
    #
    def associate_user_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateUserSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateUserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateUserSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::AssociateUserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateUserSettings,
        stubs: @stubs,
        params_class: Params::AssociateUserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_user_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a browser settings resource that can be associated with a web portal. Once
    #          associated with a web portal, browser settings control how the browser will behave once a
    #          user starts a streaming session for the web portal. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateBrowserSettingsInput}.
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to the browser settings resource. A tag is a key-value pair.</p>
    #
    # @option params [String] :customer_managed_key
    #   <p>The custom managed key of the browser settings.</p>
    #
    # @option params [Hash<String, String>] :additional_encryption_context
    #   <p>Additional encryption context of the browser settings.</p>
    #
    # @option params [String] :browser_policy
    #   <p>A JSON string containing Chrome Enterprise policies that will be applied to all
    #            streaming sessions.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request.</p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS SDK. </p>
    #
    # @return [Types::CreateBrowserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_browser_settings(
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     customer_managed_key: 'customerManagedKey',
    #     additional_encryption_context: {
    #       'key' => 'value'
    #     },
    #     browser_policy: 'browserPolicy', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBrowserSettingsOutput
    #   resp.data.browser_settings_arn #=> String
    #
    def create_browser_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBrowserSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBrowserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBrowserSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateBrowserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBrowserSettings,
        stubs: @stubs,
        params_class: Params::CreateBrowserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_browser_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an identity provider resource that is then associated with a web portal.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateIdentityProviderInput}.
    #
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    # @option params [String] :identity_provider_name
    #   <p>The identity provider name.</p>
    #
    # @option params [String] :identity_provider_type
    #   <p>The identity provider type.</p>
    #
    # @option params [Hash<String, String>] :identity_provider_details
    #   <p>The identity provider details. The following list describes the provider detail keys for
    #            each identity provider type. </p>
    #            <ul>
    #               <li>
    #                  <p>For Google and Login with Amazon:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Facebook:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>api_version</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Sign in with Apple:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>team_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>key_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>private_key</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For OIDC providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_request_method</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>oidc_issuer</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>token_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>jwks_uri</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For SAML providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>MetadataFile</code> OR <code>MetadataURL</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPSignout</code> (boolean)
    #                  <i>optional</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request.</p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    # @return [Types::CreateIdentityProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_identity_provider(
    #     portal_arn: 'portalArn', # required
    #     identity_provider_name: 'identityProviderName', # required
    #     identity_provider_type: 'SAML', # required - accepts ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #     identity_provider_details: {
    #       'key' => 'value'
    #     }, # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIdentityProviderOutput
    #   resp.data.identity_provider_arn #=> String
    #
    def create_identity_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIdentityProviderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIdentityProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIdentityProvider
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateIdentityProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIdentityProvider,
        stubs: @stubs,
        params_class: Params::CreateIdentityProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_identity_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a network settings resource that can be associated with a web portal. Once
    #          associated with a web portal, network settings define how streaming instances will connect
    #          with your specified VPC. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateNetworkSettingsInput}.
    #
    # @option params [String] :vpc_id
    #   <p>The VPC that streaming instances will connect to.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two of these subnets must be in different availability zones.</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>One or more security groups used to control access from streaming instances to your VPC.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to the network settings resource. A tag is a key-value pair.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    # @return [Types::CreateNetworkSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_network_settings(
    #     vpc_id: 'vpcId', # required
    #     subnet_ids: [
    #       'member'
    #     ], # required
    #     security_group_ids: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateNetworkSettingsOutput
    #   resp.data.network_settings_arn #=> String
    #
    def create_network_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateNetworkSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateNetworkSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateNetworkSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateNetworkSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateNetworkSettings,
        stubs: @stubs,
        params_class: Params::CreateNetworkSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_network_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a web portal.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePortalInput}.
    #
    # @option params [String] :display_name
    #   <p>The name of the web portal. This is not visible to users who log into the web portal.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to the web portal. A tag is a key-value pair.</p>
    #
    # @option params [String] :customer_managed_key
    #   <p>The customer managed key of the web portal.</p>
    #
    # @option params [Hash<String, String>] :additional_encryption_context
    #   <p>The additional encryption context of the portal.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    # @return [Types::CreatePortalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_portal(
    #     display_name: 'displayName',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     customer_managed_key: 'customerManagedKey',
    #     additional_encryption_context: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePortalOutput
    #   resp.data.portal_arn #=> String
    #   resp.data.portal_endpoint #=> String
    #
    def create_portal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePortalInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePortalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePortal
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreatePortal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePortal,
        stubs: @stubs,
        params_class: Params::CreatePortalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_portal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a trust store that can be associated with a web portal. A trust store contains
    #          certificate authority (CA) certificates. Once associated with a web portal, the browser in
    #          a streaming session will recognize certificates that have been issued using any of the CAs
    #          in the trust store. If your organization has internal websites that use certificates issued
    #          by private CAs, you should add the private CA certificate to the trust store. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateTrustStoreInput}.
    #
    # @option params [Array<String>] :certificate_list
    #   <p>A list of CA certificates to be added to the trust store.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to the trust store. A tag is a key-value pair.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    # @return [Types::CreateTrustStoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_trust_store(
    #     certificate_list: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTrustStoreOutput
    #   resp.data.trust_store_arn #=> String
    #
    def create_trust_store(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTrustStoreInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTrustStoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTrustStore
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateTrustStore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTrustStore,
        stubs: @stubs,
        params_class: Params::CreateTrustStoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_trust_store
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a user settings resource that can be associated with a web portal. Once
    #          associated with a web portal, user settings control how users can transfer data between a
    #          streaming session and the their local devices. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserSettingsInput}.
    #
    # @option params [String] :copy_allowed
    #   <p>Specifies whether the user can copy text from the streaming session to the local
    #            device.</p>
    #
    # @option params [String] :paste_allowed
    #   <p>Specifies whether the user can paste text from the local device to the streaming
    #            session.</p>
    #
    # @option params [String] :download_allowed
    #   <p>Specifies whether the user can download files from the streaming session to the local
    #            device.</p>
    #
    # @option params [String] :upload_allowed
    #   <p>Specifies whether the user can upload files from the local device to the streaming
    #            session.</p>
    #
    # @option params [String] :print_allowed
    #   <p>Specifies whether the user can print to the local device.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to add to the user settings resource. A tag is a key-value pair.</p>
    #
    # @option params [Integer] :disconnect_timeout_in_minutes
    #   <p>The amount of time that a streaming session remains active after users disconnect.</p>
    #
    # @option params [Integer] :idle_disconnect_timeout_in_minutes
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the disconnect timeout interval begins.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    # @return [Types::CreateUserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_settings(
    #     copy_allowed: 'Disabled', # required - accepts ["Disabled", "Enabled"]
    #     paste_allowed: 'Disabled', # required - accepts ["Disabled", "Enabled"]
    #     download_allowed: 'Disabled', # required - accepts ["Disabled", "Enabled"]
    #     upload_allowed: 'Disabled', # required - accepts ["Disabled", "Enabled"]
    #     print_allowed: 'Disabled', # required - accepts ["Disabled", "Enabled"]
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     disconnect_timeout_in_minutes: 1,
    #     idle_disconnect_timeout_in_minutes: 1,
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserSettingsOutput
    #   resp.data.user_settings_arn #=> String
    #
    def create_user_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUserSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::CreateUserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUserSettings,
        stubs: @stubs,
        params_class: Params::CreateUserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes browser settings.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBrowserSettingsInput}.
    #
    # @option params [String] :browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #
    # @return [Types::DeleteBrowserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_browser_settings(
    #     browser_settings_arn: 'browserSettingsArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBrowserSettingsOutput
    #
    def delete_browser_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBrowserSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBrowserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBrowserSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteBrowserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBrowserSettings,
        stubs: @stubs,
        params_class: Params::DeleteBrowserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_browser_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the identity provider.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIdentityProviderInput}.
    #
    # @option params [String] :identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #
    # @return [Types::DeleteIdentityProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity_provider(
    #     identity_provider_arn: 'identityProviderArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIdentityProviderOutput
    #
    def delete_identity_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIdentityProviderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIdentityProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIdentityProvider
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteIdentityProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIdentityProvider,
        stubs: @stubs,
        params_class: Params::DeleteIdentityProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_identity_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes network settings.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteNetworkSettingsInput}.
    #
    # @option params [String] :network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #
    # @return [Types::DeleteNetworkSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_network_settings(
    #     network_settings_arn: 'networkSettingsArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNetworkSettingsOutput
    #
    def delete_network_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNetworkSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNetworkSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNetworkSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteNetworkSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNetworkSettings,
        stubs: @stubs,
        params_class: Params::DeleteNetworkSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_network_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a web portal.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePortalInput}.
    #
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    # @return [Types::DeletePortalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_portal(
    #     portal_arn: 'portalArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePortalOutput
    #
    def delete_portal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePortalInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePortalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePortal
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::DeletePortal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePortal,
        stubs: @stubs,
        params_class: Params::DeletePortalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_portal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the trust store.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTrustStoreInput}.
    #
    # @option params [String] :trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #
    # @return [Types::DeleteTrustStoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_trust_store(
    #     trust_store_arn: 'trustStoreArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTrustStoreOutput
    #
    def delete_trust_store(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTrustStoreInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTrustStoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTrustStore
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteTrustStore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTrustStore,
        stubs: @stubs,
        params_class: Params::DeleteTrustStoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_trust_store
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes user settings.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserSettingsInput}.
    #
    # @option params [String] :user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #
    # @return [Types::DeleteUserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_settings(
    #     user_settings_arn: 'userSettingsArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserSettingsOutput
    #
    def delete_user_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUserSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::DeleteUserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUserSettings,
        stubs: @stubs,
        params_class: Params::DeleteUserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates browser settings from a web portal.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateBrowserSettingsInput}.
    #
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    # @return [Types::DisassociateBrowserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_browser_settings(
    #     portal_arn: 'portalArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateBrowserSettingsOutput
    #
    def disassociate_browser_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateBrowserSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateBrowserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateBrowserSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::DisassociateBrowserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateBrowserSettings,
        stubs: @stubs,
        params_class: Params::DisassociateBrowserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_browser_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates network settings from a web portal.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateNetworkSettingsInput}.
    #
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    # @return [Types::DisassociateNetworkSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_network_settings(
    #     portal_arn: 'portalArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateNetworkSettingsOutput
    #
    def disassociate_network_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateNetworkSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateNetworkSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateNetworkSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::DisassociateNetworkSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateNetworkSettings,
        stubs: @stubs,
        params_class: Params::DisassociateNetworkSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_network_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a trust store from a web portal.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateTrustStoreInput}.
    #
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    # @return [Types::DisassociateTrustStoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_trust_store(
    #     portal_arn: 'portalArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateTrustStoreOutput
    #
    def disassociate_trust_store(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateTrustStoreInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateTrustStoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateTrustStore
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::DisassociateTrustStore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateTrustStore,
        stubs: @stubs,
        params_class: Params::DisassociateTrustStoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_trust_store
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates user settings from a web portal.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateUserSettingsInput}.
    #
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    # @return [Types::DisassociateUserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_user_settings(
    #     portal_arn: 'portalArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateUserSettingsOutput
    #
    def disassociate_user_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateUserSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateUserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateUserSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::DisassociateUserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateUserSettings,
        stubs: @stubs,
        params_class: Params::DisassociateUserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_user_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets browser settings.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBrowserSettingsInput}.
    #
    # @option params [String] :browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #
    # @return [Types::GetBrowserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_browser_settings(
    #     browser_settings_arn: 'browserSettingsArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBrowserSettingsOutput
    #   resp.data.browser_settings #=> Types::BrowserSettings
    #   resp.data.browser_settings.browser_settings_arn #=> String
    #   resp.data.browser_settings.associated_portal_arns #=> Array<String>
    #   resp.data.browser_settings.associated_portal_arns[0] #=> String
    #   resp.data.browser_settings.browser_policy #=> String
    #
    def get_browser_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBrowserSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBrowserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBrowserSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetBrowserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBrowserSettings,
        stubs: @stubs,
        params_class: Params::GetBrowserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_browser_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the identity provider.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIdentityProviderInput}.
    #
    # @option params [String] :identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #
    # @return [Types::GetIdentityProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_provider(
    #     identity_provider_arn: 'identityProviderArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIdentityProviderOutput
    #   resp.data.identity_provider #=> Types::IdentityProvider
    #   resp.data.identity_provider.identity_provider_arn #=> String
    #   resp.data.identity_provider.identity_provider_name #=> String
    #   resp.data.identity_provider.identity_provider_type #=> String, one of ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #   resp.data.identity_provider.identity_provider_details #=> Hash<String, String>
    #   resp.data.identity_provider.identity_provider_details['key'] #=> String
    #
    def get_identity_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIdentityProviderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIdentityProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIdentityProvider
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetIdentityProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIdentityProvider,
        stubs: @stubs,
        params_class: Params::GetIdentityProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_identity_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the network settings.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNetworkSettingsInput}.
    #
    # @option params [String] :network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #
    # @return [Types::GetNetworkSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_network_settings(
    #     network_settings_arn: 'networkSettingsArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNetworkSettingsOutput
    #   resp.data.network_settings #=> Types::NetworkSettings
    #   resp.data.network_settings.network_settings_arn #=> String
    #   resp.data.network_settings.associated_portal_arns #=> Array<String>
    #   resp.data.network_settings.associated_portal_arns[0] #=> String
    #   resp.data.network_settings.vpc_id #=> String
    #   resp.data.network_settings.subnet_ids #=> Array<String>
    #   resp.data.network_settings.subnet_ids[0] #=> String
    #   resp.data.network_settings.security_group_ids #=> Array<String>
    #   resp.data.network_settings.security_group_ids[0] #=> String
    #
    def get_network_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNetworkSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNetworkSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNetworkSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetNetworkSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNetworkSettings,
        stubs: @stubs,
        params_class: Params::GetNetworkSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_network_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the web portal.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPortalInput}.
    #
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    # @return [Types::GetPortalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_portal(
    #     portal_arn: 'portalArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPortalOutput
    #   resp.data.portal #=> Types::Portal
    #   resp.data.portal.portal_arn #=> String
    #   resp.data.portal.renderer_type #=> String, one of ["AppStream"]
    #   resp.data.portal.browser_type #=> String, one of ["Chrome"]
    #   resp.data.portal.portal_status #=> String, one of ["Incomplete", "Pending", "Active"]
    #   resp.data.portal.portal_endpoint #=> String
    #   resp.data.portal.display_name #=> String
    #   resp.data.portal.creation_date #=> Time
    #   resp.data.portal.browser_settings_arn #=> String
    #   resp.data.portal.user_settings_arn #=> String
    #   resp.data.portal.network_settings_arn #=> String
    #   resp.data.portal.trust_store_arn #=> String
    #   resp.data.portal.status_reason #=> String
    #
    def get_portal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPortalInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPortalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPortal
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetPortal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPortal,
        stubs: @stubs,
        params_class: Params::GetPortalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_portal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the service provider metadata.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPortalServiceProviderMetadataInput}.
    #
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    # @return [Types::GetPortalServiceProviderMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_portal_service_provider_metadata(
    #     portal_arn: 'portalArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPortalServiceProviderMetadataOutput
    #   resp.data.portal_arn #=> String
    #   resp.data.service_provider_saml_metadata #=> String
    #
    def get_portal_service_provider_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPortalServiceProviderMetadataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPortalServiceProviderMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPortalServiceProviderMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetPortalServiceProviderMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPortalServiceProviderMetadata,
        stubs: @stubs,
        params_class: Params::GetPortalServiceProviderMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_portal_service_provider_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the trust store.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTrustStoreInput}.
    #
    # @option params [String] :trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #
    # @return [Types::GetTrustStoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trust_store(
    #     trust_store_arn: 'trustStoreArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTrustStoreOutput
    #   resp.data.trust_store #=> Types::TrustStore
    #   resp.data.trust_store.associated_portal_arns #=> Array<String>
    #   resp.data.trust_store.associated_portal_arns[0] #=> String
    #   resp.data.trust_store.trust_store_arn #=> String
    #
    def get_trust_store(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTrustStoreInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTrustStoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTrustStore
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetTrustStore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTrustStore,
        stubs: @stubs,
        params_class: Params::GetTrustStoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_trust_store
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the trust store certificate.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTrustStoreCertificateInput}.
    #
    # @option params [String] :trust_store_arn
    #   <p>The ARN of the trust store certificate.</p>
    #
    # @option params [String] :thumbprint
    #   <p>The thumbprint of the trust store certificate.</p>
    #
    # @return [Types::GetTrustStoreCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_trust_store_certificate(
    #     trust_store_arn: 'trustStoreArn', # required
    #     thumbprint: 'thumbprint' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTrustStoreCertificateOutput
    #   resp.data.trust_store_arn #=> String
    #   resp.data.certificate #=> Types::Certificate
    #   resp.data.certificate.thumbprint #=> String
    #   resp.data.certificate.subject #=> String
    #   resp.data.certificate.issuer #=> String
    #   resp.data.certificate.not_valid_before #=> Time
    #   resp.data.certificate.not_valid_after #=> Time
    #   resp.data.certificate.body #=> String
    #
    def get_trust_store_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTrustStoreCertificateInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTrustStoreCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTrustStoreCertificate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetTrustStoreCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTrustStoreCertificate,
        stubs: @stubs,
        params_class: Params::GetTrustStoreCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_trust_store_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets user settings.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUserSettingsInput}.
    #
    # @option params [String] :user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #
    # @return [Types::GetUserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_settings(
    #     user_settings_arn: 'userSettingsArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUserSettingsOutput
    #   resp.data.user_settings #=> Types::UserSettings
    #   resp.data.user_settings.user_settings_arn #=> String
    #   resp.data.user_settings.associated_portal_arns #=> Array<String>
    #   resp.data.user_settings.associated_portal_arns[0] #=> String
    #   resp.data.user_settings.copy_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings.paste_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings.download_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings.upload_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings.print_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings.disconnect_timeout_in_minutes #=> Integer
    #   resp.data.user_settings.idle_disconnect_timeout_in_minutes #=> Integer
    #
    def get_user_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUserSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUserSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::GetUserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUserSettings,
        stubs: @stubs,
        params_class: Params::GetUserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_user_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of browser settings.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBrowserSettingsInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    # @return [Types::ListBrowserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_browser_settings(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBrowserSettingsOutput
    #   resp.data.browser_settings #=> Array<BrowserSettingsSummary>
    #   resp.data.browser_settings[0] #=> Types::BrowserSettingsSummary
    #   resp.data.browser_settings[0].browser_settings_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_browser_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBrowserSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBrowserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBrowserSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListBrowserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBrowserSettings,
        stubs: @stubs,
        params_class: Params::ListBrowserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_browser_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of identity providers for a specific web portal.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIdentityProvidersInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    # @return [Types::ListIdentityProvidersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_providers(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     portal_arn: 'portalArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIdentityProvidersOutput
    #   resp.data.next_token #=> String
    #   resp.data.identity_providers #=> Array<IdentityProviderSummary>
    #   resp.data.identity_providers[0] #=> Types::IdentityProviderSummary
    #   resp.data.identity_providers[0].identity_provider_arn #=> String
    #   resp.data.identity_providers[0].identity_provider_name #=> String
    #   resp.data.identity_providers[0].identity_provider_type #=> String, one of ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #
    def list_identity_providers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIdentityProvidersInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIdentityProvidersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIdentityProviders
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListIdentityProviders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIdentityProviders,
        stubs: @stubs,
        params_class: Params::ListIdentityProvidersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_identity_providers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of network settings.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNetworkSettingsInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    # @return [Types::ListNetworkSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_network_settings(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNetworkSettingsOutput
    #   resp.data.network_settings #=> Array<NetworkSettingsSummary>
    #   resp.data.network_settings[0] #=> Types::NetworkSettingsSummary
    #   resp.data.network_settings[0].network_settings_arn #=> String
    #   resp.data.network_settings[0].vpc_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_network_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNetworkSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNetworkSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNetworkSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListNetworkSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNetworkSettings,
        stubs: @stubs,
        params_class: Params::ListNetworkSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_network_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list or web portals.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPortalsInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    # @return [Types::ListPortalsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portals(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPortalsOutput
    #   resp.data.portals #=> Array<PortalSummary>
    #   resp.data.portals[0] #=> Types::PortalSummary
    #   resp.data.portals[0].portal_arn #=> String
    #   resp.data.portals[0].renderer_type #=> String, one of ["AppStream"]
    #   resp.data.portals[0].browser_type #=> String, one of ["Chrome"]
    #   resp.data.portals[0].portal_status #=> String, one of ["Incomplete", "Pending", "Active"]
    #   resp.data.portals[0].portal_endpoint #=> String
    #   resp.data.portals[0].display_name #=> String
    #   resp.data.portals[0].creation_date #=> Time
    #   resp.data.portals[0].browser_settings_arn #=> String
    #   resp.data.portals[0].user_settings_arn #=> String
    #   resp.data.portals[0].network_settings_arn #=> String
    #   resp.data.portals[0].trust_store_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_portals(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPortalsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPortalsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPortals
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListPortals
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPortals,
        stubs: @stubs,
        params_class: Params::ListPortalsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_portals
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of tags for a resource.</p>
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
    #     resource_arn: 'resourceArn' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
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

    # <p>Retrieves a list of trust store certificates.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTrustStoreCertificatesInput}.
    #
    # @option params [String] :trust_store_arn
    #   <p>The ARN of the trust store</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    # @return [Types::ListTrustStoreCertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trust_store_certificates(
    #     trust_store_arn: 'trustStoreArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTrustStoreCertificatesOutput
    #   resp.data.certificate_list #=> Array<CertificateSummary>
    #   resp.data.certificate_list[0] #=> Types::CertificateSummary
    #   resp.data.certificate_list[0].thumbprint #=> String
    #   resp.data.certificate_list[0].subject #=> String
    #   resp.data.certificate_list[0].issuer #=> String
    #   resp.data.certificate_list[0].not_valid_before #=> Time
    #   resp.data.certificate_list[0].not_valid_after #=> Time
    #   resp.data.trust_store_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_trust_store_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTrustStoreCertificatesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTrustStoreCertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTrustStoreCertificates
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListTrustStoreCertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTrustStoreCertificates,
        stubs: @stubs,
        params_class: Params::ListTrustStoreCertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_trust_store_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of trust stores.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTrustStoresInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    # @return [Types::ListTrustStoresOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_trust_stores(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTrustStoresOutput
    #   resp.data.trust_stores #=> Array<TrustStoreSummary>
    #   resp.data.trust_stores[0] #=> Types::TrustStoreSummary
    #   resp.data.trust_stores[0].trust_store_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_trust_stores(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTrustStoresInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTrustStoresInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTrustStores
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListTrustStores
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTrustStores,
        stubs: @stubs,
        params_class: Params::ListTrustStoresOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_trust_stores
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of user settings.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUserSettingsInput}.
    #
    # @option params [String] :next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    # @return [Types::ListUserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_settings(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUserSettingsOutput
    #   resp.data.user_settings #=> Array<UserSettingsSummary>
    #   resp.data.user_settings[0] #=> Types::UserSettingsSummary
    #   resp.data.user_settings[0].user_settings_arn #=> String
    #   resp.data.user_settings[0].copy_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings[0].paste_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings[0].download_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings[0].upload_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings[0].print_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings[0].disconnect_timeout_in_minutes #=> Integer
    #   resp.data.user_settings[0].idle_disconnect_timeout_in_minutes #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_user_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUserSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUserSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::ListUserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUserSettings,
        stubs: @stubs,
        params_class: Params::ListUserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_user_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or overwrites one or more tags for the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags of the resource.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ], # required
    #     client_token: 'clientToken'
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException, Errors::TooManyTagsException]),
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
    #   <p>The ARN of the resource.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
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

    # <p>Updates browser settings.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateBrowserSettingsInput}.
    #
    # @option params [String] :browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #
    # @option params [String] :browser_policy
    #   <p>A JSON string containing Chrome Enterprise policies that will be applied to all
    #            streaming sessions. </p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    # @return [Types::UpdateBrowserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_browser_settings(
    #     browser_settings_arn: 'browserSettingsArn', # required
    #     browser_policy: 'browserPolicy',
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateBrowserSettingsOutput
    #   resp.data.browser_settings #=> Types::BrowserSettings
    #   resp.data.browser_settings.browser_settings_arn #=> String
    #   resp.data.browser_settings.associated_portal_arns #=> Array<String>
    #   resp.data.browser_settings.associated_portal_arns[0] #=> String
    #   resp.data.browser_settings.browser_policy #=> String
    #
    def update_browser_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateBrowserSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateBrowserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateBrowserSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateBrowserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateBrowserSettings,
        stubs: @stubs,
        params_class: Params::UpdateBrowserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_browser_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the identity provider. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIdentityProviderInput}.
    #
    # @option params [String] :identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #
    # @option params [String] :identity_provider_name
    #   <p>The name of the identity provider.</p>
    #
    # @option params [String] :identity_provider_type
    #   <p>The type of the identity provider.</p>
    #
    # @option params [Hash<String, String>] :identity_provider_details
    #   <p>The details of the identity provider. The following list describes the provider detail keys for
    #            each identity provider type. </p>
    #            <ul>
    #               <li>
    #                  <p>For Google and Login with Amazon:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Facebook:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>api_version</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Sign in with Apple:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>team_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>key_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>private_key</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For OIDC providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_request_method</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>oidc_issuer</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_url</code>
    #                           <i>if not available from discovery URL specified by
    #                     <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>token_url</code>
    #                           <i>if not available from discovery URL specified by
    #                     <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_url</code>
    #                           <i>if not available from discovery URL specified by
    #                     <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>jwks_uri</code>
    #                           <i>if not available from discovery URL specified by
    #                     <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For SAML providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>MetadataFile</code> OR <code>MetadataURL</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPSignout</code> (boolean)
    #                  <i>optional</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    # @return [Types::UpdateIdentityProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_provider(
    #     identity_provider_arn: 'identityProviderArn', # required
    #     identity_provider_name: 'identityProviderName',
    #     identity_provider_type: 'SAML', # accepts ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #     identity_provider_details: {
    #       'key' => 'value'
    #     },
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIdentityProviderOutput
    #   resp.data.identity_provider #=> Types::IdentityProvider
    #   resp.data.identity_provider.identity_provider_arn #=> String
    #   resp.data.identity_provider.identity_provider_name #=> String
    #   resp.data.identity_provider.identity_provider_type #=> String, one of ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #   resp.data.identity_provider.identity_provider_details #=> Hash<String, String>
    #   resp.data.identity_provider.identity_provider_details['key'] #=> String
    #
    def update_identity_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateIdentityProviderInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateIdentityProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateIdentityProvider
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateIdentityProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateIdentityProvider,
        stubs: @stubs,
        params_class: Params::UpdateIdentityProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_identity_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates network settings.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateNetworkSettingsInput}.
    #
    # @option params [String] :network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #
    # @option params [String] :vpc_id
    #   <p>The VPC that streaming instances will connect to.</p>
    #
    # @option params [Array<String>] :subnet_ids
    #   <p>The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two of these subnets must be in different availability zones.</p>
    #
    # @option params [Array<String>] :security_group_ids
    #   <p>One or more security groups used to control access from streaming instances to your VPC.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    # @return [Types::UpdateNetworkSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_network_settings(
    #     network_settings_arn: 'networkSettingsArn', # required
    #     vpc_id: 'vpcId',
    #     subnet_ids: [
    #       'member'
    #     ],
    #     security_group_ids: [
    #       'member'
    #     ],
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateNetworkSettingsOutput
    #   resp.data.network_settings #=> Types::NetworkSettings
    #   resp.data.network_settings.network_settings_arn #=> String
    #   resp.data.network_settings.associated_portal_arns #=> Array<String>
    #   resp.data.network_settings.associated_portal_arns[0] #=> String
    #   resp.data.network_settings.vpc_id #=> String
    #   resp.data.network_settings.subnet_ids #=> Array<String>
    #   resp.data.network_settings.subnet_ids[0] #=> String
    #   resp.data.network_settings.security_group_ids #=> Array<String>
    #   resp.data.network_settings.security_group_ids[0] #=> String
    #
    def update_network_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateNetworkSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateNetworkSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateNetworkSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateNetworkSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateNetworkSettings,
        stubs: @stubs,
        params_class: Params::UpdateNetworkSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_network_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a web portal.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePortalInput}.
    #
    # @option params [String] :portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    # @option params [String] :display_name
    #   <p>The name of the web portal. This is not visible to users who log into the web portal.</p>
    #
    # @return [Types::UpdatePortalOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_portal(
    #     portal_arn: 'portalArn', # required
    #     display_name: 'displayName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePortalOutput
    #   resp.data.portal #=> Types::Portal
    #   resp.data.portal.portal_arn #=> String
    #   resp.data.portal.renderer_type #=> String, one of ["AppStream"]
    #   resp.data.portal.browser_type #=> String, one of ["Chrome"]
    #   resp.data.portal.portal_status #=> String, one of ["Incomplete", "Pending", "Active"]
    #   resp.data.portal.portal_endpoint #=> String
    #   resp.data.portal.display_name #=> String
    #   resp.data.portal.creation_date #=> Time
    #   resp.data.portal.browser_settings_arn #=> String
    #   resp.data.portal.user_settings_arn #=> String
    #   resp.data.portal.network_settings_arn #=> String
    #   resp.data.portal.trust_store_arn #=> String
    #   resp.data.portal.status_reason #=> String
    #
    def update_portal(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePortalInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePortalInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePortal
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::UpdatePortal
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePortal,
        stubs: @stubs,
        params_class: Params::UpdatePortalOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_portal
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the trust store.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTrustStoreInput}.
    #
    # @option params [String] :trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #
    # @option params [Array<String>] :certificates_to_add
    #   <p>A list of CA certificates to add to the trust store.</p>
    #
    # @option params [Array<String>] :certificates_to_delete
    #   <p>A list of CA certificates to delete from a trust store.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    # @return [Types::UpdateTrustStoreOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_trust_store(
    #     trust_store_arn: 'trustStoreArn', # required
    #     certificates_to_add: [
    #       'member'
    #     ],
    #     certificates_to_delete: [
    #       'member'
    #     ],
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTrustStoreOutput
    #   resp.data.trust_store_arn #=> String
    #
    def update_trust_store(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTrustStoreInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTrustStoreInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTrustStore
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException, Errors::ServiceQuotaExceededException]),
        data_parser: Parsers::UpdateTrustStore
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTrustStore,
        stubs: @stubs,
        params_class: Params::UpdateTrustStoreOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_trust_store
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the user settings.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserSettingsInput}.
    #
    # @option params [String] :user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #
    # @option params [String] :copy_allowed
    #   <p>Specifies whether the user can copy text from the streaming session to the local
    #            device.</p>
    #
    # @option params [String] :paste_allowed
    #   <p>Specifies whether the user can paste text from the local device to the streaming
    #            session.</p>
    #
    # @option params [String] :download_allowed
    #   <p>Specifies whether the user can download files from the streaming session to the local
    #            device.</p>
    #
    # @option params [String] :upload_allowed
    #   <p>Specifies whether the user can upload files from the local device to the streaming
    #            session.</p>
    #
    # @option params [String] :print_allowed
    #   <p>Specifies whether the user can print to the local device.</p>
    #
    # @option params [Integer] :disconnect_timeout_in_minutes
    #   <p>The amount of time that a streaming session remains active after users disconnect.</p>
    #
    # @option params [Integer] :idle_disconnect_timeout_in_minutes
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the disconnect timeout interval begins.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    # @return [Types::UpdateUserSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_settings(
    #     user_settings_arn: 'userSettingsArn', # required
    #     copy_allowed: 'Disabled', # accepts ["Disabled", "Enabled"]
    #     paste_allowed: 'Disabled', # accepts ["Disabled", "Enabled"]
    #     download_allowed: 'Disabled', # accepts ["Disabled", "Enabled"]
    #     upload_allowed: 'Disabled', # accepts ["Disabled", "Enabled"]
    #     print_allowed: 'Disabled', # accepts ["Disabled", "Enabled"]
    #     disconnect_timeout_in_minutes: 1,
    #     idle_disconnect_timeout_in_minutes: 1,
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserSettingsOutput
    #   resp.data.user_settings #=> Types::UserSettings
    #   resp.data.user_settings.user_settings_arn #=> String
    #   resp.data.user_settings.associated_portal_arns #=> Array<String>
    #   resp.data.user_settings.associated_portal_arns[0] #=> String
    #   resp.data.user_settings.copy_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings.paste_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings.download_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings.upload_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings.print_allowed #=> String, one of ["Disabled", "Enabled"]
    #   resp.data.user_settings.disconnect_timeout_in_minutes #=> Integer
    #   resp.data.user_settings.idle_disconnect_timeout_in_minutes #=> Integer
    #
    def update_user_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserSettingsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUserSettings
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::AccessDeniedException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::InternalServerException]),
        data_parser: Parsers::UpdateUserSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUserSettings,
        stubs: @stubs,
        params_class: Params::UpdateUserSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user_settings
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
