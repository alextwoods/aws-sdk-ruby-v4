# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::KMS
  module Middleware

    class CancelKeyDeletion
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CancelKeyDeletionInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CancelKeyDeletion
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :cancel_key_deletion),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::CancelKeyDeletion,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::CancelKeyDeletion
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::CancelKeyDeletion,
          stubs: stubs
        )
        stack
      end
    end

    class ConnectCustomKeyStore
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ConnectCustomKeyStoreInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ConnectCustomKeyStore
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :connect_custom_key_store),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::ConnectCustomKeyStore,
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
            errors: [Errors::CloudHsmClusterInvalidConfigurationException, Errors::CloudHsmClusterNotActiveException, Errors::CustomKeyStoreInvalidStateException, Errors::CustomKeyStoreNotFoundException, Errors::KMSInternalException]
          ),
          data_parser: Parsers::ConnectCustomKeyStore
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::CloudHsmClusterInvalidConfigurationException, Stubs::CloudHsmClusterNotActiveException, Stubs::CustomKeyStoreInvalidStateException, Stubs::CustomKeyStoreNotFoundException, Stubs::KMSInternalException],
          stub_data_class: Stubs::ConnectCustomKeyStore,
          stubs: stubs
        )
        stack
      end
    end

    class CreateAlias
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateAliasInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateAlias
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_alias),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::CreateAlias,
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
            errors: [Errors::AlreadyExistsException, Errors::DependencyTimeoutException, Errors::InvalidAliasNameException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::LimitExceededException, Errors::NotFoundException]
          ),
          data_parser: Parsers::CreateAlias
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AlreadyExistsException, Stubs::DependencyTimeoutException, Stubs::InvalidAliasNameException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::LimitExceededException, Stubs::NotFoundException],
          stub_data_class: Stubs::CreateAlias,
          stubs: stubs
        )
        stack
      end
    end

    class CreateCustomKeyStore
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateCustomKeyStoreInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateCustomKeyStore
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_custom_key_store),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::CreateCustomKeyStore,
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
            errors: [Errors::CloudHsmClusterInUseException, Errors::CloudHsmClusterInvalidConfigurationException, Errors::CloudHsmClusterNotActiveException, Errors::CloudHsmClusterNotFoundException, Errors::CustomKeyStoreNameInUseException, Errors::IncorrectTrustAnchorException, Errors::KMSInternalException, Errors::LimitExceededException, Errors::XksProxyIncorrectAuthenticationCredentialException, Errors::XksProxyInvalidConfigurationException, Errors::XksProxyInvalidResponseException, Errors::XksProxyUriEndpointInUseException, Errors::XksProxyUriInUseException, Errors::XksProxyUriUnreachableException, Errors::XksProxyVpcEndpointServiceInUseException, Errors::XksProxyVpcEndpointServiceInvalidConfigurationException, Errors::XksProxyVpcEndpointServiceNotFoundException]
          ),
          data_parser: Parsers::CreateCustomKeyStore
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::CloudHsmClusterInUseException, Stubs::CloudHsmClusterInvalidConfigurationException, Stubs::CloudHsmClusterNotActiveException, Stubs::CloudHsmClusterNotFoundException, Stubs::CustomKeyStoreNameInUseException, Stubs::IncorrectTrustAnchorException, Stubs::KMSInternalException, Stubs::LimitExceededException, Stubs::XksProxyIncorrectAuthenticationCredentialException, Stubs::XksProxyInvalidConfigurationException, Stubs::XksProxyInvalidResponseException, Stubs::XksProxyUriEndpointInUseException, Stubs::XksProxyUriInUseException, Stubs::XksProxyUriUnreachableException, Stubs::XksProxyVpcEndpointServiceInUseException, Stubs::XksProxyVpcEndpointServiceInvalidConfigurationException, Stubs::XksProxyVpcEndpointServiceNotFoundException],
          stub_data_class: Stubs::CreateCustomKeyStore,
          stubs: stubs
        )
        stack
      end
    end

    class CreateGrant
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateGrantInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateGrant
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_grant),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::CreateGrant,
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
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidArnException, Errors::InvalidGrantTokenException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::LimitExceededException, Errors::NotFoundException]
          ),
          data_parser: Parsers::CreateGrant
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidArnException, Stubs::InvalidGrantTokenException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::LimitExceededException, Stubs::NotFoundException],
          stub_data_class: Stubs::CreateGrant,
          stubs: stubs
        )
        stack
      end
    end

    class CreateKey
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateKeyInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateKey
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_key),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::CreateKey,
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
            errors: [Errors::CloudHsmClusterInvalidConfigurationException, Errors::CustomKeyStoreInvalidStateException, Errors::CustomKeyStoreNotFoundException, Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::LimitExceededException, Errors::MalformedPolicyDocumentException, Errors::TagException, Errors::UnsupportedOperationException, Errors::XksKeyAlreadyInUseException, Errors::XksKeyInvalidConfigurationException, Errors::XksKeyNotFoundException]
          ),
          data_parser: Parsers::CreateKey
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::CloudHsmClusterInvalidConfigurationException, Stubs::CustomKeyStoreInvalidStateException, Stubs::CustomKeyStoreNotFoundException, Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::LimitExceededException, Stubs::MalformedPolicyDocumentException, Stubs::TagException, Stubs::UnsupportedOperationException, Stubs::XksKeyAlreadyInUseException, Stubs::XksKeyInvalidConfigurationException, Stubs::XksKeyNotFoundException],
          stub_data_class: Stubs::CreateKey,
          stubs: stubs
        )
        stack
      end
    end

    class Decrypt
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DecryptInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::Decrypt
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :decrypt),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::Decrypt,
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
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::IncorrectKeyException, Errors::InvalidCiphertextException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::Decrypt
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::IncorrectKeyException, Stubs::InvalidCiphertextException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::Decrypt,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteAlias
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteAliasInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteAlias
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_alias),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::DeleteAlias,
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
            errors: [Errors::DependencyTimeoutException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::DeleteAlias
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::DeleteAlias,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteCustomKeyStore
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteCustomKeyStoreInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteCustomKeyStore
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_custom_key_store),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::DeleteCustomKeyStore,
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
            errors: [Errors::CustomKeyStoreHasCMKsException, Errors::CustomKeyStoreInvalidStateException, Errors::CustomKeyStoreNotFoundException, Errors::KMSInternalException]
          ),
          data_parser: Parsers::DeleteCustomKeyStore
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::CustomKeyStoreHasCMKsException, Stubs::CustomKeyStoreInvalidStateException, Stubs::CustomKeyStoreNotFoundException, Stubs::KMSInternalException],
          stub_data_class: Stubs::DeleteCustomKeyStore,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteImportedKeyMaterial
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteImportedKeyMaterialInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteImportedKeyMaterial
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_imported_key_material),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::DeleteImportedKeyMaterial,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          ),
          data_parser: Parsers::DeleteImportedKeyMaterial
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_data_class: Stubs::DeleteImportedKeyMaterial,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeCustomKeyStores
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeCustomKeyStoresInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeCustomKeyStores
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_custom_key_stores),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeCustomKeyStores,
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
            errors: [Errors::CustomKeyStoreNotFoundException, Errors::InvalidMarkerException, Errors::KMSInternalException]
          ),
          data_parser: Parsers::DescribeCustomKeyStores
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::CustomKeyStoreNotFoundException, Stubs::InvalidMarkerException, Stubs::KMSInternalException],
          stub_data_class: Stubs::DescribeCustomKeyStores,
          stubs: stubs
        )
        stack
      end
    end

    class DescribeKey
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DescribeKeyInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeKey
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_key),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::DescribeKey,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::NotFoundException]
          ),
          data_parser: Parsers::DescribeKey
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::NotFoundException],
          stub_data_class: Stubs::DescribeKey,
          stubs: stubs
        )
        stack
      end
    end

    class DisableKey
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DisableKeyInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DisableKey
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :disable_key),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::DisableKey,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::DisableKey
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::DisableKey,
          stubs: stubs
        )
        stack
      end
    end

    class DisableKeyRotation
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DisableKeyRotationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DisableKeyRotation
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :disable_key_rotation),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::DisableKeyRotation,
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
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          ),
          data_parser: Parsers::DisableKeyRotation
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_data_class: Stubs::DisableKeyRotation,
          stubs: stubs
        )
        stack
      end
    end

    class DisconnectCustomKeyStore
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DisconnectCustomKeyStoreInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DisconnectCustomKeyStore
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :disconnect_custom_key_store),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::DisconnectCustomKeyStore,
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
            errors: [Errors::CustomKeyStoreInvalidStateException, Errors::CustomKeyStoreNotFoundException, Errors::KMSInternalException]
          ),
          data_parser: Parsers::DisconnectCustomKeyStore
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::CustomKeyStoreInvalidStateException, Stubs::CustomKeyStoreNotFoundException, Stubs::KMSInternalException],
          stub_data_class: Stubs::DisconnectCustomKeyStore,
          stubs: stubs
        )
        stack
      end
    end

    class EnableKey
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::EnableKeyInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::EnableKey
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :enable_key),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::EnableKey,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::LimitExceededException, Errors::NotFoundException]
          ),
          data_parser: Parsers::EnableKey
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::LimitExceededException, Stubs::NotFoundException],
          stub_data_class: Stubs::EnableKey,
          stubs: stubs
        )
        stack
      end
    end

    class EnableKeyRotation
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::EnableKeyRotationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::EnableKeyRotation
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :enable_key_rotation),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::EnableKeyRotation,
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
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          ),
          data_parser: Parsers::EnableKeyRotation
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_data_class: Stubs::EnableKeyRotation,
          stubs: stubs
        )
        stack
      end
    end

    class Encrypt
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::EncryptInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::Encrypt
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :encrypt),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::Encrypt,
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
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::Encrypt
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::Encrypt,
          stubs: stubs
        )
        stack
      end
    end

    class GenerateDataKey
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GenerateDataKeyInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GenerateDataKey
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :generate_data_key),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::GenerateDataKey,
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
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::GenerateDataKey
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::GenerateDataKey,
          stubs: stubs
        )
        stack
      end
    end

    class GenerateDataKeyPair
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GenerateDataKeyPairInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GenerateDataKeyPair
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :generate_data_key_pair),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::GenerateDataKeyPair,
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
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          ),
          data_parser: Parsers::GenerateDataKeyPair
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_data_class: Stubs::GenerateDataKeyPair,
          stubs: stubs
        )
        stack
      end
    end

    class GenerateDataKeyPairWithoutPlaintext
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GenerateDataKeyPairWithoutPlaintextInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GenerateDataKeyPairWithoutPlaintext
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :generate_data_key_pair_without_plaintext),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::GenerateDataKeyPairWithoutPlaintext,
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
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          ),
          data_parser: Parsers::GenerateDataKeyPairWithoutPlaintext
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_data_class: Stubs::GenerateDataKeyPairWithoutPlaintext,
          stubs: stubs
        )
        stack
      end
    end

    class GenerateDataKeyWithoutPlaintext
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GenerateDataKeyWithoutPlaintextInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GenerateDataKeyWithoutPlaintext
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :generate_data_key_without_plaintext),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::GenerateDataKeyWithoutPlaintext,
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
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::GenerateDataKeyWithoutPlaintext
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::GenerateDataKeyWithoutPlaintext,
          stubs: stubs
        )
        stack
      end
    end

    class GenerateMac
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GenerateMacInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GenerateMac
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :generate_mac),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::GenerateMac,
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
            errors: [Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::GenerateMac
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::GenerateMac,
          stubs: stubs
        )
        stack
      end
    end

    class GenerateRandom
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GenerateRandomInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GenerateRandom
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :generate_random),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::GenerateRandom,
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
            errors: [Errors::CustomKeyStoreInvalidStateException, Errors::CustomKeyStoreNotFoundException, Errors::DependencyTimeoutException, Errors::KMSInternalException, Errors::UnsupportedOperationException]
          ),
          data_parser: Parsers::GenerateRandom
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::CustomKeyStoreInvalidStateException, Stubs::CustomKeyStoreNotFoundException, Stubs::DependencyTimeoutException, Stubs::KMSInternalException, Stubs::UnsupportedOperationException],
          stub_data_class: Stubs::GenerateRandom,
          stubs: stubs
        )
        stack
      end
    end

    class GetKeyPolicy
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetKeyPolicyInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetKeyPolicy
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_key_policy),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::GetKeyPolicy,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::GetKeyPolicy
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::GetKeyPolicy,
          stubs: stubs
        )
        stack
      end
    end

    class GetKeyRotationStatus
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetKeyRotationStatusInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetKeyRotationStatus
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_key_rotation_status),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::GetKeyRotationStatus,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          ),
          data_parser: Parsers::GetKeyRotationStatus
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_data_class: Stubs::GetKeyRotationStatus,
          stubs: stubs
        )
        stack
      end
    end

    class GetParametersForImport
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetParametersForImportInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetParametersForImport
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_parameters_for_import),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::GetParametersForImport,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          ),
          data_parser: Parsers::GetParametersForImport
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_data_class: Stubs::GetParametersForImport,
          stubs: stubs
        )
        stack
      end
    end

    class GetPublicKey
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetPublicKeyInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetPublicKey
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_public_key),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::GetPublicKey,
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
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::InvalidArnException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          ),
          data_parser: Parsers::GetPublicKey
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::InvalidArnException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_data_class: Stubs::GetPublicKey,
          stubs: stubs
        )
        stack
      end
    end

    class ImportKeyMaterial
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ImportKeyMaterialInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ImportKeyMaterial
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :import_key_material),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::ImportKeyMaterial,
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
            errors: [Errors::DependencyTimeoutException, Errors::ExpiredImportTokenException, Errors::IncorrectKeyMaterialException, Errors::InvalidArnException, Errors::InvalidCiphertextException, Errors::InvalidImportTokenException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          ),
          data_parser: Parsers::ImportKeyMaterial
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::ExpiredImportTokenException, Stubs::IncorrectKeyMaterialException, Stubs::InvalidArnException, Stubs::InvalidCiphertextException, Stubs::InvalidImportTokenException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_data_class: Stubs::ImportKeyMaterial,
          stubs: stubs
        )
        stack
      end
    end

    class ListAliases
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListAliasesInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListAliases
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_aliases),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::ListAliases,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::InvalidMarkerException, Errors::KMSInternalException, Errors::NotFoundException]
          ),
          data_parser: Parsers::ListAliases
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::InvalidMarkerException, Stubs::KMSInternalException, Stubs::NotFoundException],
          stub_data_class: Stubs::ListAliases,
          stubs: stubs
        )
        stack
      end
    end

    class ListGrants
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListGrantsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListGrants
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_grants),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::ListGrants,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::InvalidGrantIdException, Errors::InvalidMarkerException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::ListGrants
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::InvalidGrantIdException, Stubs::InvalidMarkerException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::ListGrants,
          stubs: stubs
        )
        stack
      end
    end

    class ListKeyPolicies
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListKeyPoliciesInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListKeyPolicies
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_key_policies),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::ListKeyPolicies,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::ListKeyPolicies
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::ListKeyPolicies,
          stubs: stubs
        )
        stack
      end
    end

    class ListKeys
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListKeysInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListKeys
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_keys),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::ListKeys,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidMarkerException, Errors::KMSInternalException]
          ),
          data_parser: Parsers::ListKeys
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidMarkerException, Stubs::KMSInternalException],
          stub_data_class: Stubs::ListKeys,
          stubs: stubs
        )
        stack
      end
    end

    class ListResourceTags
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListResourceTagsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListResourceTags
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_resource_tags),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::ListResourceTags,
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
            errors: [Errors::InvalidArnException, Errors::InvalidMarkerException, Errors::KMSInternalException, Errors::NotFoundException]
          ),
          data_parser: Parsers::ListResourceTags
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InvalidArnException, Stubs::InvalidMarkerException, Stubs::KMSInternalException, Stubs::NotFoundException],
          stub_data_class: Stubs::ListResourceTags,
          stubs: stubs
        )
        stack
      end
    end

    class ListRetirableGrants
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListRetirableGrantsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListRetirableGrants
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_retirable_grants),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::ListRetirableGrants,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::InvalidMarkerException, Errors::KMSInternalException, Errors::NotFoundException]
          ),
          data_parser: Parsers::ListRetirableGrants
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::InvalidMarkerException, Stubs::KMSInternalException, Stubs::NotFoundException],
          stub_data_class: Stubs::ListRetirableGrants,
          stubs: stubs
        )
        stack
      end
    end

    class PutKeyPolicy
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutKeyPolicyInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutKeyPolicy
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_key_policy),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::PutKeyPolicy,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::LimitExceededException, Errors::MalformedPolicyDocumentException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          ),
          data_parser: Parsers::PutKeyPolicy
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::LimitExceededException, Stubs::MalformedPolicyDocumentException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_data_class: Stubs::PutKeyPolicy,
          stubs: stubs
        )
        stack
      end
    end

    class ReEncrypt
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ReEncryptInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ReEncrypt
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :re_encrypt),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::ReEncrypt,
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
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::IncorrectKeyException, Errors::InvalidCiphertextException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::ReEncrypt
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::IncorrectKeyException, Stubs::InvalidCiphertextException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::ReEncrypt,
          stubs: stubs
        )
        stack
      end
    end

    class ReplicateKey
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ReplicateKeyInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ReplicateKey
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :replicate_key),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::ReplicateKey,
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
            errors: [Errors::AlreadyExistsException, Errors::DisabledException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::LimitExceededException, Errors::MalformedPolicyDocumentException, Errors::NotFoundException, Errors::TagException, Errors::UnsupportedOperationException]
          ),
          data_parser: Parsers::ReplicateKey
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::AlreadyExistsException, Stubs::DisabledException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::LimitExceededException, Stubs::MalformedPolicyDocumentException, Stubs::NotFoundException, Stubs::TagException, Stubs::UnsupportedOperationException],
          stub_data_class: Stubs::ReplicateKey,
          stubs: stubs
        )
        stack
      end
    end

    class RetireGrant
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::RetireGrantInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::RetireGrant
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :retire_grant),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::RetireGrant,
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
            errors: [Errors::DependencyTimeoutException, Errors::DryRunOperationException, Errors::InvalidArnException, Errors::InvalidGrantIdException, Errors::InvalidGrantTokenException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::RetireGrant
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DryRunOperationException, Stubs::InvalidArnException, Stubs::InvalidGrantIdException, Stubs::InvalidGrantTokenException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::RetireGrant,
          stubs: stubs
        )
        stack
      end
    end

    class RevokeGrant
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::RevokeGrantInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::RevokeGrant
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :revoke_grant),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::RevokeGrant,
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
            errors: [Errors::DependencyTimeoutException, Errors::DryRunOperationException, Errors::InvalidArnException, Errors::InvalidGrantIdException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::RevokeGrant
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DryRunOperationException, Stubs::InvalidArnException, Stubs::InvalidGrantIdException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::RevokeGrant,
          stubs: stubs
        )
        stack
      end
    end

    class ScheduleKeyDeletion
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ScheduleKeyDeletionInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ScheduleKeyDeletion
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :schedule_key_deletion),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::ScheduleKeyDeletion,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::ScheduleKeyDeletion
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::ScheduleKeyDeletion,
          stubs: stubs
        )
        stack
      end
    end

    class Sign
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::SignInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::Sign
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :sign),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::Sign,
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
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::Sign
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::Sign,
          stubs: stubs
        )
        stack
      end
    end

    class TagResource
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::TagResourceInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::TagResource
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :tag_resource),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::TagResource,
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
            errors: [Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::LimitExceededException, Errors::NotFoundException, Errors::TagException]
          ),
          data_parser: Parsers::TagResource
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::LimitExceededException, Stubs::NotFoundException, Stubs::TagException],
          stub_data_class: Stubs::TagResource,
          stubs: stubs
        )
        stack
      end
    end

    class UntagResource
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UntagResourceInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UntagResource
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :untag_resource),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::UntagResource,
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
            errors: [Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::TagException]
          ),
          data_parser: Parsers::UntagResource
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::TagException],
          stub_data_class: Stubs::UntagResource,
          stubs: stubs
        )
        stack
      end
    end

    class UpdateAlias
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateAliasInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateAlias
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_alias),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateAlias,
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
            errors: [Errors::DependencyTimeoutException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::LimitExceededException, Errors::NotFoundException]
          ),
          data_parser: Parsers::UpdateAlias
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::LimitExceededException, Stubs::NotFoundException],
          stub_data_class: Stubs::UpdateAlias,
          stubs: stubs
        )
        stack
      end
    end

    class UpdateCustomKeyStore
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateCustomKeyStoreInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateCustomKeyStore
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_custom_key_store),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateCustomKeyStore,
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
            errors: [Errors::CloudHsmClusterInvalidConfigurationException, Errors::CloudHsmClusterNotActiveException, Errors::CloudHsmClusterNotFoundException, Errors::CloudHsmClusterNotRelatedException, Errors::CustomKeyStoreInvalidStateException, Errors::CustomKeyStoreNameInUseException, Errors::CustomKeyStoreNotFoundException, Errors::KMSInternalException, Errors::XksProxyIncorrectAuthenticationCredentialException, Errors::XksProxyInvalidConfigurationException, Errors::XksProxyInvalidResponseException, Errors::XksProxyUriEndpointInUseException, Errors::XksProxyUriInUseException, Errors::XksProxyUriUnreachableException, Errors::XksProxyVpcEndpointServiceInUseException, Errors::XksProxyVpcEndpointServiceInvalidConfigurationException, Errors::XksProxyVpcEndpointServiceNotFoundException]
          ),
          data_parser: Parsers::UpdateCustomKeyStore
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::CloudHsmClusterInvalidConfigurationException, Stubs::CloudHsmClusterNotActiveException, Stubs::CloudHsmClusterNotFoundException, Stubs::CloudHsmClusterNotRelatedException, Stubs::CustomKeyStoreInvalidStateException, Stubs::CustomKeyStoreNameInUseException, Stubs::CustomKeyStoreNotFoundException, Stubs::KMSInternalException, Stubs::XksProxyIncorrectAuthenticationCredentialException, Stubs::XksProxyInvalidConfigurationException, Stubs::XksProxyInvalidResponseException, Stubs::XksProxyUriEndpointInUseException, Stubs::XksProxyUriInUseException, Stubs::XksProxyUriUnreachableException, Stubs::XksProxyVpcEndpointServiceInUseException, Stubs::XksProxyVpcEndpointServiceInvalidConfigurationException, Stubs::XksProxyVpcEndpointServiceNotFoundException],
          stub_data_class: Stubs::UpdateCustomKeyStore,
          stubs: stubs
        )
        stack
      end
    end

    class UpdateKeyDescription
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdateKeyDescriptionInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateKeyDescription
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_key_description),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::UpdateKeyDescription,
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
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::UpdateKeyDescription
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::UpdateKeyDescription,
          stubs: stubs
        )
        stack
      end
    end

    class UpdatePrimaryRegion
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UpdatePrimaryRegionInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdatePrimaryRegion
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_primary_region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::UpdatePrimaryRegion,
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
            errors: [Errors::DisabledException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          ),
          data_parser: Parsers::UpdatePrimaryRegion
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DisabledException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_data_class: Stubs::UpdatePrimaryRegion,
          stubs: stubs
        )
        stack
      end
    end

    class Verify
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::VerifyInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::Verify
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :verify),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::Verify,
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
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidSignatureException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::Verify
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidSignatureException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::Verify,
          stubs: stubs
        )
        stack
      end
    end

    class VerifyMac
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::VerifyMacInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::VerifyMac
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :verify_mac),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_provider: config.endpoint_provider,
          region: config.region,
          param_builder: Endpoint::Parameters::VerifyMac,
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
            errors: [Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidMacException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          ),
          data_parser: Parsers::VerifyMac
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidMacException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_data_class: Stubs::VerifyMac,
          stubs: stubs
        )
        stack
      end
    end

  end
end
