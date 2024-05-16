# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::SSOOIDC
  # @api private
  module Middleware

    class CreateToken
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateTokenInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateToken
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_token, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::CreateToken,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          endpoint_resolver: config.endpoint_resolver,
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
            errors: [Errors::AccessDeniedException, Errors::AuthorizationPendingException, Errors::ExpiredTokenException, Errors::InternalServerException, Errors::InvalidClientException, Errors::InvalidGrantException, Errors::InvalidRequestException, Errors::InvalidScopeException, Errors::SlowDownException, Errors::UnauthorizedClientException, Errors::UnsupportedGrantTypeException]
          ),
          data_parser: Parsers::CreateToken
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::AuthorizationPendingException, Stubs::ExpiredTokenException, Stubs::InternalServerException, Stubs::InvalidClientException, Stubs::InvalidGrantException, Stubs::InvalidRequestException, Stubs::InvalidScopeException, Stubs::SlowDownException, Stubs::UnauthorizedClientException, Stubs::UnsupportedGrantTypeException],
          stub_data_class: Stubs::CreateToken,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateTokenWithIAM
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateTokenWithIAMInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateTokenWithIAM
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_token_with_iam, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::CreateTokenWithIAM,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          endpoint_resolver: config.endpoint_resolver,
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
            errors: [Errors::AccessDeniedException, Errors::AuthorizationPendingException, Errors::ExpiredTokenException, Errors::InternalServerException, Errors::InvalidClientException, Errors::InvalidGrantException, Errors::InvalidRequestException, Errors::InvalidRequestRegionException, Errors::InvalidScopeException, Errors::SlowDownException, Errors::UnauthorizedClientException, Errors::UnsupportedGrantTypeException]
          ),
          data_parser: Parsers::CreateTokenWithIAM
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::AuthorizationPendingException, Stubs::ExpiredTokenException, Stubs::InternalServerException, Stubs::InvalidClientException, Stubs::InvalidGrantException, Stubs::InvalidRequestException, Stubs::InvalidRequestRegionException, Stubs::InvalidScopeException, Stubs::SlowDownException, Stubs::UnauthorizedClientException, Stubs::UnsupportedGrantTypeException],
          stub_data_class: Stubs::CreateTokenWithIAM,
          stubs: config.stubs
        )
        stack
      end
    end

    class RegisterClient
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::RegisterClientInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::RegisterClient
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :register_client, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::RegisterClient,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          endpoint_resolver: config.endpoint_resolver,
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
            errors: [Errors::InternalServerException, Errors::InvalidClientMetadataException, Errors::InvalidRedirectUriException, Errors::InvalidRequestException, Errors::InvalidScopeException, Errors::UnsupportedGrantTypeException]
          ),
          data_parser: Parsers::RegisterClient
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerException, Stubs::InvalidClientMetadataException, Stubs::InvalidRedirectUriException, Stubs::InvalidRequestException, Stubs::InvalidScopeException, Stubs::UnsupportedGrantTypeException],
          stub_data_class: Stubs::RegisterClient,
          stubs: config.stubs
        )
        stack
      end
    end

    class StartDeviceAuthorization
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::StartDeviceAuthorizationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::StartDeviceAuthorization
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :start_device_authorization, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::StartDeviceAuthorization,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          endpoint_resolver: config.endpoint_resolver,
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
            errors: [Errors::InternalServerException, Errors::InvalidClientException, Errors::InvalidRequestException, Errors::SlowDownException, Errors::UnauthorizedClientException]
          ),
          data_parser: Parsers::StartDeviceAuthorization
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InternalServerException, Stubs::InvalidClientException, Stubs::InvalidRequestException, Stubs::SlowDownException, Stubs::UnauthorizedClientException],
          stub_data_class: Stubs::StartDeviceAuthorization,
          stubs: config.stubs
        )
        stack
      end
    end

  end
end
