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
          validate_input: config.validate_input,
          validator: Validators::CreateTokenInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateToken,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::CreateToken,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::AuthorizationPendingException, Errors::ExpiredTokenException, Errors::InternalServerException, Errors::InvalidClientException, Errors::InvalidGrantException, Errors::InvalidRequestException, Errors::InvalidScopeException, Errors::SlowDownException, Errors::UnauthorizedClientException, Errors::UnsupportedGrantTypeException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateToken,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::AuthorizationPendingException, Stubs::ExpiredTokenException, Stubs::InternalServerException, Stubs::InvalidClientException, Stubs::InvalidGrantException, Stubs::InvalidRequestException, Stubs::InvalidScopeException, Stubs::SlowDownException, Stubs::UnauthorizedClientException, Stubs::UnsupportedGrantTypeException],
          stub_responses: config.stub_responses,
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
          validate_input: config.validate_input,
          validator: Validators::CreateTokenWithIAMInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateTokenWithIAM,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::CreateTokenWithIAM,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::AuthorizationPendingException, Errors::ExpiredTokenException, Errors::InternalServerException, Errors::InvalidClientException, Errors::InvalidGrantException, Errors::InvalidRequestException, Errors::InvalidRequestRegionException, Errors::InvalidScopeException, Errors::SlowDownException, Errors::UnauthorizedClientException, Errors::UnsupportedGrantTypeException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateTokenWithIAM,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::AuthorizationPendingException, Stubs::ExpiredTokenException, Stubs::InternalServerException, Stubs::InvalidClientException, Stubs::InvalidGrantException, Stubs::InvalidRequestException, Stubs::InvalidRequestRegionException, Stubs::InvalidScopeException, Stubs::SlowDownException, Stubs::UnauthorizedClientException, Stubs::UnsupportedGrantTypeException],
          stub_responses: config.stub_responses,
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
          validate_input: config.validate_input,
          validator: Validators::RegisterClientInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::RegisterClient,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::RegisterClient,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InternalServerException, Errors::InvalidClientMetadataException, Errors::InvalidRedirectUriException, Errors::InvalidRequestException, Errors::InvalidScopeException, Errors::UnsupportedGrantTypeException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::RegisterClient,
          stub_error_classes: [Stubs::InternalServerException, Stubs::InvalidClientMetadataException, Stubs::InvalidRedirectUriException, Stubs::InvalidRequestException, Stubs::InvalidScopeException, Stubs::UnsupportedGrantTypeException],
          stub_responses: config.stub_responses,
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
          validate_input: config.validate_input,
          validator: Validators::StartDeviceAuthorizationInput
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
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::StartDeviceAuthorization,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::StartDeviceAuthorization,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InternalServerException, Errors::InvalidClientException, Errors::InvalidRequestException, Errors::SlowDownException, Errors::UnauthorizedClientException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::StartDeviceAuthorization,
          stub_error_classes: [Stubs::InternalServerException, Stubs::InvalidClientException, Stubs::InvalidRequestException, Stubs::SlowDownException, Stubs::UnauthorizedClientException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

  end
end
