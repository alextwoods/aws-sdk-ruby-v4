# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::LexRuntimeV2
  # @api private
  module Middleware

    class DeleteSession
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::DeleteSessionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::DeleteSession
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :delete_session, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::DeleteSession,
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
          data_parser: Parsers::DeleteSession,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::ConflictException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::DeleteSession,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::ConflictException, Stubs::InternalServerException, Stubs::ResourceNotFoundException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class GetSession
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::GetSessionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::GetSession
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :get_session, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::GetSession,
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
          data_parser: Parsers::GetSession,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::GetSession,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InternalServerException, Stubs::ResourceNotFoundException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class PutSession
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::PutSessionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::PutSession
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :put_session, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::PutSession,
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
          data_parser: Parsers::PutSession,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::BadGatewayException, Errors::ConflictException, Errors::DependencyFailedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::PutSession,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::BadGatewayException, Stubs::ConflictException, Stubs::DependencyFailedException, Stubs::InternalServerException, Stubs::ResourceNotFoundException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class RecognizeText
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::RecognizeTextInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::RecognizeText
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :recognize_text, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::RecognizeText,
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
          data_parser: Parsers::RecognizeText,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::BadGatewayException, Errors::ConflictException, Errors::DependencyFailedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::RecognizeText,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::BadGatewayException, Stubs::ConflictException, Stubs::DependencyFailedException, Stubs::InternalServerException, Stubs::ResourceNotFoundException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class RecognizeUtterance
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::RecognizeUtteranceInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::RecognizeUtterance
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :recognize_utterance, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::RecognizeUtterance,
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
          data_parser: Parsers::RecognizeUtterance,
          error_parser: Hearth::HTTP::ErrorParser.new(
            error_module: Errors,
            success_status: 200,
            errors: [Errors::AccessDeniedException, Errors::BadGatewayException, Errors::ConflictException, Errors::DependencyFailedException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ThrottlingException, Errors::ValidationException]
          )
        )
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http_client,
          stub_data_class: Stubs::RecognizeUtterance,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::BadGatewayException, Stubs::ConflictException, Stubs::DependencyFailedException, Stubs::InternalServerException, Stubs::ResourceNotFoundException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class StartConversation
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::StartConversationInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::StartConversation
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :start_conversation, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::EventStream::Middleware::Handlers,
          async_output_class: EventStream::StartConversationRequestEventStreamOutput,
          event_handler: options[:event_stream_handler],
          message_encoding_module: Hearth::EventStream::Binary,
          request_events: true,
          response_events: true
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::StartConversation,
          region: config.region,
          use_dualstack_endpoint: config.use_dualstack_endpoint,
          use_fips_endpoint: config.use_fips_endpoint
        )
        stack.use(Hearth::Middleware::Retry,
          error_inspector_class: Hearth::HTTP::ErrorInspector,
          retry_strategy: config.retry_strategy
        )
        stack.use(Hearth::EventStream::Middleware::Sign)
        stack.use(Middleware::RequestId)
        stack.use(Hearth::Middleware::Send,
          client: config.http2_client,
          stub_data_class: Stubs::StartConversation,
          stub_error_classes: [Stubs::AccessDeniedException, Stubs::InternalServerException, Stubs::ThrottlingException, Stubs::ValidationException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

  end
end
