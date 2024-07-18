# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::TranscribeStreaming
  # @api private
  module Middleware

    class StartCallAnalyticsStreamTranscription
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::StartCallAnalyticsStreamTranscriptionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::StartCallAnalyticsStreamTranscription
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :start_call_analytics_stream_transcription, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::EventStream::Middleware::Handlers,
          async_output_class: EventStream::StartCallAnalyticsStreamTranscriptionOutput,
          event_handler: options[:event_stream_handler],
          message_encoding_module: Hearth::EventStream::Binary,
          request_events: true,
          response_events: true
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::StartCallAnalyticsStreamTranscription,
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
          stub_data_class: Stubs::StartCallAnalyticsStreamTranscription,
          stub_error_classes: [Stubs::BadRequestException, Stubs::ConflictException, Stubs::InternalFailureException, Stubs::LimitExceededException, Stubs::ServiceUnavailableException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class StartMedicalStreamTranscription
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::StartMedicalStreamTranscriptionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::StartMedicalStreamTranscription
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :start_medical_stream_transcription, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::EventStream::Middleware::Handlers,
          async_output_class: EventStream::StartMedicalStreamTranscriptionOutput,
          event_handler: options[:event_stream_handler],
          message_encoding_module: Hearth::EventStream::Binary,
          request_events: true,
          response_events: true
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::StartMedicalStreamTranscription,
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
          stub_data_class: Stubs::StartMedicalStreamTranscription,
          stub_error_classes: [Stubs::BadRequestException, Stubs::ConflictException, Stubs::InternalFailureException, Stubs::LimitExceededException, Stubs::ServiceUnavailableException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

    class StartStreamTranscription
      def self.build(config, options={})
        stack = Hearth::MiddlewareStack.new
        stack.use(Hearth::Middleware::Initialize)
        stack.use(Hearth::Middleware::Validate,
          validate_input: config.validate_input,
          validator: Validators::StartStreamTranscriptionInput
        )
        stack.use(Hearth::Middleware::Build,
          builder: Builders::StartStreamTranscription
        )
        stack.use(Hearth::Middleware::Auth,
          auth_params: Auth::Params.new(operation_name: :start_stream_transcription, region: config.region),
          auth_resolver: config.auth_resolver,
          auth_schemes: config.auth_schemes,
          AWS::SDK::Core::Identities::Credentials => config.credentials_provider
        )
        stack.use(Hearth::EventStream::Middleware::Handlers,
          async_output_class: EventStream::StartStreamTranscriptionOutput,
          event_handler: options[:event_stream_handler],
          message_encoding_module: Hearth::EventStream::Binary,
          request_events: true,
          response_events: true
        )
        stack.use(Hearth::HTTP::Middleware::ContentLength)
        stack.use(Hearth::Middleware::Endpoint,
          endpoint: config.endpoint,
          endpoint_resolver: config.endpoint_resolver,
          param_builder: Endpoint::Parameters::StartStreamTranscription,
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
          stub_data_class: Stubs::StartStreamTranscription,
          stub_error_classes: [Stubs::BadRequestException, Stubs::ConflictException, Stubs::InternalFailureException, Stubs::LimitExceededException, Stubs::ServiceUnavailableException],
          stub_responses: config.stub_responses,
          stubs: config.stubs
        )
        stack
      end
    end

  end
end
