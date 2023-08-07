# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::SSO
  # An API client for SWBPortalService
  # See {#initialize} for a full list of supported configuration options
  # <p>AWS IAM Identity Center (successor to AWS Single Sign-On) Portal is a web service that makes it easy for you to assign user access to
  #       IAM Identity Center resources such as the AWS access portal. Users can get AWS account applications and roles
  #       assigned to them and get federated into the application.</p>
  #
  #          <note>
  #             <p>Although AWS Single Sign-On was renamed, the <code>sso</code> and
  #           <code>identitystore</code> API namespaces will continue to retain their original name for
  #         backward compatibility purposes. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed">IAM Identity Center rename</a>.</p>
  #          </note>
  #
  #          <p>This reference guide describes the IAM Identity Center Portal operations that you can call
  #       programatically and includes detailed information on data types and errors.</p>
  #
  #          <note>
  #             <p>AWS provides SDKs that consist of libraries and sample code for various programming
  #         languages and platforms, such as Java, Ruby, .Net, iOS, or Android. The SDKs provide a
  #         convenient way to create programmatic access to IAM Identity Center and other AWS services. For more
  #         information about the AWS SDKs, including how to download and install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p>
  #          </note>
  #
  class Client
    include Hearth::ClientStubs
    @plugins = Hearth::PluginList.new

    def self.plugins
      @plugins
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::SSO::Config.new, options = {})
      @config = initialize_config(config)
      @stubs = Hearth::Stubbing::Stubs.new
    end

    # @return [Config] config
    attr_reader :config

    # <p>Returns the STS short-term credentials for a given role name that is assigned to the
    #       user.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRoleCredentialsInput}.
    #
    # @option params [String] :role_name
    #   <p>The friendly name of the role that is assigned to the user.</p>
    #
    # @option params [String] :account_id
    #   <p>The identifier for the AWS account that is assigned to the user.</p>
    #
    # @option params [String] :access_token
    #   <p>The token issued by the <code>CreateToken</code> API call. For more information, see
    #           <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>
    #
    # @return [Types::GetRoleCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_role_credentials(
    #     role_name: 'roleName', # required
    #     account_id: 'accountId', # required
    #     access_token: 'accessToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRoleCredentialsOutput
    #   resp.data.role_credentials #=> Types::RoleCredentials
    #   resp.data.role_credentials.access_key_id #=> String
    #   resp.data.role_credentials.secret_access_key #=> String
    #   resp.data.role_credentials.session_token #=> String
    #   resp.data.role_credentials.expiration #=> Integer
    #
    def get_role_credentials(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRoleCredentialsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRoleCredentialsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRoleCredentials
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::GetRoleCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::InvalidRequestException, Stubs::ResourceNotFoundException, Stubs::TooManyRequestsException, Stubs::UnauthorizedException],
        stub_data_class: Stubs::GetRoleCredentials,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :get_role_credentials,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all roles that are assigned to the user for a given AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccountRolesInput}.
    #
    # @option params [String] :next_token
    #   <p>The page token from the previous response output when you request subsequent pages.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of items that clients can request per page.</p>
    #
    # @option params [String] :access_token
    #   <p>The token issued by the <code>CreateToken</code> API call. For more information, see
    #           <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>
    #
    # @option params [String] :account_id
    #   <p>The identifier for the AWS account that is assigned to the user.</p>
    #
    # @return [Types::ListAccountRolesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_roles(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     access_token: 'accessToken', # required
    #     account_id: 'accountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccountRolesOutput
    #   resp.data.next_token #=> String
    #   resp.data.role_list #=> Array<RoleInfo>
    #   resp.data.role_list[0] #=> Types::RoleInfo
    #   resp.data.role_list[0].role_name #=> String
    #   resp.data.role_list[0].account_id #=> String
    #
    def list_account_roles(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccountRolesInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccountRolesInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccountRoles
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListAccountRoles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::InvalidRequestException, Stubs::ResourceNotFoundException, Stubs::TooManyRequestsException, Stubs::UnauthorizedException],
        stub_data_class: Stubs::ListAccountRoles,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :list_account_roles,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all AWS accounts assigned to the user. These AWS accounts are assigned by the
    #       administrator of the account. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/useraccess.html#assignusers">Assign User Access</a> in the <i>IAM Identity Center User Guide</i>. This operation
    #       returns a paginated response.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccountsInput}.
    #
    # @option params [String] :next_token
    #   <p>(Optional) When requesting subsequent pages, this is the page token from the previous
    #         response output.</p>
    #
    # @option params [Integer] :max_results
    #   <p>This is the number of items clients can request per page.</p>
    #
    # @option params [String] :access_token
    #   <p>The token issued by the <code>CreateToken</code> API call. For more information, see
    #           <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>
    #
    # @return [Types::ListAccountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accounts(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     access_token: 'accessToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccountsOutput
    #   resp.data.next_token #=> String
    #   resp.data.account_list #=> Array<AccountInfo>
    #   resp.data.account_list[0] #=> Types::AccountInfo
    #   resp.data.account_list[0].account_id #=> String
    #   resp.data.account_list[0].account_name #=> String
    #   resp.data.account_list[0].email_address #=> String
    #
    def list_accounts(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccountsInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccountsInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccounts
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListAccounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::InvalidRequestException, Stubs::ResourceNotFoundException, Stubs::TooManyRequestsException, Stubs::UnauthorizedException],
        stub_data_class: Stubs::ListAccounts,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :list_accounts,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the locally stored SSO tokens from the client-side cache and sends an API call to
    #       the IAM Identity Center service to invalidate the corresponding server-side IAM Identity Center sign in
    #       session.</p>
    #
    #          <note>
    #             <p>If a user uses IAM Identity Center to access the AWS CLI, the user’s IAM Identity Center sign in session is
    #         used to obtain an IAM session, as specified in the corresponding IAM Identity Center permission set.
    #         More specifically, IAM Identity Center assumes an IAM role in the target account on behalf of the user,
    #         and the corresponding temporary AWS credentials are returned to the client.</p>
    #
    #             <p>After user logout, any existing IAM role sessions that were created by using IAM Identity Center
    #         permission sets continue based on the duration configured in the permission set.
    #         For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/authconcept.html">User
    #           authentications</a> in the <i>IAM Identity Center User
    #         Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::LogoutInput}.
    #
    # @option params [String] :access_token
    #   <p>The token issued by the <code>CreateToken</code> API call. For more information, see
    #           <a href="https://docs.aws.amazon.com/singlesignon/latest/OIDCAPIReference/API_CreateToken.html">CreateToken</a> in the <i>IAM Identity Center OIDC API Reference Guide</i>.</p>
    #
    # @return [Types::LogoutOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.logout(
    #     access_token: 'accessToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::LogoutOutput
    #
    def logout(params = {}, options = {}, &block)
      config = operation_config(options)
      stack = Hearth::MiddlewareStack.new
      input = Params::LogoutInput.build(params, context: 'params')
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Initialize)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::LogoutInput,
        validate_input: config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Logout
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_strategy: config.retry_strategy,
        error_inspector_class: Hearth::HTTP::ErrorInspector
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::Logout
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: config.stub_responses,
        client: options.fetch(:http_client, config.http_client),
        stub_error_classes: [Stubs::InvalidRequestException, Stubs::TooManyRequestsException, Stubs::UnauthorizedException],
        stub_data_class: Stubs::Logout,
        stubs: @stubs
      )
      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(uri: URI(options.fetch(:endpoint, config.endpoint))),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: config.logger,
          operation_name: :logout,
          interceptors: config.interceptors
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def initialize_config(config)
      config = config.dup
      client_interceptors = config.interceptors
      config.interceptors = Hearth::InterceptorList.new
      Client.plugins.apply(config)
      Hearth::PluginList.new(config.plugins).apply(config)
      config.interceptors << client_interceptors
      config.freeze
    end

    def operation_config(options)
      return @config unless options[:plugins] || options[:interceptors]

      config = @config.dup
      Hearth::PluginList.new(options[:plugins]).apply(config) if options[:plugins]
      config.interceptors << options[:interceptors] if options[:interceptors]
      config.freeze
    end
  end
end
