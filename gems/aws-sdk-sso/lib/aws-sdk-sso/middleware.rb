# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::SSO
  module Middleware

    class GetRoleCredentials
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetRoleCredentialsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetRoleCredentials
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_role_credentials),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::GetRoleCredentials,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException]
          ),
          data_parser: Parsers::GetRoleCredentials
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InvalidRequestException, Stubs::ResourceNotFoundException, Stubs::TooManyRequestsException, Stubs::UnauthorizedException],
          stub_data_class: Stubs::GetRoleCredentials,
          stubs: stubs
        )
        stack
      end
    end

    class ListAccountRoles
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListAccountRolesInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListAccountRoles
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_account_roles),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::ListAccountRoles,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException]
          ),
          data_parser: Parsers::ListAccountRoles
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InvalidRequestException, Stubs::ResourceNotFoundException, Stubs::TooManyRequestsException, Stubs::UnauthorizedException],
          stub_data_class: Stubs::ListAccountRoles,
          stubs: stubs
        )
        stack
      end
    end

    class ListAccounts
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListAccountsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListAccounts
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_accounts),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::ListAccounts,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidRequestException, Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException]
          ),
          data_parser: Parsers::ListAccounts
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InvalidRequestException, Stubs::ResourceNotFoundException, Stubs::TooManyRequestsException, Stubs::UnauthorizedException],
          stub_data_class: Stubs::ListAccounts,
          stubs: stubs
        )
        stack
      end
    end

    class Logout
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::LogoutInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::Logout
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :logout),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::Logout,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException]
          ),
          data_parser: Parsers::Logout
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InvalidRequestException, Stubs::TooManyRequestsException, Stubs::UnauthorizedException],
          stub_data_class: Stubs::Logout,
          stubs: stubs
        )
        stack
      end
    end

  end
end
