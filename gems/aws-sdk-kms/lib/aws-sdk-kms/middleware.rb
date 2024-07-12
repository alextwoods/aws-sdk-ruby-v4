# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::KMS
  # @api private
  module Middleware

    class CancelKeyDeletion
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CancelKeyDeletionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CancelKeyDeletion
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :cancel_key_deletion, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CancelKeyDeletion,
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
          data_parser: Parsers::CancelKeyDeletion,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CancelKeyDeletion,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ConnectCustomKeyStore
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ConnectCustomKeyStoreInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ConnectCustomKeyStore
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :connect_custom_key_store, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ConnectCustomKeyStore,
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
          data_parser: Parsers::ConnectCustomKeyStore,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::CloudHsmClusterInvalidConfigurationException, Errors::CloudHsmClusterNotActiveException, Errors::CustomKeyStoreInvalidStateException, Errors::CustomKeyStoreNotFoundException, Errors::KMSInternalException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ConnectCustomKeyStore,
          stub_error_classes: [Stubs::CloudHsmClusterInvalidConfigurationException, Stubs::CloudHsmClusterNotActiveException, Stubs::CustomKeyStoreInvalidStateException, Stubs::CustomKeyStoreNotFoundException, Stubs::KMSInternalException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateAlias
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateAliasInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateAlias
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_alias, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateAlias,
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
          data_parser: Parsers::CreateAlias,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AlreadyExistsException, Errors::DependencyTimeoutException, Errors::InvalidAliasNameException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::LimitExceededException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateAlias,
          stub_error_classes: [Stubs::AlreadyExistsException, Stubs::DependencyTimeoutException, Stubs::InvalidAliasNameException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::LimitExceededException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateCustomKeyStore
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateCustomKeyStoreInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateCustomKeyStore
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_custom_key_store, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateCustomKeyStore,
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
          data_parser: Parsers::CreateCustomKeyStore,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::CloudHsmClusterInUseException, Errors::CloudHsmClusterInvalidConfigurationException, Errors::CloudHsmClusterNotActiveException, Errors::CloudHsmClusterNotFoundException, Errors::CustomKeyStoreNameInUseException, Errors::IncorrectTrustAnchorException, Errors::KMSInternalException, Errors::LimitExceededException, Errors::XksProxyIncorrectAuthenticationCredentialException, Errors::XksProxyInvalidConfigurationException, Errors::XksProxyInvalidResponseException, Errors::XksProxyUriEndpointInUseException, Errors::XksProxyUriInUseException, Errors::XksProxyUriUnreachableException, Errors::XksProxyVpcEndpointServiceInUseException, Errors::XksProxyVpcEndpointServiceInvalidConfigurationException, Errors::XksProxyVpcEndpointServiceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateCustomKeyStore,
          stub_error_classes: [Stubs::CloudHsmClusterInUseException, Stubs::CloudHsmClusterInvalidConfigurationException, Stubs::CloudHsmClusterNotActiveException, Stubs::CloudHsmClusterNotFoundException, Stubs::CustomKeyStoreNameInUseException, Stubs::IncorrectTrustAnchorException, Stubs::KMSInternalException, Stubs::LimitExceededException, Stubs::XksProxyIncorrectAuthenticationCredentialException, Stubs::XksProxyInvalidConfigurationException, Stubs::XksProxyInvalidResponseException, Stubs::XksProxyUriEndpointInUseException, Stubs::XksProxyUriInUseException, Stubs::XksProxyUriUnreachableException, Stubs::XksProxyVpcEndpointServiceInUseException, Stubs::XksProxyVpcEndpointServiceInvalidConfigurationException, Stubs::XksProxyVpcEndpointServiceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateGrant
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateGrantInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateGrant
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_grant, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateGrant,
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
          data_parser: Parsers::CreateGrant,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidArnException, Errors::InvalidGrantTokenException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::LimitExceededException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateGrant,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidArnException, Stubs::InvalidGrantTokenException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::LimitExceededException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateKey
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateKeyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateKey
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_key, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateKey,
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
          data_parser: Parsers::CreateKey,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::CloudHsmClusterInvalidConfigurationException, Errors::CustomKeyStoreInvalidStateException, Errors::CustomKeyStoreNotFoundException, Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::LimitExceededException, Errors::MalformedPolicyDocumentException, Errors::TagException, Errors::UnsupportedOperationException, Errors::XksKeyAlreadyInUseException, Errors::XksKeyInvalidConfigurationException, Errors::XksKeyNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateKey,
          stub_error_classes: [Stubs::CloudHsmClusterInvalidConfigurationException, Stubs::CustomKeyStoreInvalidStateException, Stubs::CustomKeyStoreNotFoundException, Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::LimitExceededException, Stubs::MalformedPolicyDocumentException, Stubs::TagException, Stubs::UnsupportedOperationException, Stubs::XksKeyAlreadyInUseException, Stubs::XksKeyInvalidConfigurationException, Stubs::XksKeyNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class Decrypt
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DecryptInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::Decrypt
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :decrypt, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::Decrypt,
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
          data_parser: Parsers::Decrypt,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::IncorrectKeyException, Errors::InvalidCiphertextException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::Decrypt,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::IncorrectKeyException, Stubs::InvalidCiphertextException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteAlias
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteAliasInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteAlias
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_alias, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteAlias,
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
          data_parser: Parsers::DeleteAlias,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteAlias,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteCustomKeyStore
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteCustomKeyStoreInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteCustomKeyStore
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_custom_key_store, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteCustomKeyStore,
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
          data_parser: Parsers::DeleteCustomKeyStore,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::CustomKeyStoreHasCMKsException, Errors::CustomKeyStoreInvalidStateException, Errors::CustomKeyStoreNotFoundException, Errors::KMSInternalException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteCustomKeyStore,
          stub_error_classes: [Stubs::CustomKeyStoreHasCMKsException, Stubs::CustomKeyStoreInvalidStateException, Stubs::CustomKeyStoreNotFoundException, Stubs::KMSInternalException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteImportedKeyMaterial
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteImportedKeyMaterialInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteImportedKeyMaterial
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_imported_key_material, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteImportedKeyMaterial,
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
          data_parser: Parsers::DeleteImportedKeyMaterial,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteImportedKeyMaterial,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeCustomKeyStores
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeCustomKeyStoresInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeCustomKeyStores
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_custom_key_stores, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeCustomKeyStores,
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
          data_parser: Parsers::DescribeCustomKeyStores,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::CustomKeyStoreNotFoundException, Errors::InvalidMarkerException, Errors::KMSInternalException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DescribeCustomKeyStores,
          stub_error_classes: [Stubs::CustomKeyStoreNotFoundException, Stubs::InvalidMarkerException, Stubs::KMSInternalException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeKey
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeKeyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeKey
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_key, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeKey,
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
          data_parser: Parsers::DescribeKey,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DescribeKey,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DisableKey
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DisableKeyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DisableKey
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :disable_key, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DisableKey,
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
          data_parser: Parsers::DisableKey,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DisableKey,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DisableKeyRotation
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DisableKeyRotationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DisableKeyRotation
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :disable_key_rotation, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DisableKeyRotation,
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
          data_parser: Parsers::DisableKeyRotation,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DisableKeyRotation,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DisconnectCustomKeyStore
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DisconnectCustomKeyStoreInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DisconnectCustomKeyStore
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :disconnect_custom_key_store, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DisconnectCustomKeyStore,
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
          data_parser: Parsers::DisconnectCustomKeyStore,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::CustomKeyStoreInvalidStateException, Errors::CustomKeyStoreNotFoundException, Errors::KMSInternalException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DisconnectCustomKeyStore,
          stub_error_classes: [Stubs::CustomKeyStoreInvalidStateException, Stubs::CustomKeyStoreNotFoundException, Stubs::KMSInternalException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class EnableKey
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::EnableKeyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::EnableKey
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :enable_key, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::EnableKey,
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
          data_parser: Parsers::EnableKey,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::LimitExceededException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::EnableKey,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::LimitExceededException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class EnableKeyRotation
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::EnableKeyRotationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::EnableKeyRotation
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :enable_key_rotation, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::EnableKeyRotation,
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
          data_parser: Parsers::EnableKeyRotation,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::EnableKeyRotation,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class Encrypt
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::EncryptInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::Encrypt
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :encrypt, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::Encrypt,
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
          data_parser: Parsers::Encrypt,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::Encrypt,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GenerateDataKey
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GenerateDataKeyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GenerateDataKey
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :generate_data_key, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GenerateDataKey,
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
          data_parser: Parsers::GenerateDataKey,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GenerateDataKey,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GenerateDataKeyPair
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GenerateDataKeyPairInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GenerateDataKeyPair
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :generate_data_key_pair, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GenerateDataKeyPair,
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
          data_parser: Parsers::GenerateDataKeyPair,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GenerateDataKeyPair,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GenerateDataKeyPairWithoutPlaintext
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GenerateDataKeyPairWithoutPlaintextInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GenerateDataKeyPairWithoutPlaintext
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :generate_data_key_pair_without_plaintext, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GenerateDataKeyPairWithoutPlaintext,
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
          data_parser: Parsers::GenerateDataKeyPairWithoutPlaintext,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GenerateDataKeyPairWithoutPlaintext,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GenerateDataKeyWithoutPlaintext
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GenerateDataKeyWithoutPlaintextInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GenerateDataKeyWithoutPlaintext
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :generate_data_key_without_plaintext, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GenerateDataKeyWithoutPlaintext,
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
          data_parser: Parsers::GenerateDataKeyWithoutPlaintext,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GenerateDataKeyWithoutPlaintext,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GenerateMac
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GenerateMacInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GenerateMac
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :generate_mac, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GenerateMac,
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
          data_parser: Parsers::GenerateMac,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GenerateMac,
          stub_error_classes: [Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GenerateRandom
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GenerateRandomInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GenerateRandom
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :generate_random, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GenerateRandom,
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
          data_parser: Parsers::GenerateRandom,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::CustomKeyStoreInvalidStateException, Errors::CustomKeyStoreNotFoundException, Errors::DependencyTimeoutException, Errors::KMSInternalException, Errors::UnsupportedOperationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GenerateRandom,
          stub_error_classes: [Stubs::CustomKeyStoreInvalidStateException, Stubs::CustomKeyStoreNotFoundException, Stubs::DependencyTimeoutException, Stubs::KMSInternalException, Stubs::UnsupportedOperationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetKeyPolicy
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetKeyPolicyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetKeyPolicy
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_key_policy, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetKeyPolicy,
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
          data_parser: Parsers::GetKeyPolicy,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetKeyPolicy,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetKeyRotationStatus
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetKeyRotationStatusInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetKeyRotationStatus
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_key_rotation_status, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetKeyRotationStatus,
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
          data_parser: Parsers::GetKeyRotationStatus,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetKeyRotationStatus,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetParametersForImport
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetParametersForImportInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetParametersForImport
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_parameters_for_import, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetParametersForImport,
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
          data_parser: Parsers::GetParametersForImport,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetParametersForImport,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetPublicKey
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetPublicKeyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetPublicKey
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_public_key, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetPublicKey,
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
          data_parser: Parsers::GetPublicKey,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::InvalidArnException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetPublicKey,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::InvalidArnException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ImportKeyMaterial
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ImportKeyMaterialInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ImportKeyMaterial
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :import_key_material, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ImportKeyMaterial,
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
          data_parser: Parsers::ImportKeyMaterial,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::ExpiredImportTokenException, Errors::IncorrectKeyMaterialException, Errors::InvalidArnException, Errors::InvalidCiphertextException, Errors::InvalidImportTokenException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ImportKeyMaterial,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::ExpiredImportTokenException, Stubs::IncorrectKeyMaterialException, Stubs::InvalidArnException, Stubs::InvalidCiphertextException, Stubs::InvalidImportTokenException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListAliases
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListAliasesInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListAliases
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_aliases, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListAliases,
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
          data_parser: Parsers::ListAliases,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::InvalidMarkerException, Errors::KMSInternalException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListAliases,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::InvalidMarkerException, Stubs::KMSInternalException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListGrants
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListGrantsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListGrants
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_grants, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListGrants,
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
          data_parser: Parsers::ListGrants,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::InvalidGrantIdException, Errors::InvalidMarkerException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListGrants,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::InvalidGrantIdException, Stubs::InvalidMarkerException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListKeyPolicies
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListKeyPoliciesInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListKeyPolicies
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_key_policies, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListKeyPolicies,
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
          data_parser: Parsers::ListKeyPolicies,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListKeyPolicies,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListKeys
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListKeysInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListKeys
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_keys, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListKeys,
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
          data_parser: Parsers::ListKeys,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidMarkerException, Errors::KMSInternalException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListKeys,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidMarkerException, Stubs::KMSInternalException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListResourceTags
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListResourceTagsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListResourceTags
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_resource_tags, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListResourceTags,
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
          data_parser: Parsers::ListResourceTags,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidArnException, Errors::InvalidMarkerException, Errors::KMSInternalException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListResourceTags,
          stub_error_classes: [Stubs::InvalidArnException, Stubs::InvalidMarkerException, Stubs::KMSInternalException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListRetirableGrants
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListRetirableGrantsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListRetirableGrants
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_retirable_grants, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListRetirableGrants,
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
          data_parser: Parsers::ListRetirableGrants,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::InvalidMarkerException, Errors::KMSInternalException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListRetirableGrants,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::InvalidMarkerException, Stubs::KMSInternalException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutKeyPolicy
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutKeyPolicyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutKeyPolicy
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_key_policy, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::PutKeyPolicy,
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
          data_parser: Parsers::PutKeyPolicy,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::LimitExceededException, Errors::MalformedPolicyDocumentException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutKeyPolicy,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::LimitExceededException, Stubs::MalformedPolicyDocumentException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ReEncrypt
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ReEncryptInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ReEncrypt
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :re_encrypt, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ReEncrypt,
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
          data_parser: Parsers::ReEncrypt,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::IncorrectKeyException, Errors::InvalidCiphertextException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ReEncrypt,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::IncorrectKeyException, Stubs::InvalidCiphertextException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ReplicateKey
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ReplicateKeyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ReplicateKey
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :replicate_key, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ReplicateKey,
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
          data_parser: Parsers::ReplicateKey,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AlreadyExistsException, Errors::DisabledException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::LimitExceededException, Errors::MalformedPolicyDocumentException, Errors::NotFoundException, Errors::TagException, Errors::UnsupportedOperationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ReplicateKey,
          stub_error_classes: [Stubs::AlreadyExistsException, Stubs::DisabledException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::LimitExceededException, Stubs::MalformedPolicyDocumentException, Stubs::NotFoundException, Stubs::TagException, Stubs::UnsupportedOperationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class RetireGrant
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::RetireGrantInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::RetireGrant
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :retire_grant, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::RetireGrant,
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
          data_parser: Parsers::RetireGrant,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DryRunOperationException, Errors::InvalidArnException, Errors::InvalidGrantIdException, Errors::InvalidGrantTokenException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::RetireGrant,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DryRunOperationException, Stubs::InvalidArnException, Stubs::InvalidGrantIdException, Stubs::InvalidGrantTokenException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class RevokeGrant
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::RevokeGrantInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::RevokeGrant
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :revoke_grant, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::RevokeGrant,
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
          data_parser: Parsers::RevokeGrant,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DryRunOperationException, Errors::InvalidArnException, Errors::InvalidGrantIdException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::RevokeGrant,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DryRunOperationException, Stubs::InvalidArnException, Stubs::InvalidGrantIdException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ScheduleKeyDeletion
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ScheduleKeyDeletionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ScheduleKeyDeletion
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :schedule_key_deletion, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ScheduleKeyDeletion,
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
          data_parser: Parsers::ScheduleKeyDeletion,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ScheduleKeyDeletion,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class Sign
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::SignInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::Sign
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :sign, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::Sign,
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
          data_parser: Parsers::Sign,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::Sign,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class TagResource
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::TagResourceInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::TagResource
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :tag_resource, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::TagResource,
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
          data_parser: Parsers::TagResource,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::LimitExceededException, Errors::NotFoundException, Errors::TagException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::TagResource,
          stub_error_classes: [Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::LimitExceededException, Stubs::NotFoundException, Stubs::TagException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UntagResource
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UntagResourceInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UntagResource
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :untag_resource, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UntagResource,
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
          data_parser: Parsers::UntagResource,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::TagException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::UntagResource,
          stub_error_classes: [Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::TagException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateAlias
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateAliasInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateAlias
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_alias, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateAlias,
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
          data_parser: Parsers::UpdateAlias,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::LimitExceededException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::UpdateAlias,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::LimitExceededException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateCustomKeyStore
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateCustomKeyStoreInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateCustomKeyStore
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_custom_key_store, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateCustomKeyStore,
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
          data_parser: Parsers::UpdateCustomKeyStore,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::CloudHsmClusterInvalidConfigurationException, Errors::CloudHsmClusterNotActiveException, Errors::CloudHsmClusterNotFoundException, Errors::CloudHsmClusterNotRelatedException, Errors::CustomKeyStoreInvalidStateException, Errors::CustomKeyStoreNameInUseException, Errors::CustomKeyStoreNotFoundException, Errors::KMSInternalException, Errors::XksProxyIncorrectAuthenticationCredentialException, Errors::XksProxyInvalidConfigurationException, Errors::XksProxyInvalidResponseException, Errors::XksProxyUriEndpointInUseException, Errors::XksProxyUriInUseException, Errors::XksProxyUriUnreachableException, Errors::XksProxyVpcEndpointServiceInUseException, Errors::XksProxyVpcEndpointServiceInvalidConfigurationException, Errors::XksProxyVpcEndpointServiceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::UpdateCustomKeyStore,
          stub_error_classes: [Stubs::CloudHsmClusterInvalidConfigurationException, Stubs::CloudHsmClusterNotActiveException, Stubs::CloudHsmClusterNotFoundException, Stubs::CloudHsmClusterNotRelatedException, Stubs::CustomKeyStoreInvalidStateException, Stubs::CustomKeyStoreNameInUseException, Stubs::CustomKeyStoreNotFoundException, Stubs::KMSInternalException, Stubs::XksProxyIncorrectAuthenticationCredentialException, Stubs::XksProxyInvalidConfigurationException, Stubs::XksProxyInvalidResponseException, Stubs::XksProxyUriEndpointInUseException, Stubs::XksProxyUriInUseException, Stubs::XksProxyUriUnreachableException, Stubs::XksProxyVpcEndpointServiceInUseException, Stubs::XksProxyVpcEndpointServiceInvalidConfigurationException, Stubs::XksProxyVpcEndpointServiceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateKeyDescription
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateKeyDescriptionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateKeyDescription
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_key_description, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateKeyDescription,
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
          data_parser: Parsers::UpdateKeyDescription,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::UpdateKeyDescription,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdatePrimaryRegion
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdatePrimaryRegionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdatePrimaryRegion
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_primary_region, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdatePrimaryRegion,
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
          data_parser: Parsers::UpdatePrimaryRegion,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DisabledException, Errors::InvalidArnException, Errors::KMSInternalException, Errors::KMSInvalidStateException, Errors::NotFoundException, Errors::UnsupportedOperationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::UpdatePrimaryRegion,
          stub_error_classes: [Stubs::DisabledException, Stubs::InvalidArnException, Stubs::KMSInternalException, Stubs::KMSInvalidStateException, Stubs::NotFoundException, Stubs::UnsupportedOperationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class Verify
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::VerifyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::Verify
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :verify, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::Verify,
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
          data_parser: Parsers::Verify,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DependencyTimeoutException, Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidSignatureException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::Verify,
          stub_error_classes: [Stubs::DependencyTimeoutException, Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidSignatureException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class VerifyMac
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::VerifyMacInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::VerifyMac
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :verify_mac, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::VerifyMac,
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
          data_parser: Parsers::VerifyMac,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::DisabledException, Errors::DryRunOperationException, Errors::InvalidGrantTokenException, Errors::InvalidKeyUsageException, Errors::KeyUnavailableException, Errors::KMSInternalException, Errors::KMSInvalidMacException, Errors::KMSInvalidStateException, Errors::NotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::VerifyMac,
          stub_error_classes: [Stubs::DisabledException, Stubs::DryRunOperationException, Stubs::InvalidGrantTokenException, Stubs::InvalidKeyUsageException, Stubs::KeyUnavailableException, Stubs::KMSInternalException, Stubs::KMSInvalidMacException, Stubs::KMSInvalidStateException, Stubs::NotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

  end
end
