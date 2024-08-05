# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'plugins/global_config'

module AWS::SDK::TranscribeStreaming
  # <p>Amazon Transcribe streaming offers three main types of real-time transcription:
  #       <b>Standard</b>, <b>Medical</b>, and
  #       <b>Call Analytics</b>.</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <b>Standard transcriptions</b> are the most common option. Refer
  #       to  for details.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Medical transcriptions</b> are tailored to medical professionals
  #       and incorporate medical terms. A common use case for this service is transcribing doctor-patient
  #       dialogue in real time, so doctors can focus on their patient instead of taking notes. Refer to
  #        for details.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <b>Call Analytics transcriptions</b> are designed for use with call
  #           center audio on two different channels; if you're looking for insight into customer service calls, use this
  #           option. Refer to  for details.</p>
  #             </li>
  #          </ul>
  class Client < Hearth::Client

    # @api private
    @plugins = Hearth::PluginList.new([
      Plugins::GlobalConfig.new
    ])

    # @param [Hash] options
    #   Options used to construct an instance of {Config}
    def initialize(options = {})
      super(options, Config)
    end

    # @return [Config] config
    attr_reader :config

    # <p>Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to
    #       Amazon Transcribe and the transcription results are streamed to your application. Use this operation
    #       for <a href="https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html">Call Analytics</a> transcriptions.</p>
    #          <p>The following parameters are required:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>language-code</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>media-encoding</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>sample-rate</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information on streaming with Amazon Transcribe, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    # @param [Hash | Types::StartCallAnalyticsStreamTranscriptionInput] params
    #   Request parameters for this operation.
    #   See {Types::StartCallAnalyticsStreamTranscriptionInput#initialize} for available parameters.
    #   Do not set values for the event stream member(`call_analytics_transcript_result_stream`).
    #   Instead use the returned output to signal input events.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @option options [EventStream::StartCallAnalyticsStreamTranscriptionHandler] :event_stream_handler
    #   Event Stream Handler used to register handlers that will be called when events are received.
    # @return [EventStream::StartCallAnalyticsStreamTranscriptionOutput]
    #   An open stream that supports sending (signaling) input events to the service.
    # @example Request syntax with placeholder values and registering an event handler
    #   handler = StartCallAnalyticsStreamTranscriptionHandler.new
    #   handler.on_initial_response { |event| process_initial_response(event) }
    #   stream = client.start_call_analytics_stream_transcription({
    #     language_code: 'en-US', # required - accepts ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"]
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: 'pcm', # required - accepts ["pcm", "ogg-opus", "flac"]
    #     vocabulary_name: 'VocabularyName',
    #     session_id: 'SessionId',
    #     vocabulary_filter_name: 'VocabularyFilterName',
    #     vocabulary_filter_method: 'remove', # accepts ["remove", "mask", "tag"]
    #     language_model_name: 'LanguageModelName',
    #     enable_partial_results_stabilization: false,
    #     partial_results_stability: 'high', # accepts ["high", "medium", "low"]
    #     content_identification_type: 'PII', # accepts ["PII"]
    #     content_redaction_type: 'PII', # accepts ["PII"]
    #     pii_entity_types: 'PiiEntityTypes'
    #   }, event_stream_handler: handler)
    # @example Sending input events with placeholder values
    #   stream = client.start_call_analytics_stream_transcription(params)
    #   # send (signal) input events
    #   stream.signal_audio_event(
    #     audio_chunk: 'AudioChunk'
    #   )
    #
    #   stream.signal_configuration_event(
    #     channel_definitions: [
    #       {
    #         channel_id: 1, # required
    #         participant_role: 'AGENT' # required - accepts ["AGENT", "CUSTOMER"]
    #       }
    #     ],
    #     post_call_analytics_settings: {
    #       output_location: 'OutputLocation', # required
    #       data_access_role_arn: 'DataAccessRoleArn', # required
    #       content_redaction_output: 'redacted', # accepts ["redacted", "redacted_and_unredacted"]
    #       output_encryption_kms_key_id: 'OutputEncryptionKMSKeyId'
    #     }
    #   )
    def start_call_analytics_stream_transcription(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      middleware_opts[:event_stream_handler] = options.delete(:event_stream_handler)
      raise ArgumentError, 'Missing `event_stream_handler`' unless middleware_opts[:event_stream_handler]
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.transcribestreaming.client')
      input = Params::StartCallAnalyticsStreamTranscriptionInput.build(params, context: 'params')
      stack = AWS::SDK::TranscribeStreaming::Middleware::StartCallAnalyticsStreamTranscription.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP2::Request.new(uri: URI('')),
        response: Hearth::HTTP2::Response.new(body: response_body),
        config: config,
        operation_name: :start_call_analytics_stream_transcription,
        tracer: tracer
      )
      Telemetry::StartCallAnalyticsStreamTranscription.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_call_analytics_stream_transcription] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#start_call_analytics_stream_transcription] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_call_analytics_stream_transcription] #{output.data}")
        output
      end
    end

    # <p>Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to
    #             Amazon Transcribe Medical and the transcription results are streamed to your
    #             application.</p>
    #          <p>The following parameters are required:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>language-code</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>media-encoding</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>sample-rate</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information on streaming with Amazon Transcribe Medical, see
    #             <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing
    #                 streaming audio</a>.</p>
    # @param [Hash | Types::StartMedicalStreamTranscriptionInput] params
    #   Request parameters for this operation.
    #   See {Types::StartMedicalStreamTranscriptionInput#initialize} for available parameters.
    #   Do not set values for the event stream member(`transcript_result_stream`).
    #   Instead use the returned output to signal input events.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @option options [EventStream::StartMedicalStreamTranscriptionHandler] :event_stream_handler
    #   Event Stream Handler used to register handlers that will be called when events are received.
    # @return [EventStream::StartMedicalStreamTranscriptionOutput]
    #   An open stream that supports sending (signaling) input events to the service.
    # @example Request syntax with placeholder values and registering an event handler
    #   handler = StartMedicalStreamTranscriptionHandler.new
    #   handler.on_initial_response { |event| process_initial_response(event) }
    #   stream = client.start_medical_stream_transcription({
    #     language_code: 'en-US', # required - accepts ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: 'pcm', # required - accepts ["pcm", "ogg-opus", "flac"]
    #     vocabulary_name: 'VocabularyName',
    #     specialty: 'PRIMARYCARE', # required - accepts ["PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"]
    #     type: 'CONVERSATION', # required - accepts ["CONVERSATION", "DICTATION"]
    #     show_speaker_label: false,
    #     session_id: 'SessionId',
    #     enable_channel_identification: false,
    #     number_of_channels: 1,
    #     content_identification_type: 'PHI' # accepts ["PHI"]
    #   }, event_stream_handler: handler)
    # @example Sending input events with placeholder values
    #   stream = client.start_medical_stream_transcription(params)
    #   # send (signal) input events
    #   stream.signal_audio_event(
    #     audio_chunk: 'AudioChunk'
    #   )
    #
    #   stream.signal_configuration_event(
    #     channel_definitions: [
    #       {
    #         channel_id: 1, # required
    #         participant_role: 'AGENT' # required - accepts ["AGENT", "CUSTOMER"]
    #       }
    #     ],
    #     post_call_analytics_settings: {
    #       output_location: 'OutputLocation', # required
    #       data_access_role_arn: 'DataAccessRoleArn', # required
    #       content_redaction_output: 'redacted', # accepts ["redacted", "redacted_and_unredacted"]
    #       output_encryption_kms_key_id: 'OutputEncryptionKMSKeyId'
    #     }
    #   )
    def start_medical_stream_transcription(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      middleware_opts[:event_stream_handler] = options.delete(:event_stream_handler)
      raise ArgumentError, 'Missing `event_stream_handler`' unless middleware_opts[:event_stream_handler]
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.transcribestreaming.client')
      input = Params::StartMedicalStreamTranscriptionInput.build(params, context: 'params')
      stack = AWS::SDK::TranscribeStreaming::Middleware::StartMedicalStreamTranscription.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP2::Request.new(uri: URI('')),
        response: Hearth::HTTP2::Response.new(body: response_body),
        config: config,
        operation_name: :start_medical_stream_transcription,
        tracer: tracer
      )
      Telemetry::StartMedicalStreamTranscription.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_medical_stream_transcription] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#start_medical_stream_transcription] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_medical_stream_transcription] #{output.data}")
        output
      end
    end

    # <p>Starts a bidirectional HTTP/2 or WebSocket stream where audio is streamed to
    #       Amazon Transcribe and the transcription results are streamed to your application.</p>
    #          <p>The following parameters are required:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>language-code</code> or <code>identify-language</code> or <code>identify-multiple-language</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>media-encoding</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>sample-rate</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>For more information on streaming with Amazon Transcribe, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/streaming.html">Transcribing streaming audio</a>.</p>
    # @param [Hash | Types::StartStreamTranscriptionInput] params
    #   Request parameters for this operation.
    #   See {Types::StartStreamTranscriptionInput#initialize} for available parameters.
    #   Do not set values for the event stream member(`transcript_result_stream`).
    #   Instead use the returned output to signal input events.
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @option options [EventStream::StartStreamTranscriptionHandler] :event_stream_handler
    #   Event Stream Handler used to register handlers that will be called when events are received.
    # @return [EventStream::StartStreamTranscriptionOutput]
    #   An open stream that supports sending (signaling) input events to the service.
    # @example Request syntax with placeholder values and registering an event handler
    #   handler = StartStreamTranscriptionHandler.new
    #   handler.on_initial_response { |event| process_initial_response(event) }
    #   stream = client.start_stream_transcription({
    #     language_code: 'en-US', # accepts ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: 'pcm', # required - accepts ["pcm", "ogg-opus", "flac"]
    #     vocabulary_name: 'VocabularyName',
    #     session_id: 'SessionId',
    #     vocabulary_filter_name: 'VocabularyFilterName',
    #     vocabulary_filter_method: 'remove', # accepts ["remove", "mask", "tag"]
    #     show_speaker_label: false,
    #     enable_channel_identification: false,
    #     number_of_channels: 1,
    #     enable_partial_results_stabilization: false,
    #     partial_results_stability: 'high', # accepts ["high", "medium", "low"]
    #     content_identification_type: 'PII', # accepts ["PII"]
    #     content_redaction_type: 'PII', # accepts ["PII"]
    #     pii_entity_types: 'PiiEntityTypes',
    #     language_model_name: 'LanguageModelName',
    #     identify_language: false,
    #     language_options: 'LanguageOptions',
    #     preferred_language: 'en-US', # accepts ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #     identify_multiple_languages: false,
    #     vocabulary_names: 'VocabularyNames',
    #     vocabulary_filter_names: 'VocabularyFilterNames'
    #   }, event_stream_handler: handler)
    # @example Sending input events with placeholder values
    #   stream = client.start_stream_transcription(params)
    #   # send (signal) input events
    #   stream.signal_audio_event(
    #     audio_chunk: 'AudioChunk'
    #   )
    #
    #   stream.signal_configuration_event(
    #     channel_definitions: [
    #       {
    #         channel_id: 1, # required
    #         participant_role: 'AGENT' # required - accepts ["AGENT", "CUSTOMER"]
    #       }
    #     ],
    #     post_call_analytics_settings: {
    #       output_location: 'OutputLocation', # required
    #       data_access_role_arn: 'DataAccessRoleArn', # required
    #       content_redaction_output: 'redacted', # accepts ["redacted", "redacted_and_unredacted"]
    #       output_encryption_kms_key_id: 'OutputEncryptionKMSKeyId'
    #     }
    #   )
    def start_stream_transcription(params = {}, options = {})
      response_body = ::StringIO.new
      middleware_opts = {}
      middleware_opts[:event_stream_handler] = options.delete(:event_stream_handler)
      raise ArgumentError, 'Missing `event_stream_handler`' unless middleware_opts[:event_stream_handler]
      config = operation_config(options)
      tracer = config.telemetry_provider.tracer_provider.tracer('aws.sdk.transcribestreaming.client')
      input = Params::StartStreamTranscriptionInput.build(params, context: 'params')
      stack = AWS::SDK::TranscribeStreaming::Middleware::StartStreamTranscription.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP2::Request.new(uri: URI('')),
        response: Hearth::HTTP2::Response.new(body: response_body),
        config: config,
        operation_name: :start_stream_transcription,
        tracer: tracer
      )
      Telemetry::StartStreamTranscription.in_span(context) do
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_stream_transcription] params: #{params}, options: #{options}")
        output = stack.run(input, context)
        if output.error
          context.config.logger.error("[#{context.invocation_id}] [#{self.class}#start_stream_transcription] #{output.error} (#{output.error.class})")
          raise output.error
        end
        context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_stream_transcription] #{output.data}")
        output
      end
    end
  end
end
