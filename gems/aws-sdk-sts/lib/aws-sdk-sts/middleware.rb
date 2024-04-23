# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::STS
  # @api private
  module Middleware

    class AssumeRole
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::AssumeRoleInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::AssumeRole
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :assume_role, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::AssumeRole,
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
            errors: [Errors::ExpiredTokenException, Errors::MalformedPolicyDocumentException, Errors::PackedPolicyTooLargeException, Errors::RegionDisabledException]
          ),
          data_parser: Parsers::AssumeRole
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::ExpiredTokenException, Stubs::MalformedPolicyDocumentException, Stubs::PackedPolicyTooLargeException, Stubs::RegionDisabledException],
          stub_data_class: Stubs::AssumeRole,
          stubs: stubs
        )
        stack
      end
    end

    class AssumeRoleWithSAML
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::AssumeRoleWithSAMLInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::AssumeRoleWithSAML
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :assume_role_with_saml, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::AssumeRoleWithSAML,
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
            errors: [Errors::ExpiredTokenException, Errors::IDPRejectedClaimException, Errors::InvalidIdentityTokenException, Errors::MalformedPolicyDocumentException, Errors::PackedPolicyTooLargeException, Errors::RegionDisabledException]
          ),
          data_parser: Parsers::AssumeRoleWithSAML
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::ExpiredTokenException, Stubs::IDPRejectedClaimException, Stubs::InvalidIdentityTokenException, Stubs::MalformedPolicyDocumentException, Stubs::PackedPolicyTooLargeException, Stubs::RegionDisabledException],
          stub_data_class: Stubs::AssumeRoleWithSAML,
          stubs: stubs
        )
        stack
      end
    end

    class AssumeRoleWithWebIdentity
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::AssumeRoleWithWebIdentityInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::AssumeRoleWithWebIdentity
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :assume_role_with_web_identity, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::AssumeRoleWithWebIdentity,
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
            errors: [Errors::ExpiredTokenException, Errors::IDPCommunicationErrorException, Errors::IDPRejectedClaimException, Errors::InvalidIdentityTokenException, Errors::MalformedPolicyDocumentException, Errors::PackedPolicyTooLargeException, Errors::RegionDisabledException]
          ),
          data_parser: Parsers::AssumeRoleWithWebIdentity
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::ExpiredTokenException, Stubs::IDPCommunicationErrorException, Stubs::IDPRejectedClaimException, Stubs::InvalidIdentityTokenException, Stubs::MalformedPolicyDocumentException, Stubs::PackedPolicyTooLargeException, Stubs::RegionDisabledException],
          stub_data_class: Stubs::AssumeRoleWithWebIdentity,
          stubs: stubs
        )
        stack
      end
    end

    class DecodeAuthorizationMessage
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DecodeAuthorizationMessageInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DecodeAuthorizationMessage
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :decode_authorization_message, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::DecodeAuthorizationMessage,
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
            errors: [Errors::InvalidAuthorizationMessageException]
          ),
          data_parser: Parsers::DecodeAuthorizationMessage
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InvalidAuthorizationMessageException],
          stub_data_class: Stubs::DecodeAuthorizationMessage,
          stubs: stubs
        )
        stack
      end
    end

    class GetAccessKeyInfo
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetAccessKeyInfoInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetAccessKeyInfo
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_access_key_info, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::GetAccessKeyInfo,
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
            errors: []
          ),
          data_parser: Parsers::GetAccessKeyInfo
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetAccessKeyInfo,
          stubs: stubs
        )
        stack
      end
    end

    class GetCallerIdentity
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetCallerIdentityInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetCallerIdentity
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_caller_identity, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::GetCallerIdentity,
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
            errors: []
          ),
          data_parser: Parsers::GetCallerIdentity
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetCallerIdentity,
          stubs: stubs
        )
        stack
      end
    end

    class GetFederationToken
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetFederationTokenInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetFederationToken
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_federation_token, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::GetFederationToken,
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
            errors: [Errors::MalformedPolicyDocumentException, Errors::PackedPolicyTooLargeException, Errors::RegionDisabledException]
          ),
          data_parser: Parsers::GetFederationToken
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::MalformedPolicyDocumentException, Stubs::PackedPolicyTooLargeException, Stubs::RegionDisabledException],
          stub_data_class: Stubs::GetFederationToken,
          stubs: stubs
        )
        stack
      end
    end

    class GetSessionToken
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetSessionTokenInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetSessionToken
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_session_token, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          region: config.region,
          param_builder: Endpoint::Parameters::GetSessionToken,
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
            errors: [Errors::RegionDisabledException]
          ),
          data_parser: Parsers::GetSessionToken
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::RegionDisabledException],
          stub_data_class: Stubs::GetSessionToken,
          stubs: stubs
        )
        stack
      end
    end

  end
end
