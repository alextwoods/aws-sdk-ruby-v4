# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Kinesis
  # @api private
  module Middleware

    class AddTagsToStream
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::AddTagsToStreamInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::AddTagsToStream
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :add_tags_to_stream, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::AddTagsToStream,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::AddTagsToStream,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::AddTagsToStream,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class CreateStream
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::CreateStreamInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::CreateStream
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :create_stream, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::CreateStream,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::CreateStream,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::CreateStream,
          stub_error_classes: [Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceInUseException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DecreaseStreamRetentionPeriod
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DecreaseStreamRetentionPeriodInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DecreaseStreamRetentionPeriod
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :decrease_stream_retention_period, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DecreaseStreamRetentionPeriod,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DecreaseStreamRetentionPeriod,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DecreaseStreamRetentionPeriod,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteResourcePolicy
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteResourcePolicyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteResourcePolicy
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_resource_policy, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteResourcePolicy,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteResourcePolicy,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteResourcePolicy,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeleteStream
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteStreamInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteStream
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_stream, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteStream,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeleteStream,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteStream,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DeregisterStreamConsumer
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeregisterStreamConsumerInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeregisterStreamConsumer
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :deregister_stream_consumer, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeregisterStreamConsumer,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DeregisterStreamConsumer,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeregisterStreamConsumer,
          stub_error_classes: [Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeLimits
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeLimitsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeLimits
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_limits, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeLimits,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DescribeLimits,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::LimitExceededException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DescribeLimits,
          stub_error_classes: [Stubs::LimitExceededException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeStream
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeStreamInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeStream
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_stream, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeStream,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DescribeStream,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DescribeStream,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeStreamConsumer
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeStreamConsumerInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeStreamConsumer
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_stream_consumer, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeStreamConsumer,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DescribeStreamConsumer,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DescribeStreamConsumer,
          stub_error_classes: [Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DescribeStreamSummary
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DescribeStreamSummaryInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DescribeStreamSummary
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :describe_stream_summary, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DescribeStreamSummary,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DescribeStreamSummary,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DescribeStreamSummary,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class DisableEnhancedMonitoring
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DisableEnhancedMonitoringInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DisableEnhancedMonitoring
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :disable_enhanced_monitoring, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DisableEnhancedMonitoring,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::DisableEnhancedMonitoring,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DisableEnhancedMonitoring,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class EnableEnhancedMonitoring
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::EnableEnhancedMonitoringInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::EnableEnhancedMonitoring
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :enable_enhanced_monitoring, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::EnableEnhancedMonitoring,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::EnableEnhancedMonitoring,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::EnableEnhancedMonitoring,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetRecords
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetRecordsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetRecords
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_records, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetRecords,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetRecords,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::KMSAccessDeniedException, Errors::KMSDisabledException, Errors::AccessDeniedException, Errors::KMSNotFoundException, Errors::ExpiredIteratorException, Errors::KMSOptInRequired, Errors::KMSThrottlingException, Errors::ProvisionedThroughputExceededException, Errors::InvalidArgumentException, Errors::KMSInvalidStateException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetRecords,
          stub_error_classes: [Stubs::KMSAccessDeniedException, Stubs::KMSDisabledException, Stubs::AccessDeniedException, Stubs::KMSNotFoundException, Stubs::ExpiredIteratorException, Stubs::KMSOptInRequired, Stubs::KMSThrottlingException, Stubs::ProvisionedThroughputExceededException, Stubs::InvalidArgumentException, Stubs::KMSInvalidStateException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetResourcePolicy
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetResourcePolicyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetResourcePolicy
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_resource_policy, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetResourcePolicy,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetResourcePolicy,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetResourcePolicy,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetShardIterator
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetShardIteratorInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetShardIterator
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_shard_iterator, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetShardIterator,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::GetShardIterator,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ProvisionedThroughputExceededException, Errors::InvalidArgumentException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetShardIterator,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ProvisionedThroughputExceededException, Stubs::InvalidArgumentException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class IncreaseStreamRetentionPeriod
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::IncreaseStreamRetentionPeriodInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::IncreaseStreamRetentionPeriod
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :increase_stream_retention_period, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::IncreaseStreamRetentionPeriod,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::IncreaseStreamRetentionPeriod,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::IncreaseStreamRetentionPeriod,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListShards
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListShardsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListShards
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_shards, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListShards,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListShards,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ExpiredNextTokenException, Errors::InvalidArgumentException, Errors::ResourceInUseException, Errors::LimitExceededException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListShards,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ExpiredNextTokenException, Stubs::InvalidArgumentException, Stubs::ResourceInUseException, Stubs::LimitExceededException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListStreamConsumers
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListStreamConsumersInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListStreamConsumers
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_stream_consumers, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListStreamConsumers,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListStreamConsumers,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::ExpiredNextTokenException, Errors::InvalidArgumentException, Errors::ResourceInUseException, Errors::LimitExceededException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListStreamConsumers,
          stub_error_classes: [Stubs::ExpiredNextTokenException, Stubs::InvalidArgumentException, Stubs::ResourceInUseException, Stubs::LimitExceededException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListStreams
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListStreamsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListStreams
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_streams, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListStreams,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListStreams,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::ExpiredNextTokenException, Errors::InvalidArgumentException, Errors::LimitExceededException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListStreams,
          stub_error_classes: [Stubs::ExpiredNextTokenException, Stubs::InvalidArgumentException, Stubs::LimitExceededException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class ListTagsForStream
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::ListTagsForStreamInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::ListTagsForStream
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :list_tags_for_stream, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::ListTagsForStream,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::ListTagsForStream,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::ListTagsForStream,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class MergeShards
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::MergeShardsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::MergeShards
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :merge_shards, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::MergeShards,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::MergeShards,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::MergeShards,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutRecord
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutRecordInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutRecord
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_record, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::PutRecord,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutRecord,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::KMSAccessDeniedException, Errors::KMSDisabledException, Errors::AccessDeniedException, Errors::KMSNotFoundException, Errors::KMSOptInRequired, Errors::KMSThrottlingException, Errors::ProvisionedThroughputExceededException, Errors::InvalidArgumentException, Errors::KMSInvalidStateException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutRecord,
          stub_error_classes: [Stubs::KMSAccessDeniedException, Stubs::KMSDisabledException, Stubs::AccessDeniedException, Stubs::KMSNotFoundException, Stubs::KMSOptInRequired, Stubs::KMSThrottlingException, Stubs::ProvisionedThroughputExceededException, Stubs::InvalidArgumentException, Stubs::KMSInvalidStateException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutRecords
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutRecordsInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutRecords
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_records, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::PutRecords,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutRecords,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::KMSAccessDeniedException, Errors::KMSDisabledException, Errors::AccessDeniedException, Errors::KMSNotFoundException, Errors::KMSOptInRequired, Errors::KMSThrottlingException, Errors::ProvisionedThroughputExceededException, Errors::InvalidArgumentException, Errors::KMSInvalidStateException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutRecords,
          stub_error_classes: [Stubs::KMSAccessDeniedException, Stubs::KMSDisabledException, Stubs::AccessDeniedException, Stubs::KMSNotFoundException, Stubs::KMSOptInRequired, Stubs::KMSThrottlingException, Stubs::ProvisionedThroughputExceededException, Stubs::InvalidArgumentException, Stubs::KMSInvalidStateException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutResourcePolicy
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutResourcePolicyInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutResourcePolicy
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_resource_policy, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::PutResourcePolicy,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::PutResourcePolicy,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutResourcePolicy,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class RegisterStreamConsumer
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::RegisterStreamConsumerInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::RegisterStreamConsumer
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :register_stream_consumer, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::RegisterStreamConsumer,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::RegisterStreamConsumer,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidArgumentException, Errors::ResourceInUseException, Errors::LimitExceededException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::RegisterStreamConsumer,
          stub_error_classes: [Stubs::InvalidArgumentException, Stubs::ResourceInUseException, Stubs::LimitExceededException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class RemoveTagsFromStream
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::RemoveTagsFromStreamInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::RemoveTagsFromStream
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :remove_tags_from_stream, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::RemoveTagsFromStream,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::RemoveTagsFromStream,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::RemoveTagsFromStream,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class SplitShard
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::SplitShardInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::SplitShard
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :split_shard, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::SplitShard,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::SplitShard,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::SplitShard,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class StartStreamEncryption
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::StartStreamEncryptionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::StartStreamEncryption
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :start_stream_encryption, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::StartStreamEncryption,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::StartStreamEncryption,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::KMSAccessDeniedException, Errors::KMSDisabledException, Errors::KMSInvalidStateException, Errors::KMSNotFoundException, Errors::KMSOptInRequired, Errors::KMSThrottlingException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::StartStreamEncryption,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::KMSAccessDeniedException, Stubs::KMSDisabledException, Stubs::KMSInvalidStateException, Stubs::KMSNotFoundException, Stubs::KMSOptInRequired, Stubs::KMSThrottlingException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class StopStreamEncryption
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::StopStreamEncryptionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::StopStreamEncryption
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :stop_stream_encryption, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::StopStreamEncryption,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::StopStreamEncryption,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::StopStreamEncryption,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class SubscribeToShard
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::SubscribeToShardInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::SubscribeToShard
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :subscribe_to_shard, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::EventStreams,
          async_output_class: Hearth::EventStream::AsyncOutput,
          event_handler: options[:event_stream_handler],
          message_encoding_module: Hearth::EventStream::Binary,
          request_events: false,
          response_events: true
        )
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::SubscribeToShard,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http2_client,
          stub_data_class: Stubs::SubscribeToShard,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InvalidArgumentException, Stubs::ResourceInUseException, Stubs::LimitExceededException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateShardCount
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateShardCountInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateShardCount
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_shard_count, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateShardCount,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::UpdateShardCount,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ValidationException, Errors::InvalidArgumentException, Errors::ResourceInUseException, Errors::LimitExceededException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::UpdateShardCount,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ValidationException, Stubs::InvalidArgumentException, Stubs::ResourceInUseException, Stubs::LimitExceededException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class UpdateStreamMode
      def self.build(config, options = {})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::UpdateStreamModeInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::UpdateStreamMode
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :update_stream_mode, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::UpdateStreamMode,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::Middleware::Sign,
          event_stream: false
        )
        stack.use(Hearth::Middleware::Parse,
          data_parser: Parsers::UpdateStreamMode,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::InvalidArgumentException, Errors::LimitExceededException, Errors::ResourceInUseException, Errors::ResourceNotFoundException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::UpdateStreamMode,
          stub_error_classes: [Stubs::InvalidArgumentException, Stubs::LimitExceededException, Stubs::ResourceInUseException, Stubs::ResourceNotFoundException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

  end
end
