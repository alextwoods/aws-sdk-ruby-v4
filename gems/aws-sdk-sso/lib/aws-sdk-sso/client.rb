# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'plugins/global_config'

module AWS::SDK::SSO
  # <p>AWS IAM Identity Center (successor to AWS Single Sign-On) Portal is a web service that makes it easy for you to assign user access to
  #       IAM Identity Center resources such as the AWS access portal. Users can get AWS account applications and roles
  #       assigned to them and get federated into the application.</p>
  #          <note>
  #             <p>Although AWS Single Sign-On was renamed, the <code>sso</code> and
  #           <code>identitystore</code> API namespaces will continue to retain their original name for
  #         backward compatibility purposes. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed">IAM Identity Center rename</a>.</p>
  #          </note>
  #          <p>This reference guide describes the IAM Identity Center Portal operations that you can call
  #       programatically and includes detailed information on data types and errors.</p>
  #          <note>
  #             <p>AWS provides SDKs that consist of libraries and sample code for various programming
  #         languages and platforms, such as Java, Ruby, .Net, iOS, or Android. The SDKs provide a
  #         convenient way to create programmatic access to IAM Identity Center and other AWS services. For more
  #         information about the AWS SDKs, including how to download and install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p>
  #          </note>
  class Client < Hearth::Client

    # @api private
    @plugins = Hearth::PluginList.new([
      Plugins::GlobalConfig.new
    ])

    # @param [Hash] options
    #   Options used to construct an instance of {Config}
    def initialize(options = {})
      super(options, Config)
    end

    # @return [Config] config
    attr_reader :config

    # <p>Returns the STS short-term credentials for a given role name that is assigned to the
    #       user.</p>
    # @param [Hash | Types::GetRoleCredentialsInput] params
    #   Request parameters for this operation.
    #   See {Types::GetRoleCredentialsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.get_role_credentials(
    #     role_name: 'roleName', # required
    #     account_id: 'accountId', # required
    #     access_token: 'accessToken' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::GetRoleCredentialsOutput
    #   resp.data.role_credentials #=> Types::RoleCredentials
    #   resp.data.role_credentials.access_key_id #=> String
    #   resp.data.role_credentials.secret_access_key #=> String
    #   resp.data.role_credentials.session_token #=> String
    #   resp.data.role_credentials.expiration #=> Integer
    def get_role_credentials(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::GetRoleCredentialsInput.build(params, context: 'params')
      stack = AWS::SDK::SSO::Middleware::GetRoleCredentials.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :get_role_credentials,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_role_credentials] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#get_role_credentials] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#get_role_credentials] #{output.data}")
      output
    end

    # <p>Lists all roles that are assigned to the user for a given AWS account.</p>
    # @param [Hash | Types::ListAccountRolesInput] params
    #   Request parameters for this operation.
    #   See {Types::ListAccountRolesInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_account_roles(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     access_token: 'accessToken', # required
    #     account_id: 'accountId' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListAccountRolesOutput
    #   resp.data.next_token #=> String
    #   resp.data.role_list #=> Array<RoleInfo>
    #   resp.data.role_list[0] #=> Types::RoleInfo
    #   resp.data.role_list[0].role_name #=> String
    #   resp.data.role_list[0].account_id #=> String
    def list_account_roles(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::ListAccountRolesInput.build(params, context: 'params')
      stack = AWS::SDK::SSO::Middleware::ListAccountRoles.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_account_roles,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_account_roles] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_account_roles] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_account_roles] #{output.data}")
      output
    end

    # <p>Lists all AWS accounts assigned to the user. These AWS accounts are assigned by the
    #       administrator of the account. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/useraccess.html#assignusers">Assign User Access</a> in the <i>IAM Identity Center User Guide</i>. This operation
    #       returns a paginated response.</p>
    # @param [Hash | Types::ListAccountsInput] params
    #   Request parameters for this operation.
    #   See {Types::ListAccountsInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.list_accounts(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     access_token: 'accessToken' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::ListAccountsOutput
    #   resp.data.next_token #=> String
    #   resp.data.account_list #=> Array<AccountInfo>
    #   resp.data.account_list[0] #=> Types::AccountInfo
    #   resp.data.account_list[0].account_id #=> String
    #   resp.data.account_list[0].account_name #=> String
    #   resp.data.account_list[0].email_address #=> String
    def list_accounts(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::ListAccountsInput.build(params, context: 'params')
      stack = AWS::SDK::SSO::Middleware::ListAccounts.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :list_accounts,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_accounts] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#list_accounts] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#list_accounts] #{output.data}")
      output
    end

    # <p>Removes the locally stored SSO tokens from the client-side cache and sends an API call to
    #       the IAM Identity Center service to invalidate the corresponding server-side IAM Identity Center sign in
    #       session.</p>
    #          <note>
    #             <p>If a user uses IAM Identity Center to access the AWS CLI, the user’s IAM Identity Center sign in session is
    #         used to obtain an IAM session, as specified in the corresponding IAM Identity Center permission set.
    #         More specifically, IAM Identity Center assumes an IAM role in the target account on behalf of the user,
    #         and the corresponding temporary AWS credentials are returned to the client.</p>
    #             <p>After user logout, any existing IAM role sessions that were created by using IAM Identity Center
    #         permission sets continue based on the duration configured in the permission set.
    #         For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/authconcept.html">User
    #           authentications</a> in the <i>IAM Identity Center User
    #         Guide</i>.</p>
    #          </note>
    # @param [Hash | Types::LogoutInput] params
    #   Request parameters for this operation.
    #   See {Types::LogoutInput#initialize} for available parameters.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.logout(
    #     access_token: 'accessToken' # required
    #   )
    # @example Response structure
    #   resp.data #=> Types::LogoutOutput
    def logout(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      config = operation_config(options)
      input = Params::LogoutInput.build(params, context: 'params')
      stack = AWS::SDK::SSO::Middleware::Logout.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP::Request.new(uri: URI('')),
        response: Hearth::HTTP::Response.new(body: response_body),
        config: config,
        operation_name: :logout,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#logout] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#logout] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#logout] #{output.data}")
      output
    end
  end
end
