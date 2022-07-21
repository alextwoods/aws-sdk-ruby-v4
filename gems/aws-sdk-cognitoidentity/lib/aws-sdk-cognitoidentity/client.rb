# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CognitoIdentity
  # An API client for AWSCognitoIdentityService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Cognito Federated Identities</fullname>
  #          <p>Amazon Cognito Federated Identities is a web service that delivers scoped temporary
  #          credentials to mobile devices and other untrusted environments. It uniquely identifies a
  #          device and supplies the user with a consistent identity over the lifetime of an
  #          application.</p>
  #          <p>Using Amazon Cognito Federated Identities, you can enable authentication with one or
  #          more third-party identity providers (Facebook, Google, or Login with Amazon) or an Amazon
  #          Cognito user pool, and you can also choose to support unauthenticated access from your app.
  #          Cognito delivers a unique identifier for each user and acts as an OpenID token provider
  #          trusted by AWS Security Token Service (STS) to access temporary, limited-privilege AWS
  #          credentials.</p>
  #          <p>For a description of the authentication flow from the Amazon Cognito Developer Guide
  #          see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Authentication Flow</a>.</p>
  #          <p>For more information see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html">Amazon Cognito Federated Identities</a>.</p>
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
    def initialize(config = AWS::SDK::CognitoIdentity::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a new identity pool. The identity pool is a store of user identity
    #          information that is specific to your AWS account. The keys for <code>SupportedLoginProviders</code> are as follows:</p>
    #
    #          <ul>
    #             <li>
    #                <p>Facebook: <code>graph.facebook.com</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Google: <code>accounts.google.com</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Amazon: <code>www.amazon.com</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Twitter: <code>api.twitter.com</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>Digits: <code>www.digits.com</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    #          <p>You must use AWS Developer credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateIdentityPoolInput}.
    #
    # @option params [String] :identity_pool_name
    #   <p>A string that you provide.</p>
    #
    # @option params [Boolean] :allow_unauthenticated_identities
    #   <p>TRUE if the identity pool supports unauthenticated logins.</p>
    #
    # @option params [Boolean] :allow_classic_flow
    #   <p>Enables or disables the Basic (Classic) authentication flow. For more information, see
    #         <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Identity Pools (Federated Identities) Authentication Flow</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    # @option params [Hash<String, String>] :supported_login_providers
    #   <p>Optional key:value pairs mapping provider names to provider app IDs.</p>
    #
    # @option params [String] :developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users. This name acts as a
    #            placeholder that allows your backend and the Cognito service to communicate about the
    #            developer provider. For the <code>DeveloperProviderName</code>, you can use letters as well
    #            as period (<code>.</code>), underscore (<code>_</code>), and dash
    #            (<code>-</code>).</p>
    #            <p>Once you have set a developer provider name, you cannot change it. Please take care
    #            in setting this parameter.</p>
    #
    # @option params [Array<String>] :open_id_connect_provider_ar_ns
    #   <p>The Amazon Resource Names (ARN) of the OpenID Connect providers.</p>
    #
    # @option params [Array<CognitoIdentityProvider>] :cognito_identity_providers
    #   <p>An array of Amazon Cognito user pools and their client IDs.</p>
    #
    # @option params [Array<String>] :saml_provider_ar_ns
    #   <p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity
    #            pool.</p>
    #
    # @option params [Hash<String, String>] :identity_pool_tags
    #   <p>Tags to assign to the identity pool. A tag is a label that you can apply to identity
    #            pools to categorize and manage them in different ways, such as by purpose, owner,
    #            environment, or other criteria.</p>
    #
    # @return [Types::CreateIdentityPoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_identity_pool(
    #     identity_pool_name: 'IdentityPoolName', # required
    #     allow_unauthenticated_identities: false, # required
    #     allow_classic_flow: false,
    #     supported_login_providers: {
    #       'key' => 'value'
    #     },
    #     developer_provider_name: 'DeveloperProviderName',
    #     open_id_connect_provider_ar_ns: [
    #       'member'
    #     ],
    #     cognito_identity_providers: [
    #       {
    #         provider_name: 'ProviderName',
    #         client_id: 'ClientId',
    #         server_side_token_check: false
    #       }
    #     ],
    #     saml_provider_ar_ns: [
    #       'member'
    #     ],
    #     identity_pool_tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateIdentityPoolOutput
    #   resp.data.identity_pool_id #=> String
    #   resp.data.identity_pool_name #=> String
    #   resp.data.allow_unauthenticated_identities #=> Boolean
    #   resp.data.allow_classic_flow #=> Boolean
    #   resp.data.supported_login_providers #=> Hash<String, String>
    #   resp.data.supported_login_providers['key'] #=> String
    #   resp.data.developer_provider_name #=> String
    #   resp.data.open_id_connect_provider_ar_ns #=> Array<String>
    #   resp.data.open_id_connect_provider_ar_ns[0] #=> String
    #   resp.data.cognito_identity_providers #=> Array<CognitoIdentityProvider>
    #   resp.data.cognito_identity_providers[0] #=> Types::CognitoIdentityProvider
    #   resp.data.cognito_identity_providers[0].provider_name #=> String
    #   resp.data.cognito_identity_providers[0].client_id #=> String
    #   resp.data.cognito_identity_providers[0].server_side_token_check #=> Boolean
    #   resp.data.saml_provider_ar_ns #=> Array<String>
    #   resp.data.saml_provider_ar_ns[0] #=> String
    #   resp.data.identity_pool_tags #=> Hash<String, String>
    #   resp.data.identity_pool_tags['key'] #=> String
    #
    def create_identity_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateIdentityPoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateIdentityPoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateIdentityPool
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceConflictException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateIdentityPool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateIdentityPool,
        stubs: @stubs,
        params_class: Params::CreateIdentityPoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_identity_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes identities from an identity pool. You can specify a list of 1-60 identities
    #          that you want to delete.</p>
    #          <p>You must use AWS Developer credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIdentitiesInput}.
    #
    # @option params [Array<String>] :identity_ids_to_delete
    #   <p>A list of 1-60 identities that you want to delete.</p>
    #
    # @return [Types::DeleteIdentitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identities(
    #     identity_ids_to_delete: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIdentitiesOutput
    #   resp.data.unprocessed_identity_ids #=> Array<UnprocessedIdentityId>
    #   resp.data.unprocessed_identity_ids[0] #=> Types::UnprocessedIdentityId
    #   resp.data.unprocessed_identity_ids[0].identity_id #=> String
    #   resp.data.unprocessed_identity_ids[0].error_code #=> String, one of ["AccessDenied", "InternalServerError"]
    #
    def delete_identities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIdentitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIdentitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIdentities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalErrorException, Errors::InvalidParameterException]),
        data_parser: Parsers::DeleteIdentities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIdentities,
        stubs: @stubs,
        params_class: Params::DeleteIdentitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_identities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an identity pool. Once a pool is deleted, users will not be able to
    #          authenticate with the pool.</p>
    #          <p>You must use AWS Developer credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteIdentityPoolInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #
    # @return [Types::DeleteIdentityPoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity_pool(
    #     identity_pool_id: 'IdentityPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteIdentityPoolOutput
    #
    def delete_identity_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteIdentityPoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteIdentityPoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteIdentityPool
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::DeleteIdentityPool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteIdentityPool,
        stubs: @stubs,
        params_class: Params::DeleteIdentityPoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_identity_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns metadata related to the given identity, including when the identity was
    #          created and any associated linked logins.</p>
    #          <p>You must use AWS Developer credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeIdentityInput}.
    #
    # @option params [String] :identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #
    # @return [Types::DescribeIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity(
    #     identity_id: 'IdentityId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIdentityOutput
    #   resp.data.identity_id #=> String
    #   resp.data.logins #=> Array<String>
    #   resp.data.logins[0] #=> String
    #   resp.data.creation_date #=> Time
    #   resp.data.last_modified_date #=> Time
    #
    def describe_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIdentityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIdentityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIdentity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::DescribeIdentity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIdentity,
        stubs: @stubs,
        params_class: Params::DescribeIdentityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_identity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details about a particular identity pool, including the pool name, ID
    #          description, creation date, and current number of users.</p>
    #          <p>You must use AWS Developer credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeIdentityPoolInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #
    # @return [Types::DescribeIdentityPoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_pool(
    #     identity_pool_id: 'IdentityPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeIdentityPoolOutput
    #   resp.data.identity_pool_id #=> String
    #   resp.data.identity_pool_name #=> String
    #   resp.data.allow_unauthenticated_identities #=> Boolean
    #   resp.data.allow_classic_flow #=> Boolean
    #   resp.data.supported_login_providers #=> Hash<String, String>
    #   resp.data.supported_login_providers['key'] #=> String
    #   resp.data.developer_provider_name #=> String
    #   resp.data.open_id_connect_provider_ar_ns #=> Array<String>
    #   resp.data.open_id_connect_provider_ar_ns[0] #=> String
    #   resp.data.cognito_identity_providers #=> Array<CognitoIdentityProvider>
    #   resp.data.cognito_identity_providers[0] #=> Types::CognitoIdentityProvider
    #   resp.data.cognito_identity_providers[0].provider_name #=> String
    #   resp.data.cognito_identity_providers[0].client_id #=> String
    #   resp.data.cognito_identity_providers[0].server_side_token_check #=> Boolean
    #   resp.data.saml_provider_ar_ns #=> Array<String>
    #   resp.data.saml_provider_ar_ns[0] #=> String
    #   resp.data.identity_pool_tags #=> Hash<String, String>
    #   resp.data.identity_pool_tags['key'] #=> String
    #
    def describe_identity_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeIdentityPoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeIdentityPoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeIdentityPool
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::DescribeIdentityPool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeIdentityPool,
        stubs: @stubs,
        params_class: Params::DescribeIdentityPoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_identity_pool
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns credentials for the provided identity ID. Any provided logins will be
    #          validated against supported login providers. If the token is for
    #          cognito-identity.amazonaws.com, it will be passed through to AWS Security Token Service
    #          with the appropriate role for the token.</p>
    #          <p>This is a public API. You do not need any credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCredentialsForIdentityInput}.
    #
    # @option params [String] :identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #
    # @option params [Hash<String, String>] :logins
    #   <p>A set of optional name-value pairs that map provider names to provider tokens. The
    #            name-value pair will follow the syntax "provider_name":
    #            "provider_user_identifier".</p>
    #            <p>Logins should not be specified when trying to get credentials for an unauthenticated
    #            identity.</p>
    #            <p>The Logins parameter is required when using identities associated with external
    #            identity providers such as Facebook. For examples of <code>Logins</code> maps, see the code
    #            examples in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/external-identity-providers.html">External Identity Providers</a> section of the Amazon Cognito Developer
    #            Guide.</p>
    #
    # @option params [String] :custom_role_arn
    #   <p>The Amazon Resource Name (ARN) of the role to be assumed when multiple roles were
    #            received in the token from the identity provider. For example, a SAML-based identity
    #            provider. This parameter is optional for identity providers that do not support role
    #            customization.</p>
    #
    # @return [Types::GetCredentialsForIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_credentials_for_identity(
    #     identity_id: 'IdentityId', # required
    #     logins: {
    #       'key' => 'value'
    #     },
    #     custom_role_arn: 'CustomRoleArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCredentialsForIdentityOutput
    #   resp.data.identity_id #=> String
    #   resp.data.credentials #=> Types::Credentials
    #   resp.data.credentials.access_key_id #=> String
    #   resp.data.credentials.secret_key #=> String
    #   resp.data.credentials.session_token #=> String
    #   resp.data.credentials.expiration #=> Time
    #
    def get_credentials_for_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCredentialsForIdentityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCredentialsForIdentityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCredentialsForIdentity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ExternalServiceException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidIdentityPoolConfigurationException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::GetCredentialsForIdentity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCredentialsForIdentity,
        stubs: @stubs,
        params_class: Params::GetCredentialsForIdentityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_credentials_for_identity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates (or retrieves) a Cognito ID. Supplying multiple logins will create an
    #          implicit linked account.</p>
    #          <p>This is a public API. You do not need any credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIdInput}.
    #
    # @option params [String] :account_id
    #   <p>A standard AWS account ID (9+ digits).</p>
    #
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #
    # @option params [Hash<String, String>] :logins
    #   <p>A set of optional name-value pairs that map provider names to provider tokens. The
    #            available provider names for <code>Logins</code> are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>Facebook: <code>graph.facebook.com</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Cognito user pool:
    #                     <code>cognito-idp.<region>.amazonaws.com/<YOUR_USER_POOL_ID></code>,
    #                  for example, <code>cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789</code>.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>Google: <code>accounts.google.com</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon: <code>www.amazon.com</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Twitter: <code>api.twitter.com</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Digits: <code>www.digits.com</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::GetIdOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_id(
    #     account_id: 'AccountId',
    #     identity_pool_id: 'IdentityPoolId', # required
    #     logins: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIdOutput
    #   resp.data.identity_id #=> String
    #
    def get_id(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIdInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIdInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetId
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ExternalServiceException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException, Errors::LimitExceededException]),
        data_parser: Parsers::GetId
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetId,
        stubs: @stubs,
        params_class: Params::GetIdOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_id
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the roles for an identity pool.</p>
    #          <p>You must use AWS Developer credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetIdentityPoolRolesInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #
    # @return [Types::GetIdentityPoolRolesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_pool_roles(
    #     identity_pool_id: 'IdentityPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetIdentityPoolRolesOutput
    #   resp.data.identity_pool_id #=> String
    #   resp.data.roles #=> Hash<String, String>
    #   resp.data.roles['key'] #=> String
    #   resp.data.role_mappings #=> Hash<String, RoleMapping>
    #   resp.data.role_mappings['key'] #=> Types::RoleMapping
    #   resp.data.role_mappings['key'].type #=> String, one of ["Token", "Rules"]
    #   resp.data.role_mappings['key'].ambiguous_role_resolution #=> String, one of ["AuthenticatedRole", "Deny"]
    #   resp.data.role_mappings['key'].rules_configuration #=> Types::RulesConfigurationType
    #   resp.data.role_mappings['key'].rules_configuration.rules #=> Array<MappingRule>
    #   resp.data.role_mappings['key'].rules_configuration.rules[0] #=> Types::MappingRule
    #   resp.data.role_mappings['key'].rules_configuration.rules[0].claim #=> String
    #   resp.data.role_mappings['key'].rules_configuration.rules[0].match_type #=> String, one of ["Equals", "Contains", "StartsWith", "NotEqual"]
    #   resp.data.role_mappings['key'].rules_configuration.rules[0].value #=> String
    #   resp.data.role_mappings['key'].rules_configuration.rules[0].role_arn #=> String
    #
    def get_identity_pool_roles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetIdentityPoolRolesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetIdentityPoolRolesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetIdentityPoolRoles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::GetIdentityPoolRoles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetIdentityPoolRoles,
        stubs: @stubs,
        params_class: Params::GetIdentityPoolRolesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_identity_pool_roles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets an OpenID token, using a known Cognito ID. This known Cognito ID is returned by
    #             <a>GetId</a>. You can optionally add additional logins for the identity.
    #          Supplying multiple logins creates an implicit link.</p>
    #          <p>The OpenID token is valid for 10 minutes.</p>
    #          <p>This is a public API. You do not need any credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOpenIdTokenInput}.
    #
    # @option params [String] :identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #
    # @option params [Hash<String, String>] :logins
    #   <p>A set of optional name-value pairs that map provider names to provider tokens. When
    #            using graph.facebook.com and www.amazon.com, supply the access_token returned from the
    #            provider's authflow. For accounts.google.com, an Amazon Cognito user pool provider, or any
    #            other OpenID Connect provider, always include the <code>id_token</code>.</p>
    #
    # @return [Types::GetOpenIdTokenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_open_id_token(
    #     identity_id: 'IdentityId', # required
    #     logins: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOpenIdTokenOutput
    #   resp.data.identity_id #=> String
    #   resp.data.token #=> String
    #
    def get_open_id_token(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOpenIdTokenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOpenIdTokenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOpenIdToken
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ExternalServiceException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::GetOpenIdToken
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOpenIdToken,
        stubs: @stubs,
        params_class: Params::GetOpenIdTokenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_open_id_token
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers (or retrieves) a Cognito <code>IdentityId</code> and an OpenID Connect
    #          token for a user authenticated by your backend authentication process. Supplying multiple
    #          logins will create an implicit linked account. You can only specify one developer provider
    #          as part of the <code>Logins</code> map, which is linked to the identity pool. The developer
    #          provider is the "domain" by which Cognito will refer to your users.</p>
    #          <p>You can use <code>GetOpenIdTokenForDeveloperIdentity</code> to create a new identity
    #          and to link new logins (that is, user credentials issued by a public provider or developer
    #          provider) to an existing identity. When you want to create a new identity, the
    #             <code>IdentityId</code> should be null. When you want to associate a new login with an
    #          existing authenticated/unauthenticated identity, you can do so by providing the existing
    #             <code>IdentityId</code>. This API will create the identity in the specified
    #             <code>IdentityPoolId</code>.</p>
    #          <p>You must use AWS Developer credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOpenIdTokenForDeveloperIdentityInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #
    # @option params [String] :identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #
    # @option params [Hash<String, String>] :logins
    #   <p>A set of optional name-value pairs that map provider names to provider tokens. Each
    #            name-value pair represents a user from a public provider or developer provider. If the user
    #            is from a developer provider, the name-value pair will follow the syntax
    #               <code>"developer_provider_name": "developer_user_identifier"</code>. The developer
    #            provider is the "domain" by which Cognito will refer to your users; you provided this
    #            domain while creating/updating the identity pool. The developer user identifier is an
    #            identifier from your backend that uniquely identifies a user. When you create an identity
    #            pool, you can specify the supported logins.</p>
    #
    # @option params [Hash<String, String>] :principal_tags
    #   <p>Use this operation to configure attribute mappings for custom providers. </p>
    #
    # @option params [Integer] :token_duration
    #   <p>The expiration time of the token, in seconds. You can specify a custom expiration
    #            time for the token so that you can cache it. If you don't provide an expiration time, the
    #            token is valid for 15 minutes. You can exchange the token with Amazon STS for temporary AWS
    #            credentials, which are valid for a maximum of one hour. The maximum token duration you can
    #            set is 24 hours. You should take care in setting the expiration time for a token, as there
    #            are significant security implications: an attacker could use a leaked token to access your
    #            AWS resources for the token's duration.</p>
    #            <note>
    #               <p>Please provide for a small grace period, usually no more than 5 minutes, to account for clock skew.</p>
    #            </note>
    #
    # @return [Types::GetOpenIdTokenForDeveloperIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_open_id_token_for_developer_identity(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     identity_id: 'IdentityId',
    #     logins: {
    #       'key' => 'value'
    #     }, # required
    #     principal_tags: {
    #       'key' => 'value'
    #     },
    #     token_duration: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOpenIdTokenForDeveloperIdentityOutput
    #   resp.data.identity_id #=> String
    #   resp.data.token #=> String
    #
    def get_open_id_token_for_developer_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOpenIdTokenForDeveloperIdentityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOpenIdTokenForDeveloperIdentityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOpenIdTokenForDeveloperIdentity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException, Errors::DeveloperUserAlreadyRegisteredException]),
        data_parser: Parsers::GetOpenIdTokenForDeveloperIdentity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOpenIdTokenForDeveloperIdentity,
        stubs: @stubs,
        params_class: Params::GetOpenIdTokenForDeveloperIdentityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_open_id_token_for_developer_identity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use <code>GetPrincipalTagAttributeMap</code> to list all mappings between <code>PrincipalTags</code> and user attributes.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPrincipalTagAttributeMapInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>You can use this operation to get the ID of the Identity Pool you setup attribute mappings for.</p>
    #
    # @option params [String] :identity_provider_name
    #   <p>You can use this operation to get the provider name.</p>
    #
    # @return [Types::GetPrincipalTagAttributeMapOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_principal_tag_attribute_map(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     identity_provider_name: 'IdentityProviderName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPrincipalTagAttributeMapOutput
    #   resp.data.identity_pool_id #=> String
    #   resp.data.identity_provider_name #=> String
    #   resp.data.use_defaults #=> Boolean
    #   resp.data.principal_tags #=> Hash<String, String>
    #   resp.data.principal_tags['key'] #=> String
    #
    def get_principal_tag_attribute_map(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPrincipalTagAttributeMapInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPrincipalTagAttributeMapInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPrincipalTagAttributeMap
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::GetPrincipalTagAttributeMap
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPrincipalTagAttributeMap,
        stubs: @stubs,
        params_class: Params::GetPrincipalTagAttributeMapOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_principal_tag_attribute_map
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the identities in an identity pool.</p>
    #          <p>You must use AWS Developer credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIdentitiesInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of identities to return.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token.</p>
    #
    # @option params [Boolean] :hide_disabled
    #   <p>An optional boolean parameter that allows you to hide disabled identities. If
    #            omitted, the ListIdentities API will include disabled identities in the response.</p>
    #
    # @return [Types::ListIdentitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identities(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     max_results: 1, # required
    #     next_token: 'NextToken',
    #     hide_disabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIdentitiesOutput
    #   resp.data.identity_pool_id #=> String
    #   resp.data.identities #=> Array<IdentityDescription>
    #   resp.data.identities[0] #=> Types::IdentityDescription
    #   resp.data.identities[0].identity_id #=> String
    #   resp.data.identities[0].logins #=> Array<String>
    #   resp.data.identities[0].logins[0] #=> String
    #   resp.data.identities[0].creation_date #=> Time
    #   resp.data.identities[0].last_modified_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_identities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIdentitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIdentitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIdentities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::ListIdentities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIdentities,
        stubs: @stubs,
        params_class: Params::ListIdentitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_identities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the Cognito identity pools registered for your account.</p>
    #          <p>You must use AWS Developer credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::ListIdentityPoolsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of identities to return.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token.</p>
    #
    # @return [Types::ListIdentityPoolsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_pools(
    #     max_results: 1, # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListIdentityPoolsOutput
    #   resp.data.identity_pools #=> Array<IdentityPoolShortDescription>
    #   resp.data.identity_pools[0] #=> Types::IdentityPoolShortDescription
    #   resp.data.identity_pools[0].identity_pool_id #=> String
    #   resp.data.identity_pools[0].identity_pool_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_identity_pools(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListIdentityPoolsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListIdentityPoolsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListIdentityPools
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::ListIdentityPools
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListIdentityPools,
        stubs: @stubs,
        params_class: Params::ListIdentityPoolsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_identity_pools
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that are assigned to an Amazon Cognito identity pool.</p>
    #          <p>A tag is a label that you can apply to identity pools to categorize and manage them in
    #          different ways, such as by purpose, owner, environment, or other criteria.</p>
    #          <p>You can use this action up to 10 times per second, per account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the identity pool that the tags are assigned
    #            to.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
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

    # <p>Retrieves the <code>IdentityID</code> associated with a
    #             <code>DeveloperUserIdentifier</code> or the list of <code>DeveloperUserIdentifier</code>
    #          values associated with an <code>IdentityId</code> for an existing identity. Either
    #             <code>IdentityID</code> or <code>DeveloperUserIdentifier</code> must not be null. If you
    #          supply only one of these values, the other value will be searched in the database and
    #          returned as a part of the response. If you supply both,
    #             <code>DeveloperUserIdentifier</code> will be matched against <code>IdentityID</code>. If
    #          the values are verified against the database, the response returns both values and is the
    #          same as the request. Otherwise a <code>ResourceConflictException</code> is
    #          thrown.</p>
    #          <p>
    #             <code>LookupDeveloperIdentity</code> is intended for low-throughput control plane
    #          operations: for example, to enable customer service to locate an identity ID by username.
    #          If you are using it for higher-volume operations such as user authentication, your requests
    #          are likely to be throttled. <a>GetOpenIdTokenForDeveloperIdentity</a> is a
    #          better option for higher-volume operations for user authentication.</p>
    #          <p>You must use AWS Developer credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::LookupDeveloperIdentityInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #
    # @option params [String] :identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #
    # @option params [String] :developer_user_identifier
    #   <p>A unique ID used by your backend authentication process to identify a user.
    #            Typically, a developer identity provider would issue many developer user identifiers, in
    #            keeping with the number of users.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of identities to return.</p>
    #
    # @option params [String] :next_token
    #   <p>A pagination token. The first call you make will have <code>NextToken</code> set to
    #            null. After that the service will return <code>NextToken</code> values as needed. For
    #            example, let's say you make a request with <code>MaxResults</code> set to 10, and there are
    #            20 matches in the database. The service will return a pagination token as a part of the
    #            response. This token can be used to call the API again and get results starting from the
    #            11th match.</p>
    #
    # @return [Types::LookupDeveloperIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.lookup_developer_identity(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     identity_id: 'IdentityId',
    #     developer_user_identifier: 'DeveloperUserIdentifier',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::LookupDeveloperIdentityOutput
    #   resp.data.identity_id #=> String
    #   resp.data.developer_user_identifier_list #=> Array<String>
    #   resp.data.developer_user_identifier_list[0] #=> String
    #   resp.data.next_token #=> String
    #
    def lookup_developer_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::LookupDeveloperIdentityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::LookupDeveloperIdentityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::LookupDeveloperIdentity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::LookupDeveloperIdentity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::LookupDeveloperIdentity,
        stubs: @stubs,
        params_class: Params::LookupDeveloperIdentityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :lookup_developer_identity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Merges two users having different <code>IdentityId</code>s, existing in the same
    #          identity pool, and identified by the same developer provider. You can use this action to
    #          request that discrete users be merged and identified as a single user in the Cognito
    #          environment. Cognito associates the given source user (<code>SourceUserIdentifier</code>)
    #          with the <code>IdentityId</code> of the <code>DestinationUserIdentifier</code>. Only
    #          developer-authenticated users can be merged. If the users to be merged are associated with
    #          the same public provider, but as two different users, an exception will be
    #          thrown.</p>
    #          <p>The number of linked logins is limited to 20. So, the number of linked logins for the
    #          source user, <code>SourceUserIdentifier</code>, and the destination user,
    #          <code>DestinationUserIdentifier</code>, together should not be larger than 20.
    #          Otherwise, an exception will be thrown.</p>
    #          <p>You must use AWS Developer credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::MergeDeveloperIdentitiesInput}.
    #
    # @option params [String] :source_user_identifier
    #   <p>User identifier for the source user. The value should be a
    #               <code>DeveloperUserIdentifier</code>.</p>
    #
    # @option params [String] :destination_user_identifier
    #   <p>User identifier for the destination user. The value should be a
    #               <code>DeveloperUserIdentifier</code>.</p>
    #
    # @option params [String] :developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users. This is a (pseudo) domain
    #            name that you provide while creating an identity pool. This name acts as a placeholder that
    #            allows your backend and the Cognito service to communicate about the developer provider.
    #            For the <code>DeveloperProviderName</code>, you can use letters as well as period (.),
    #            underscore (_), and dash (-).</p>
    #
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #
    # @return [Types::MergeDeveloperIdentitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_developer_identities(
    #     source_user_identifier: 'SourceUserIdentifier', # required
    #     destination_user_identifier: 'DestinationUserIdentifier', # required
    #     developer_provider_name: 'DeveloperProviderName', # required
    #     identity_pool_id: 'IdentityPoolId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::MergeDeveloperIdentitiesOutput
    #   resp.data.identity_id #=> String
    #
    def merge_developer_identities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::MergeDeveloperIdentitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::MergeDeveloperIdentitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::MergeDeveloperIdentities
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::MergeDeveloperIdentities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::MergeDeveloperIdentities,
        stubs: @stubs,
        params_class: Params::MergeDeveloperIdentitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :merge_developer_identities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the roles for an identity pool. These roles are used when making calls to <a>GetCredentialsForIdentity</a> action.</p>
    #          <p>You must use AWS Developer credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::SetIdentityPoolRolesInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #
    # @option params [Hash<String, String>] :roles
    #   <p>The map of roles associated with this pool. For a given role, the key will be either
    #            "authenticated" or "unauthenticated" and the value will be the Role ARN.</p>
    #
    # @option params [Hash<String, RoleMapping>] :role_mappings
    #   <p>How users for a specific identity provider are to mapped to roles. This is a string
    #            to <a>RoleMapping</a> object map. The string identifies the identity provider,
    #            for example, "graph.facebook.com" or
    #            "cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id".</p>
    #            <p>Up to 25 rules can be specified per identity provider.</p>
    #
    # @return [Types::SetIdentityPoolRolesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_identity_pool_roles(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     roles: {
    #       'key' => 'value'
    #     }, # required
    #     role_mappings: {
    #       'key' => {
    #         type: 'Token', # required - accepts ["Token", "Rules"]
    #         ambiguous_role_resolution: 'AuthenticatedRole', # accepts ["AuthenticatedRole", "Deny"]
    #         rules_configuration: {
    #           rules: [
    #             {
    #               claim: 'Claim', # required
    #               match_type: 'Equals', # required - accepts ["Equals", "Contains", "StartsWith", "NotEqual"]
    #               value: 'Value', # required
    #               role_arn: 'RoleARN' # required
    #             }
    #           ] # required
    #         }
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetIdentityPoolRolesOutput
    #
    def set_identity_pool_roles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetIdentityPoolRolesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetIdentityPoolRolesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetIdentityPoolRoles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::ConcurrentModificationException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::SetIdentityPoolRoles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetIdentityPoolRoles,
        stubs: @stubs,
        params_class: Params::SetIdentityPoolRolesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_identity_pool_roles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>You can use this operation to use default (username and clientID) attribute or custom attribute mappings.</p>
    #
    # @param [Hash] params
    #   See {Types::SetPrincipalTagAttributeMapInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>The ID of the Identity Pool you want to set attribute mappings for.</p>
    #
    # @option params [String] :identity_provider_name
    #   <p>The provider name you want to use for attribute mappings.</p>
    #
    # @option params [Boolean] :use_defaults
    #   <p>You can use this operation to use default (username and clientID) attribute mappings.</p>
    #
    # @option params [Hash<String, String>] :principal_tags
    #   <p>You can use this operation to add principal tags.</p>
    #
    # @return [Types::SetPrincipalTagAttributeMapOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_principal_tag_attribute_map(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     identity_provider_name: 'IdentityProviderName', # required
    #     use_defaults: false,
    #     principal_tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetPrincipalTagAttributeMapOutput
    #   resp.data.identity_pool_id #=> String
    #   resp.data.identity_provider_name #=> String
    #   resp.data.use_defaults #=> Boolean
    #   resp.data.principal_tags #=> Hash<String, String>
    #   resp.data.principal_tags['key'] #=> String
    #
    def set_principal_tag_attribute_map(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetPrincipalTagAttributeMapInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetPrincipalTagAttributeMapInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetPrincipalTagAttributeMap
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::SetPrincipalTagAttributeMap
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetPrincipalTagAttributeMap,
        stubs: @stubs,
        params_class: Params::SetPrincipalTagAttributeMapOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_principal_tag_attribute_map
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns a set of tags to the specified Amazon Cognito identity pool. A tag is a label
    #          that you can use to categorize and manage identity pools in different ways, such as by
    #          purpose, owner, environment, or other criteria.</p>
    #          <p>Each tag consists of a key and value, both of which you define. A key is a general
    #          category for more specific values. For example, if you have two versions of an identity
    #          pool, one for testing and another for production, you might assign an
    #             <code>Environment</code> tag key to both identity pools. The value of this key might be
    #             <code>Test</code> for one identity pool and <code>Production</code> for the
    #          other.</p>
    #          <p>Tags are useful for cost tracking and access control. You can activate your tags so that
    #          they appear on the Billing and Cost Management console, where you can track the costs
    #          associated with your identity pools. In an IAM policy, you can constrain permissions for
    #          identity pools based on specific tags or tag values.</p>
    #          <p>You can use this action up to 5 times per second, per account. An identity pool can have
    #          as many as 50 tags.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the identity pool.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the identity pool.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
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

    # <p>Unlinks a <code>DeveloperUserIdentifier</code> from an existing identity. Unlinked
    #          developer users will be considered new identities next time they are seen. If, for a given
    #          Cognito identity, you remove all federated identities as well as the developer user
    #          identifier, the Cognito identity becomes inaccessible.</p>
    #          <p>You must use AWS Developer credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::UnlinkDeveloperIdentityInput}.
    #
    # @option params [String] :identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #
    # @option params [String] :developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users.</p>
    #
    # @option params [String] :developer_user_identifier
    #   <p>A unique ID used by your backend authentication process to identify a user.</p>
    #
    # @return [Types::UnlinkDeveloperIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unlink_developer_identity(
    #     identity_id: 'IdentityId', # required
    #     identity_pool_id: 'IdentityPoolId', # required
    #     developer_provider_name: 'DeveloperProviderName', # required
    #     developer_user_identifier: 'DeveloperUserIdentifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UnlinkDeveloperIdentityOutput
    #
    def unlink_developer_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UnlinkDeveloperIdentityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UnlinkDeveloperIdentityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UnlinkDeveloperIdentity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::UnlinkDeveloperIdentity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UnlinkDeveloperIdentity,
        stubs: @stubs,
        params_class: Params::UnlinkDeveloperIdentityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :unlink_developer_identity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Unlinks a federated identity from an existing account. Unlinked logins will be
    #          considered new identities next time they are seen. Removing the last linked login will make
    #          this identity inaccessible.</p>
    #          <p>This is a public API. You do not need any credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::UnlinkIdentityInput}.
    #
    # @option params [String] :identity_id
    #   <p>A unique identifier in the format REGION:GUID.</p>
    #
    # @option params [Hash<String, String>] :logins
    #   <p>A set of optional name-value pairs that map provider names to provider
    #            tokens.</p>
    #
    # @option params [Array<String>] :logins_to_remove
    #   <p>Provider names to unlink from this identity.</p>
    #
    # @return [Types::UnlinkIdentityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unlink_identity(
    #     identity_id: 'IdentityId', # required
    #     logins: {
    #       'key' => 'value'
    #     }, # required
    #     logins_to_remove: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UnlinkIdentityOutput
    #
    def unlink_identity(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UnlinkIdentityInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UnlinkIdentityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UnlinkIdentity
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ExternalServiceException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
        data_parser: Parsers::UnlinkIdentity
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UnlinkIdentity,
        stubs: @stubs,
        params_class: Params::UnlinkIdentityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :unlink_identity
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified tags from the specified Amazon Cognito identity pool. You can use
    #          this action up to 5 times per second, per account</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the identity pool.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove from the user pool.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::InvalidParameterException, Errors::NotAuthorizedException]),
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

    # <p>Updates an identity pool.</p>
    #          <p>You must use AWS Developer credentials to call this API.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateIdentityPoolInput}.
    #
    # @option params [String] :identity_pool_id
    #   <p>An identity pool ID in the format REGION:GUID.</p>
    #
    # @option params [String] :identity_pool_name
    #   <p>A string that you provide.</p>
    #
    # @option params [Boolean] :allow_unauthenticated_identities
    #   <p>TRUE if the identity pool supports unauthenticated logins.</p>
    #
    # @option params [Boolean] :allow_classic_flow
    #   <p>Enables or disables the Basic (Classic) authentication flow. For more information, see
    #         <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Identity Pools (Federated Identities) Authentication Flow</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #
    # @option params [Hash<String, String>] :supported_login_providers
    #   <p>Optional key:value pairs mapping provider names to provider app IDs.</p>
    #
    # @option params [String] :developer_provider_name
    #   <p>The "domain" by which Cognito will refer to your users.</p>
    #
    # @option params [Array<String>] :open_id_connect_provider_ar_ns
    #   <p>The ARNs of the OpenID Connect providers.</p>
    #
    # @option params [Array<CognitoIdentityProvider>] :cognito_identity_providers
    #   <p>A list representing an Amazon Cognito user pool and its client ID.</p>
    #
    # @option params [Array<String>] :saml_provider_ar_ns
    #   <p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity
    #            pool.</p>
    #
    # @option params [Hash<String, String>] :identity_pool_tags
    #   <p>The tags that are assigned to the identity pool. A tag is a label that you can apply to
    #            identity pools to categorize and manage them in different ways, such as by purpose, owner,
    #            environment, or other criteria.</p>
    #
    # @return [Types::UpdateIdentityPoolOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_pool(
    #     identity_pool_id: 'IdentityPoolId', # required
    #     identity_pool_name: 'IdentityPoolName', # required
    #     allow_unauthenticated_identities: false, # required
    #     allow_classic_flow: false,
    #     supported_login_providers: {
    #       'key' => 'value'
    #     },
    #     developer_provider_name: 'DeveloperProviderName',
    #     open_id_connect_provider_ar_ns: [
    #       'member'
    #     ],
    #     cognito_identity_providers: [
    #       {
    #         provider_name: 'ProviderName',
    #         client_id: 'ClientId',
    #         server_side_token_check: false
    #       }
    #     ],
    #     saml_provider_ar_ns: [
    #       'member'
    #     ],
    #     identity_pool_tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateIdentityPoolOutput
    #   resp.data.identity_pool_id #=> String
    #   resp.data.identity_pool_name #=> String
    #   resp.data.allow_unauthenticated_identities #=> Boolean
    #   resp.data.allow_classic_flow #=> Boolean
    #   resp.data.supported_login_providers #=> Hash<String, String>
    #   resp.data.supported_login_providers['key'] #=> String
    #   resp.data.developer_provider_name #=> String
    #   resp.data.open_id_connect_provider_ar_ns #=> Array<String>
    #   resp.data.open_id_connect_provider_ar_ns[0] #=> String
    #   resp.data.cognito_identity_providers #=> Array<CognitoIdentityProvider>
    #   resp.data.cognito_identity_providers[0] #=> Types::CognitoIdentityProvider
    #   resp.data.cognito_identity_providers[0].provider_name #=> String
    #   resp.data.cognito_identity_providers[0].client_id #=> String
    #   resp.data.cognito_identity_providers[0].server_side_token_check #=> Boolean
    #   resp.data.saml_provider_ar_ns #=> Array<String>
    #   resp.data.saml_provider_ar_ns[0] #=> String
    #   resp.data.identity_pool_tags #=> Hash<String, String>
    #   resp.data.identity_pool_tags['key'] #=> String
    #
    def update_identity_pool(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateIdentityPoolInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateIdentityPoolInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateIdentityPool
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::InternalErrorException, Errors::ConcurrentModificationException, Errors::InvalidParameterException, Errors::NotAuthorizedException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateIdentityPool
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateIdentityPool,
        stubs: @stubs,
        params_class: Params::UpdateIdentityPoolOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_identity_pool
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
