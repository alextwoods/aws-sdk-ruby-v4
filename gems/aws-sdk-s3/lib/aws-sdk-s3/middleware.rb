# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::S3
  # @api private
  module Middleware

    class AbortMultipartUpload
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::AbortMultipartUploadInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::AbortMultipartUpload
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :abort_multipart_upload, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::AbortMultipartUpload,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::AbortMultipartUpload,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: [Errors::NoSuchUpload]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::AbortMultipartUpload,
          stub_error_classes: [Stubs::NoSuchUpload],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CompleteMultipartUpload
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CompleteMultipartUploadInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CompleteMultipartUpload
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :complete_multipart_upload, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::CompleteMultipartUpload,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::CompleteMultipartUpload,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CompleteMultipartUpload,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CopyObject
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CopyObjectInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CopyObject
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :copy_object, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::CopyObject,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::CopyObject,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::ObjectNotInActiveTierError]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CopyObject,
          stub_error_classes: [Stubs::ObjectNotInActiveTierError],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateBucket
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateBucketInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateBucket
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_bucket, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::CreateBucket,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::CreateBucket,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::BucketAlreadyExists, Errors::BucketAlreadyOwnedByYou]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateBucket,
          stub_error_classes: [Stubs::BucketAlreadyExists, Stubs::BucketAlreadyOwnedByYou],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateMultipartUpload
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateMultipartUploadInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateMultipartUpload
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_multipart_upload, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::CreateMultipartUpload,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::CreateMultipartUpload,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateMultipartUpload,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateSession
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateSessionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateSession
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_session, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::CreateSession,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::CreateSession,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::NoSuchBucket]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateSession,
          stub_error_classes: [Stubs::NoSuchBucket],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteBucket
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteBucketInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucket
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteBucket,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteBucket,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteBucket,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteBucketAnalyticsConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteBucketAnalyticsConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketAnalyticsConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_analytics_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteBucketAnalyticsConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteBucketAnalyticsConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteBucketAnalyticsConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteBucketCors
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteBucketCorsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketCors
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_cors, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteBucketCors,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteBucketCors,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteBucketCors,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteBucketEncryption
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteBucketEncryptionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketEncryption
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_encryption, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteBucketEncryption,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteBucketEncryption,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteBucketEncryption,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteBucketIntelligentTieringConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteBucketIntelligentTieringConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketIntelligentTieringConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_intelligent_tiering_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteBucketIntelligentTieringConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteBucketIntelligentTieringConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteBucketIntelligentTieringConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteBucketInventoryConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteBucketInventoryConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketInventoryConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_inventory_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteBucketInventoryConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteBucketInventoryConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteBucketInventoryConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteBucketLifecycle
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteBucketLifecycleInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketLifecycle
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_lifecycle, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteBucketLifecycle,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteBucketLifecycle,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteBucketLifecycle,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteBucketMetricsConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteBucketMetricsConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketMetricsConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_metrics_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteBucketMetricsConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteBucketMetricsConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteBucketMetricsConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteBucketOwnershipControls
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteBucketOwnershipControlsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketOwnershipControls
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_ownership_controls, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteBucketOwnershipControls,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteBucketOwnershipControls,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteBucketOwnershipControls,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteBucketPolicy
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteBucketPolicyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketPolicy
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_policy, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteBucketPolicy,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteBucketPolicy,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteBucketPolicy,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteBucketReplication
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteBucketReplicationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketReplication
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_replication, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteBucketReplication,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteBucketReplication,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteBucketReplication,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteBucketTagging
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteBucketTaggingInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketTagging
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_tagging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteBucketTagging,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteBucketTagging,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteBucketTagging,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteBucketWebsite
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteBucketWebsiteInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketWebsite
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_website, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteBucketWebsite,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteBucketWebsite,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteBucketWebsite,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteObject
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteObjectInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteObject
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_object, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteObject,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteObject,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteObject,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteObjectTagging
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteObjectTaggingInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteObjectTagging
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_object_tagging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteObjectTagging,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteObjectTagging,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteObjectTagging,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteObjects
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteObjectsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteObjects
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_objects, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeleteObjects,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteObjects,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteObjects,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeletePublicAccessBlock
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeletePublicAccessBlockInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeletePublicAccessBlock
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_public_access_block, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::DeletePublicAccessBlock,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeletePublicAccessBlock,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeletePublicAccessBlock,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketAccelerateConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketAccelerateConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketAccelerateConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_accelerate_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketAccelerateConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketAccelerateConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketAccelerateConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketAcl
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketAclInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketAcl
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_acl, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketAcl,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketAcl,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketAcl,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketAnalyticsConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketAnalyticsConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketAnalyticsConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_analytics_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketAnalyticsConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketAnalyticsConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketAnalyticsConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketCors
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketCorsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketCors
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_cors, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketCors,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketCors,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketCors,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketEncryption
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketEncryptionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketEncryption
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_encryption, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketEncryption,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketEncryption,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketEncryption,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketIntelligentTieringConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketIntelligentTieringConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketIntelligentTieringConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_intelligent_tiering_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketIntelligentTieringConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketIntelligentTieringConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketIntelligentTieringConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketInventoryConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketInventoryConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketInventoryConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_inventory_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketInventoryConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketInventoryConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketInventoryConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketLifecycleConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketLifecycleConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketLifecycleConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_lifecycle_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketLifecycleConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketLifecycleConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketLifecycleConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketLocation
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketLocationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketLocation
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_location, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketLocation,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketLocation,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketLocation,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketLogging
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketLoggingInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketLogging
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_logging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketLogging,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketLogging,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketLogging,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketMetricsConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketMetricsConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketMetricsConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_metrics_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketMetricsConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketMetricsConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketMetricsConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketNotificationConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketNotificationConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketNotificationConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_notification_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketNotificationConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketNotificationConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketNotificationConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketOwnershipControls
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketOwnershipControlsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketOwnershipControls
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_ownership_controls, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketOwnershipControls,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketOwnershipControls,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketOwnershipControls,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketPolicy
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketPolicyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketPolicy
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_policy, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketPolicy,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketPolicy,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketPolicy,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketPolicyStatus
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketPolicyStatusInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketPolicyStatus
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_policy_status, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketPolicyStatus,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketPolicyStatus,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketPolicyStatus,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketReplication
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketReplicationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketReplication
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_replication, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketReplication,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketReplication,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketReplication,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketRequestPayment
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketRequestPaymentInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketRequestPayment
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_request_payment, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketRequestPayment,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketRequestPayment,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketRequestPayment,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketTagging
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketTaggingInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketTagging
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_tagging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketTagging,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketTagging,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketTagging,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketVersioning
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketVersioningInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketVersioning
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_versioning, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketVersioning,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketVersioning,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketVersioning,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetBucketWebsite
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetBucketWebsiteInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketWebsite
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_website, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetBucketWebsite,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetBucketWebsite,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetBucketWebsite,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetObject
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetObjectInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObject
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_checksum_required: false,
          request_validation_mode_member: :checksum_mode,
          response_algorithms: ['CRC32', 'CRC32C', 'SHA256', 'SHA1']
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetObject,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetObject,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidObjectState, Errors::NoSuchKey]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetObject,
          stub_error_classes: [Stubs::InvalidObjectState, Stubs::NoSuchKey],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetObjectAcl
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetObjectAclInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObjectAcl
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object_acl, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetObjectAcl,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetObjectAcl,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::NoSuchKey]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetObjectAcl,
          stub_error_classes: [Stubs::NoSuchKey],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetObjectAttributes
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetObjectAttributesInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObjectAttributes
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object_attributes, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetObjectAttributes,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetObjectAttributes,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::NoSuchKey]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetObjectAttributes,
          stub_error_classes: [Stubs::NoSuchKey],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetObjectLegalHold
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetObjectLegalHoldInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObjectLegalHold
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object_legal_hold, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetObjectLegalHold,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetObjectLegalHold,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetObjectLegalHold,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetObjectLockConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetObjectLockConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObjectLockConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object_lock_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetObjectLockConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetObjectLockConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetObjectLockConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetObjectRetention
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetObjectRetentionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObjectRetention
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object_retention, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetObjectRetention,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetObjectRetention,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetObjectRetention,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetObjectTagging
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetObjectTaggingInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObjectTagging
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object_tagging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetObjectTagging,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetObjectTagging,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetObjectTagging,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetObjectTorrent
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetObjectTorrentInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObjectTorrent
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object_torrent, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetObjectTorrent,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetObjectTorrent,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetObjectTorrent,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetPublicAccessBlock
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetPublicAccessBlockInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetPublicAccessBlock
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_public_access_block, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::GetPublicAccessBlock,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetPublicAccessBlock,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetPublicAccessBlock,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class HeadBucket
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::HeadBucketInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::HeadBucket
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :head_bucket, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::HeadBucket,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::HeadBucket,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::NotFound]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::HeadBucket,
          stub_error_classes: [Stubs::NotFound],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class HeadObject
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::HeadObjectInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::HeadObject
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :head_object, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::HeadObject,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::HeadObject,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::NotFound]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::HeadObject,
          stub_error_classes: [Stubs::NotFound],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListBucketAnalyticsConfigurations
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListBucketAnalyticsConfigurationsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListBucketAnalyticsConfigurations
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_bucket_analytics_configurations, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::ListBucketAnalyticsConfigurations,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListBucketAnalyticsConfigurations,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListBucketAnalyticsConfigurations,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListBucketIntelligentTieringConfigurations
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListBucketIntelligentTieringConfigurationsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListBucketIntelligentTieringConfigurations
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_bucket_intelligent_tiering_configurations, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::ListBucketIntelligentTieringConfigurations,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListBucketIntelligentTieringConfigurations,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListBucketIntelligentTieringConfigurations,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListBucketInventoryConfigurations
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListBucketInventoryConfigurationsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListBucketInventoryConfigurations
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_bucket_inventory_configurations, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::ListBucketInventoryConfigurations,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListBucketInventoryConfigurations,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListBucketInventoryConfigurations,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListBucketMetricsConfigurations
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListBucketMetricsConfigurationsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListBucketMetricsConfigurations
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_bucket_metrics_configurations, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::ListBucketMetricsConfigurations,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListBucketMetricsConfigurations,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListBucketMetricsConfigurations,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListBuckets
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListBucketsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListBuckets
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_buckets, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::ListBuckets,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListBuckets,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListBuckets,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListDirectoryBuckets
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListDirectoryBucketsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListDirectoryBuckets
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_directory_buckets, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::ListDirectoryBuckets,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListDirectoryBuckets,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListDirectoryBuckets,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListMultipartUploads
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListMultipartUploadsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListMultipartUploads
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_multipart_uploads, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::ListMultipartUploads,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListMultipartUploads,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListMultipartUploads,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListObjectVersions
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListObjectVersionsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListObjectVersions
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_object_versions, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::ListObjectVersions,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListObjectVersions,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListObjectVersions,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListObjects
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListObjectsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListObjects
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_objects, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::ListObjects,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListObjects,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::NoSuchBucket]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListObjects,
          stub_error_classes: [Stubs::NoSuchBucket],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListObjectsV2
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListObjectsV2Input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListObjectsV2
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_objects_v2, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::ListObjectsV2,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListObjectsV2,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::NoSuchBucket]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListObjectsV2,
          stub_error_classes: [Stubs::NoSuchBucket],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListParts
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListPartsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListParts
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_parts, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::ListParts,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListParts,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListParts,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketAccelerateConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketAccelerateConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketAccelerateConfiguration
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: false
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_accelerate_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketAccelerateConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketAccelerateConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketAccelerateConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketAcl
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketAclInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketAcl
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_acl, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketAcl,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketAcl,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketAcl,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketAnalyticsConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketAnalyticsConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketAnalyticsConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_analytics_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketAnalyticsConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketAnalyticsConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketAnalyticsConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketCors
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketCorsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketCors
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_cors, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketCors,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketCors,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketCors,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketEncryption
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketEncryptionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketEncryption
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_encryption, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketEncryption,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketEncryption,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketEncryption,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketIntelligentTieringConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketIntelligentTieringConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketIntelligentTieringConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_intelligent_tiering_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketIntelligentTieringConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketIntelligentTieringConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketIntelligentTieringConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketInventoryConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketInventoryConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketInventoryConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_inventory_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketInventoryConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketInventoryConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketInventoryConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketLifecycleConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketLifecycleConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketLifecycleConfiguration
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_lifecycle_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketLifecycleConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketLifecycleConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketLifecycleConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketLogging
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketLoggingInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketLogging
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_logging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketLogging,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketLogging,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketLogging,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketMetricsConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketMetricsConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketMetricsConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_metrics_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketMetricsConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketMetricsConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketMetricsConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketNotificationConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketNotificationConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketNotificationConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_notification_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketNotificationConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketNotificationConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketNotificationConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketOwnershipControls
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketOwnershipControlsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketOwnershipControls
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_ownership_controls, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketOwnershipControls,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketOwnershipControls,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketOwnershipControls,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketPolicy
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketPolicyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketPolicy
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_policy, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketPolicy,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketPolicy,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketPolicy,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketReplication
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketReplicationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketReplication
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_replication, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketReplication,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketReplication,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketReplication,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketRequestPayment
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketRequestPaymentInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketRequestPayment
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_request_payment, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketRequestPayment,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketRequestPayment,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketRequestPayment,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketTagging
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketTaggingInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketTagging
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_tagging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketTagging,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketTagging,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketTagging,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketVersioning
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketVersioningInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketVersioning
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_versioning, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketVersioning,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketVersioning,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketVersioning,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutBucketWebsite
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutBucketWebsiteInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketWebsite
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_website, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutBucketWebsite,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutBucketWebsite,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutBucketWebsite,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutObject
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutObjectInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutObject
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: false,
          require_decoded_content_length: true,
          signed_streaming: true,
          streaming: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_object, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutObject,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutObject,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutObject,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutObjectAcl
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutObjectAclInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutObjectAcl
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_object_acl, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutObjectAcl,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutObjectAcl,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::NoSuchKey]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutObjectAcl,
          stub_error_classes: [Stubs::NoSuchKey],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutObjectLegalHold
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutObjectLegalHoldInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutObjectLegalHold
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_object_legal_hold, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutObjectLegalHold,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutObjectLegalHold,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutObjectLegalHold,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutObjectLockConfiguration
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutObjectLockConfigurationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutObjectLockConfiguration
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_object_lock_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutObjectLockConfiguration,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutObjectLockConfiguration,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutObjectLockConfiguration,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutObjectRetention
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutObjectRetentionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutObjectRetention
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_object_retention, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutObjectRetention,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutObjectRetention,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutObjectRetention,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutObjectTagging
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutObjectTaggingInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutObjectTagging
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_object_tagging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutObjectTagging,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutObjectTagging,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutObjectTagging,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutPublicAccessBlock
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutPublicAccessBlockInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutPublicAccessBlock
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_public_access_block, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::PutPublicAccessBlock,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutPublicAccessBlock,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutPublicAccessBlock,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class RestoreObject
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::RestoreObjectInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::RestoreObject
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: false
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :restore_object, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::RestoreObject,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::RestoreObject,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::ObjectAlreadyInActiveTierError]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::RestoreObject,
          stub_error_classes: [Stubs::ObjectAlreadyInActiveTierError],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UploadPart
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UploadPartInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UploadPart
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: false,
          require_decoded_content_length: true,
          signed_streaming: true,
          streaming: true
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :upload_part, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::UploadPart,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::UploadPart,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::UploadPart,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UploadPartCopy
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UploadPartCopyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UploadPartCopy
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :upload_part_copy, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::UploadPartCopy,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::UploadPartCopy,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::UploadPartCopy,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class WriteGetObjectResponse
      def self.build(config)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::WriteGetObjectResponseInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::WriteGetObjectResponse
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :write_get_object_response, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          force_path_style: config.force_path_style,
          param_builder: Endpoint::Parameters::WriteGetObjectResponse,
          region: config.region,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          use_arn_region: config.use_arn_region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::HostPrefix,
          disable_host_prefix: config.disable_host_prefix,
          host_prefix: "{request_route}."
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::WriteGetObjectResponse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: []
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::WriteGetObjectResponse,
          stub_error_classes: [],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

  end
end
