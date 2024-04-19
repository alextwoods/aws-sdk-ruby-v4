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
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::AbortMultipartUploadInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::AbortMultipartUpload
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :abort_multipart_upload, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::AbortMultipartUpload,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: [Errors::NoSuchUpload]
          ),
          data_parser: Parsers::AbortMultipartUpload
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::NoSuchUpload],
          stub_data_class: Stubs::AbortMultipartUpload,
          stubs: stubs
        )
        stack
      end
    end

    class CompleteMultipartUpload
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CompleteMultipartUploadInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CompleteMultipartUpload
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :complete_multipart_upload, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::CompleteMultipartUpload,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::CompleteMultipartUpload
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::CompleteMultipartUpload,
          stubs: stubs
        )
        stack
      end
    end

    class CopyObject
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CopyObjectInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CopyObject
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :copy_object, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::CopyObject,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
            errors: [Errors::ObjectNotInActiveTierError]
          ),
          data_parser: Parsers::CopyObject
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::ObjectNotInActiveTierError],
          stub_data_class: Stubs::CopyObject,
          stubs: stubs
        )
        stack
      end
    end

    class CreateBucket
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateBucketInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateBucket
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_bucket, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::CreateBucket,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
            errors: [Errors::BucketAlreadyExists, Errors::BucketAlreadyOwnedByYou]
          ),
          data_parser: Parsers::CreateBucket
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::BucketAlreadyExists, Stubs::BucketAlreadyOwnedByYou],
          stub_data_class: Stubs::CreateBucket,
          stubs: stubs
        )
        stack
      end
    end

    class CreateMultipartUpload
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateMultipartUploadInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateMultipartUpload
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_multipart_upload, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::CreateMultipartUpload,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::CreateMultipartUpload
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::CreateMultipartUpload,
          stubs: stubs
        )
        stack
      end
    end

    class CreateSession
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::CreateSessionInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateSession
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_session, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::CreateSession,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
            errors: [Errors::NoSuchBucket]
          ),
          data_parser: Parsers::CreateSession
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::NoSuchBucket],
          stub_data_class: Stubs::CreateSession,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteBucket
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteBucketInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucket
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteBucket,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteBucket
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteBucket,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteBucketAnalyticsConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteBucketAnalyticsConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketAnalyticsConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_analytics_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteBucketAnalyticsConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteBucketAnalyticsConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteBucketAnalyticsConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteBucketCors
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteBucketCorsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketCors
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_cors, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteBucketCors,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteBucketCors
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteBucketCors,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteBucketEncryption
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteBucketEncryptionInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketEncryption
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_encryption, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteBucketEncryption,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteBucketEncryption
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteBucketEncryption,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteBucketIntelligentTieringConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteBucketIntelligentTieringConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketIntelligentTieringConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_intelligent_tiering_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteBucketIntelligentTieringConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteBucketIntelligentTieringConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteBucketIntelligentTieringConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteBucketInventoryConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteBucketInventoryConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketInventoryConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_inventory_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteBucketInventoryConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteBucketInventoryConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteBucketInventoryConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteBucketLifecycle
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteBucketLifecycleInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketLifecycle
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_lifecycle, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteBucketLifecycle,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteBucketLifecycle
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteBucketLifecycle,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteBucketMetricsConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteBucketMetricsConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketMetricsConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_metrics_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteBucketMetricsConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteBucketMetricsConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteBucketMetricsConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteBucketOwnershipControls
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteBucketOwnershipControlsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketOwnershipControls
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_ownership_controls, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteBucketOwnershipControls,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteBucketOwnershipControls
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteBucketOwnershipControls,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteBucketPolicy
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteBucketPolicyInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketPolicy
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_policy, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteBucketPolicy,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteBucketPolicy
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteBucketPolicy,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteBucketReplication
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteBucketReplicationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketReplication
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_replication, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteBucketReplication,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteBucketReplication
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteBucketReplication,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteBucketTagging
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteBucketTaggingInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketTagging
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_tagging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteBucketTagging,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteBucketTagging
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteBucketTagging,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteBucketWebsite
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteBucketWebsiteInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteBucketWebsite
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_bucket_website, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteBucketWebsite,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteBucketWebsite
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteBucketWebsite,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteObject
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteObjectInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteObject
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_object, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteObject,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteObject
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteObject,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteObjectTagging
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteObjectTaggingInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteObjectTagging
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_object_tagging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteObjectTagging,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeleteObjectTagging
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteObjectTagging,
          stubs: stubs
        )
        stack
      end
    end

    class DeleteObjects
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeleteObjectsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteObjects
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_objects, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeleteObjects,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::DeleteObjects
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeleteObjects,
          stubs: stubs
        )
        stack
      end
    end

    class DeletePublicAccessBlock
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::DeletePublicAccessBlockInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeletePublicAccessBlock
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_public_access_block, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::DeletePublicAccessBlock,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          retry_strategy: config.retry_strategy,
          error_inspector_class: Hearth::HTTP::ErrorInspector
        )
        stack.use(Hearth::Middleware::Sign)
        stack.use(Hearth::Middleware::Parse,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 204,
            errors: []
          ),
          data_parser: Parsers::DeletePublicAccessBlock
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::DeletePublicAccessBlock,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketAccelerateConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketAccelerateConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketAccelerateConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_accelerate_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketAccelerateConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketAccelerateConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketAccelerateConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketAcl
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketAclInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketAcl
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_acl, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketAcl,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketAcl
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketAcl,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketAnalyticsConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketAnalyticsConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketAnalyticsConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_analytics_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketAnalyticsConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketAnalyticsConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketAnalyticsConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketCors
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketCorsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketCors
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_cors, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketCors,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketCors
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketCors,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketEncryption
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketEncryptionInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketEncryption
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_encryption, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketEncryption,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketEncryption
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketEncryption,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketIntelligentTieringConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketIntelligentTieringConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketIntelligentTieringConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_intelligent_tiering_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketIntelligentTieringConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketIntelligentTieringConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketIntelligentTieringConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketInventoryConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketInventoryConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketInventoryConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_inventory_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketInventoryConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketInventoryConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketInventoryConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketLifecycleConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketLifecycleConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketLifecycleConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_lifecycle_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketLifecycleConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketLifecycleConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketLifecycleConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketLocation
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketLocationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketLocation
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_location, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketLocation,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketLocation
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketLocation,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketLogging
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketLoggingInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketLogging
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_logging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketLogging,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketLogging
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketLogging,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketMetricsConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketMetricsConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketMetricsConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_metrics_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketMetricsConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketMetricsConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketMetricsConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketNotificationConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketNotificationConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketNotificationConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_notification_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketNotificationConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketNotificationConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketNotificationConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketOwnershipControls
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketOwnershipControlsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketOwnershipControls
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_ownership_controls, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketOwnershipControls,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketOwnershipControls
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketOwnershipControls,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketPolicy
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketPolicyInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketPolicy
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_policy, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketPolicy,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketPolicy
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketPolicy,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketPolicyStatus
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketPolicyStatusInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketPolicyStatus
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_policy_status, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketPolicyStatus,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketPolicyStatus
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketPolicyStatus,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketReplication
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketReplicationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketReplication
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_replication, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketReplication,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketReplication
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketReplication,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketRequestPayment
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketRequestPaymentInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketRequestPayment
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_request_payment, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketRequestPayment,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketRequestPayment
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketRequestPayment,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketTagging
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketTaggingInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketTagging
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_tagging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketTagging,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketTagging
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketTagging,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketVersioning
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketVersioningInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketVersioning
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_versioning, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketVersioning,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketVersioning
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketVersioning,
          stubs: stubs
        )
        stack
      end
    end

    class GetBucketWebsite
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetBucketWebsiteInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetBucketWebsite
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_bucket_website, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetBucketWebsite,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetBucketWebsite
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetBucketWebsite,
          stubs: stubs
        )
        stack
      end
    end

    class GetObject
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetObjectInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObject
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          response_algorithms: ['CRC32', 'CRC32C', 'SHA256', 'SHA1'],
          request_validation_mode_member: :checksum_mode,
          request_checksum_required: false
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetObject,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
            errors: [Errors::InvalidObjectState, Errors::NoSuchKey]
          ),
          data_parser: Parsers::GetObject
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::InvalidObjectState, Stubs::NoSuchKey],
          stub_data_class: Stubs::GetObject,
          stubs: stubs
        )
        stack
      end
    end

    class GetObjectAcl
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetObjectAclInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObjectAcl
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object_acl, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetObjectAcl,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
            errors: [Errors::NoSuchKey]
          ),
          data_parser: Parsers::GetObjectAcl
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::NoSuchKey],
          stub_data_class: Stubs::GetObjectAcl,
          stubs: stubs
        )
        stack
      end
    end

    class GetObjectAttributes
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetObjectAttributesInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObjectAttributes
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object_attributes, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetObjectAttributes,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
            errors: [Errors::NoSuchKey]
          ),
          data_parser: Parsers::GetObjectAttributes
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::NoSuchKey],
          stub_data_class: Stubs::GetObjectAttributes,
          stubs: stubs
        )
        stack
      end
    end

    class GetObjectLegalHold
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetObjectLegalHoldInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObjectLegalHold
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object_legal_hold, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetObjectLegalHold,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetObjectLegalHold
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetObjectLegalHold,
          stubs: stubs
        )
        stack
      end
    end

    class GetObjectLockConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetObjectLockConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObjectLockConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object_lock_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetObjectLockConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetObjectLockConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetObjectLockConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class GetObjectRetention
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetObjectRetentionInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObjectRetention
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object_retention, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetObjectRetention,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetObjectRetention
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetObjectRetention,
          stubs: stubs
        )
        stack
      end
    end

    class GetObjectTagging
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetObjectTaggingInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObjectTagging
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object_tagging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetObjectTagging,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetObjectTagging
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetObjectTagging,
          stubs: stubs
        )
        stack
      end
    end

    class GetObjectTorrent
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetObjectTorrentInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetObjectTorrent
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_object_torrent, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetObjectTorrent,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetObjectTorrent
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetObjectTorrent,
          stubs: stubs
        )
        stack
      end
    end

    class GetPublicAccessBlock
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::GetPublicAccessBlockInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetPublicAccessBlock
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_public_access_block, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::GetPublicAccessBlock,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::GetPublicAccessBlock
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::GetPublicAccessBlock,
          stubs: stubs
        )
        stack
      end
    end

    class HeadBucket
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::HeadBucketInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::HeadBucket
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :head_bucket, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::HeadBucket,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
            errors: [Errors::NotFound]
          ),
          data_parser: Parsers::HeadBucket
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::NotFound],
          stub_data_class: Stubs::HeadBucket,
          stubs: stubs
        )
        stack
      end
    end

    class HeadObject
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::HeadObjectInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::HeadObject
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :head_object, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::HeadObject,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
            errors: [Errors::NotFound]
          ),
          data_parser: Parsers::HeadObject
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::NotFound],
          stub_data_class: Stubs::HeadObject,
          stubs: stubs
        )
        stack
      end
    end

    class ListBucketAnalyticsConfigurations
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListBucketAnalyticsConfigurationsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListBucketAnalyticsConfigurations
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_bucket_analytics_configurations, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::ListBucketAnalyticsConfigurations,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::ListBucketAnalyticsConfigurations
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::ListBucketAnalyticsConfigurations,
          stubs: stubs
        )
        stack
      end
    end

    class ListBucketIntelligentTieringConfigurations
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListBucketIntelligentTieringConfigurationsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListBucketIntelligentTieringConfigurations
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_bucket_intelligent_tiering_configurations, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::ListBucketIntelligentTieringConfigurations,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::ListBucketIntelligentTieringConfigurations
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::ListBucketIntelligentTieringConfigurations,
          stubs: stubs
        )
        stack
      end
    end

    class ListBucketInventoryConfigurations
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListBucketInventoryConfigurationsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListBucketInventoryConfigurations
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_bucket_inventory_configurations, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::ListBucketInventoryConfigurations,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::ListBucketInventoryConfigurations
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::ListBucketInventoryConfigurations,
          stubs: stubs
        )
        stack
      end
    end

    class ListBucketMetricsConfigurations
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListBucketMetricsConfigurationsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListBucketMetricsConfigurations
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_bucket_metrics_configurations, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::ListBucketMetricsConfigurations,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::ListBucketMetricsConfigurations
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::ListBucketMetricsConfigurations,
          stubs: stubs
        )
        stack
      end
    end

    class ListBuckets
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListBucketsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListBuckets
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_buckets, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::ListBuckets,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::ListBuckets
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::ListBuckets,
          stubs: stubs
        )
        stack
      end
    end

    class ListDirectoryBuckets
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListDirectoryBucketsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListDirectoryBuckets
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_directory_buckets, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::ListDirectoryBuckets,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::ListDirectoryBuckets
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::ListDirectoryBuckets,
          stubs: stubs
        )
        stack
      end
    end

    class ListMultipartUploads
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListMultipartUploadsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListMultipartUploads
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_multipart_uploads, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::ListMultipartUploads,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::ListMultipartUploads
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::ListMultipartUploads,
          stubs: stubs
        )
        stack
      end
    end

    class ListObjectVersions
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListObjectVersionsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListObjectVersions
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_object_versions, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::ListObjectVersions,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::ListObjectVersions
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::ListObjectVersions,
          stubs: stubs
        )
        stack
      end
    end

    class ListObjects
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListObjectsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListObjects
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_objects, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::ListObjects,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
            errors: [Errors::NoSuchBucket]
          ),
          data_parser: Parsers::ListObjects
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::NoSuchBucket],
          stub_data_class: Stubs::ListObjects,
          stubs: stubs
        )
        stack
      end
    end

    class ListObjectsV2
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListObjectsV2Input,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListObjectsV2
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_objects_v2, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::ListObjectsV2,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
            errors: [Errors::NoSuchBucket]
          ),
          data_parser: Parsers::ListObjectsV2
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::NoSuchBucket],
          stub_data_class: Stubs::ListObjectsV2,
          stubs: stubs
        )
        stack
      end
    end

    class ListParts
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::ListPartsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListParts
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_parts, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::ListParts,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::ListParts
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::ListParts,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketAccelerateConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketAccelerateConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketAccelerateConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_accelerate_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: false
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketAccelerateConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketAccelerateConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketAccelerateConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketAcl
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketAclInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketAcl
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_acl, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketAcl,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketAcl
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketAcl,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketAnalyticsConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketAnalyticsConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketAnalyticsConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_analytics_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketAnalyticsConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketAnalyticsConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketAnalyticsConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketCors
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketCorsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketCors
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_cors, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketCors,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketCors
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketCors,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketEncryption
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketEncryptionInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketEncryption
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_encryption, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketEncryption,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketEncryption
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketEncryption,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketIntelligentTieringConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketIntelligentTieringConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketIntelligentTieringConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_intelligent_tiering_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketIntelligentTieringConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketIntelligentTieringConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketIntelligentTieringConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketInventoryConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketInventoryConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketInventoryConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_inventory_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketInventoryConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketInventoryConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketInventoryConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketLifecycleConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketLifecycleConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketLifecycleConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_lifecycle_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketLifecycleConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketLifecycleConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketLifecycleConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketLogging
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketLoggingInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketLogging
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_logging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketLogging,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketLogging
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketLogging,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketMetricsConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketMetricsConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketMetricsConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_metrics_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketMetricsConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketMetricsConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketMetricsConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketNotificationConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketNotificationConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketNotificationConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_notification_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketNotificationConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketNotificationConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketNotificationConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketOwnershipControls
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketOwnershipControlsInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketOwnershipControls
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_ownership_controls, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketOwnershipControls,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketOwnershipControls
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketOwnershipControls,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketPolicy
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketPolicyInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketPolicy
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_policy, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketPolicy,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketPolicy
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketPolicy,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketReplication
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketReplicationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketReplication
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_replication, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketReplication,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketReplication
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketReplication,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketRequestPayment
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketRequestPaymentInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketRequestPayment
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_request_payment, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketRequestPayment,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketRequestPayment
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketRequestPayment,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketTagging
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketTaggingInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketTagging
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_tagging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketTagging,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketTagging
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketTagging,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketVersioning
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketVersioningInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketVersioning
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_versioning, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketVersioning,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketVersioning
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketVersioning,
          stubs: stubs
        )
        stack
      end
    end

    class PutBucketWebsite
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutBucketWebsiteInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutBucketWebsite
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_bucket_website, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutBucketWebsite,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutBucketWebsite
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutBucketWebsite,
          stubs: stubs
        )
        stack
      end
    end

    class PutObject
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutObjectInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutObject
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_object, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          streaming: true,
          request_checksum_required: false,
          signed_streaming: true,
          require_decoded_content_length: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutObject,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutObject
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutObject,
          stubs: stubs
        )
        stack
      end
    end

    class PutObjectAcl
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutObjectAclInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutObjectAcl
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_object_acl, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutObjectAcl,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
            errors: [Errors::NoSuchKey]
          ),
          data_parser: Parsers::PutObjectAcl
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::NoSuchKey],
          stub_data_class: Stubs::PutObjectAcl,
          stubs: stubs
        )
        stack
      end
    end

    class PutObjectLegalHold
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutObjectLegalHoldInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutObjectLegalHold
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_object_legal_hold, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutObjectLegalHold,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutObjectLegalHold
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutObjectLegalHold,
          stubs: stubs
        )
        stack
      end
    end

    class PutObjectLockConfiguration
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutObjectLockConfigurationInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutObjectLockConfiguration
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_object_lock_configuration, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutObjectLockConfiguration,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutObjectLockConfiguration
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutObjectLockConfiguration,
          stubs: stubs
        )
        stack
      end
    end

    class PutObjectRetention
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutObjectRetentionInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutObjectRetention
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_object_retention, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutObjectRetention,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutObjectRetention
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutObjectRetention,
          stubs: stubs
        )
        stack
      end
    end

    class PutObjectTagging
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutObjectTaggingInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutObjectTagging
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_object_tagging, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutObjectTagging,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutObjectTagging
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutObjectTagging,
          stubs: stubs
        )
        stack
      end
    end

    class PutPublicAccessBlock
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::PutPublicAccessBlockInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutPublicAccessBlock
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_public_access_block, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::PutPublicAccessBlock,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::PutPublicAccessBlock
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::PutPublicAccessBlock,
          stubs: stubs
        )
        stack
      end
    end

    class RestoreObject
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::RestoreObjectInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::RestoreObject
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :restore_object, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          request_checksum_required: false
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::RestoreObject,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
            errors: [Errors::ObjectAlreadyInActiveTierError]
          ),
          data_parser: Parsers::RestoreObject
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [Stubs::ObjectAlreadyInActiveTierError],
          stub_data_class: Stubs::RestoreObject,
          stubs: stubs
        )
        stack
      end
    end

    class UploadPart
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UploadPartInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UploadPart
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :upload_part, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(AWS::SDK::Core::Middleware::Checksum,
          request_algorithm_member: :checksum_algorithm,
          streaming: true,
          request_checksum_required: false,
          signed_streaming: true,
          require_decoded_content_length: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::UploadPart,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::UploadPart
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::UploadPart,
          stubs: stubs
        )
        stack
      end
    end

    class UploadPartCopy
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::UploadPartCopyInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UploadPartCopy
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :upload_part_copy, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::UploadPartCopy,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
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
          data_parser: Parsers::UploadPartCopy
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::UploadPartCopy,
          stubs: stubs
        )
        stack
      end
    end

    class WriteGetObjectResponse
      def self.build(config, stubs)
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validator: Validators::WriteGetObjectResponseInput,
          validate_input: config.validate_input
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::WriteGetObjectResponse
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :write_get_object_response, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Credentials => config.credential_provider
        )
        stack.use(Hearth::Middleware::Endpoint,
          use_accelerate_endpoint: config.use_accelerate_endpoint,
          endpoint_resolver: config.endpoint_resolver,
          use_fips_endpoint: config.use_fips_endpoint,
          force_path_style: config.force_path_style,
          disable_multiregion_access_points: config.disable_multiregion_access_points,
          disable_multi_region_access_points: config.disable_multi_region_access_points,
          param_builder: Endpoint::Parameters::WriteGetObjectResponse,
          endpoint: config.endpoint,
          disable_s3_express_session_auth: config.disable_s3_express_session_auth,
          accelerate: config.accelerate,
          use_arn_region: config.use_arn_region,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint
        )
        stack.use(Hearth::Middleware::HostPrefix,
          host_prefix: "{request_route}.",
          disable_host_prefix: config.disable_host_prefix
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
          data_parser: Parsers::WriteGetObjectResponse
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          stub_responses: config.stub_responses,
          client: config.http_client,
          stub_error_classes: [],
          stub_data_class: Stubs::WriteGetObjectResponse,
          stubs: stubs
        )
        stack
      end
    end

  end
end
