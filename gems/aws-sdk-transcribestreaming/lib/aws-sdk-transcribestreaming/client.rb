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
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.start_call_analytics_stream_transcription(
    #     language_code: 'en-US', # required - accepts ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"]
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: 'pcm', # required - accepts ["pcm", "ogg-opus", "flac"]
    #     vocabulary_name: 'VocabularyName',
    #     session_id: 'SessionId',
    #     audio_stream: {
    #       # One of:
    #       audio_event: {
    #         audio_chunk: 'AudioChunk'
    #       },
    #       configuration_event: {
    #         channel_definitions: [
    #           {
    #             channel_id: 1, # required
    #             participant_role: 'AGENT' # required - accepts ["AGENT", "CUSTOMER"]
    #           }
    #         ],
    #         post_call_analytics_settings: {
    #           output_location: 'OutputLocation', # required
    #           data_access_role_arn: 'DataAccessRoleArn', # required
    #           content_redaction_output: 'redacted', # accepts ["redacted", "redacted_and_unredacted"]
    #           output_encryption_kms_key_id: 'OutputEncryptionKMSKeyId'
    #         }
    #       }
    #     }, # required
    #     vocabulary_filter_name: 'VocabularyFilterName',
    #     vocabulary_filter_method: 'remove', # accepts ["remove", "mask", "tag"]
    #     language_model_name: 'LanguageModelName',
    #     enable_partial_results_stabilization: false,
    #     partial_results_stability: 'high', # accepts ["high", "medium", "low"]
    #     content_identification_type: 'PII', # accepts ["PII"]
    #     content_redaction_type: 'PII', # accepts ["PII"]
    #     pii_entity_types: 'PiiEntityTypes'
    #   )
    # @example Response structure
    #   resp.data #=> Types::StartCallAnalyticsStreamTranscriptionOutput
    #   resp.data.request_id #=> String
    #   resp.data.language_code #=> String, one of ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"]
    #   resp.data.media_sample_rate_hertz #=> Integer
    #   resp.data.media_encoding #=> String, one of ["pcm", "ogg-opus", "flac"]
    #   resp.data.vocabulary_name #=> String
    #   resp.data.session_id #=> String
    #   resp.data.call_analytics_transcript_result_stream #=> Types::CallAnalyticsTranscriptResultStream, one of [UtteranceEvent, CategoryEvent, BadRequestException, LimitExceededException, InternalFailureException, ConflictException, ServiceUnavailableException]
    #   resp.data.call_analytics_transcript_result_stream.utterance_event #=> Types::UtteranceEvent
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.utterance_id #=> String
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.is_partial #=> Boolean
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.participant_role #=> String, one of ["AGENT", "CUSTOMER"]
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.begin_offset_millis #=> Integer
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.end_offset_millis #=> Integer
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.transcript #=> String
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.items #=> Array<CallAnalyticsItem>
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.items[0] #=> Types::CallAnalyticsItem
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.items[0].begin_offset_millis #=> Integer
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.items[0].end_offset_millis #=> Integer
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.items[0].type #=> String, one of ["pronunciation", "punctuation"]
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.items[0].content #=> String
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.items[0].confidence #=> Float
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.items[0].vocabulary_filter_match #=> Boolean
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.items[0].stable #=> Boolean
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.entities #=> Array<CallAnalyticsEntity>
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.entities[0] #=> Types::CallAnalyticsEntity
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.entities[0].begin_offset_millis #=> Integer
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.entities[0].end_offset_millis #=> Integer
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.entities[0].category #=> String
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.entities[0].type #=> String
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.entities[0].content #=> String
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.entities[0].confidence #=> Float
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.sentiment #=> String, one of ["POSITIVE", "NEGATIVE", "MIXED", "NEUTRAL"]
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.issues_detected #=> Array<IssueDetected>
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.issues_detected[0] #=> Types::IssueDetected
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.issues_detected[0].character_offsets #=> Types::CharacterOffsets
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.issues_detected[0].character_offsets.begin #=> Integer
    #   resp.data.call_analytics_transcript_result_stream.utterance_event.issues_detected[0].character_offsets.end #=> Integer
    #   resp.data.call_analytics_transcript_result_stream.category_event #=> Types::CategoryEvent
    #   resp.data.call_analytics_transcript_result_stream.category_event.matched_categories #=> Array<String>
    #   resp.data.call_analytics_transcript_result_stream.category_event.matched_categories[0] #=> String
    #   resp.data.call_analytics_transcript_result_stream.category_event.matched_details #=> Hash<String, PointsOfInterest>
    #   resp.data.call_analytics_transcript_result_stream.category_event.matched_details['key'] #=> Types::PointsOfInterest
    #   resp.data.call_analytics_transcript_result_stream.category_event.matched_details['key'].timestamp_ranges #=> Array<TimestampRange>
    #   resp.data.call_analytics_transcript_result_stream.category_event.matched_details['key'].timestamp_ranges[0] #=> Types::TimestampRange
    #   resp.data.call_analytics_transcript_result_stream.category_event.matched_details['key'].timestamp_ranges[0].begin_offset_millis #=> Integer
    #   resp.data.call_analytics_transcript_result_stream.category_event.matched_details['key'].timestamp_ranges[0].end_offset_millis #=> Integer
    #   resp.data.call_analytics_transcript_result_stream.bad_request_exception #=> Types::BadRequestException
    #   resp.data.call_analytics_transcript_result_stream.bad_request_exception.message #=> String
    #   resp.data.call_analytics_transcript_result_stream.limit_exceeded_exception #=> Types::LimitExceededException
    #   resp.data.call_analytics_transcript_result_stream.limit_exceeded_exception.message #=> String
    #   resp.data.call_analytics_transcript_result_stream.internal_failure_exception #=> Types::InternalFailureException
    #   resp.data.call_analytics_transcript_result_stream.internal_failure_exception.message #=> String
    #   resp.data.call_analytics_transcript_result_stream.conflict_exception #=> Types::ConflictException
    #   resp.data.call_analytics_transcript_result_stream.conflict_exception.message #=> String
    #   resp.data.call_analytics_transcript_result_stream.service_unavailable_exception #=> Types::ServiceUnavailableException
    #   resp.data.call_analytics_transcript_result_stream.service_unavailable_exception.message #=> String
    #   resp.data.vocabulary_filter_name #=> String
    #   resp.data.vocabulary_filter_method #=> String, one of ["remove", "mask", "tag"]
    #   resp.data.language_model_name #=> String
    #   resp.data.enable_partial_results_stabilization #=> Boolean
    #   resp.data.partial_results_stability #=> String, one of ["high", "medium", "low"]
    #   resp.data.content_identification_type #=> String, one of ["PII"]
    #   resp.data.content_redaction_type #=> String, one of ["PII"]
    #   resp.data.pii_entity_types #=> String
    def start_call_analytics_stream_transcription(params = {}, options = {})
      middleware_opts = {}
      middleware_opts[:event_stream_handler] = options.delete(:event_stream_handler)
      raise ArgumentError, 'Missing `event_stream_handler`' unless middleware_opts[:event_stream_handler]
      response_body = ::StringIO.new
      config = operation_config(options)
      input = Params::StartCallAnalyticsStreamTranscriptionInput.build(params, context: 'params')
      stack = AWS::SDK::TranscribeStreaming::Middleware::StartCallAnalyticsStreamTranscription.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP2::Request.new(uri: URI('')),
        response: Hearth::HTTP2::Response.new(body: response_body),
        config: config,
        operation_name: :start_call_analytics_stream_transcription,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_call_analytics_stream_transcription] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#start_call_analytics_stream_transcription] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_call_analytics_stream_transcription] #{output.data}")
      output
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
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.start_medical_stream_transcription(
    #     language_code: 'en-US', # required - accepts ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: 'pcm', # required - accepts ["pcm", "ogg-opus", "flac"]
    #     vocabulary_name: 'VocabularyName',
    #     specialty: 'PRIMARYCARE', # required - accepts ["PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"]
    #     type: 'CONVERSATION', # required - accepts ["CONVERSATION", "DICTATION"]
    #     show_speaker_label: false,
    #     session_id: 'SessionId',
    #     audio_stream: {
    #       # One of:
    #       audio_event: {
    #         audio_chunk: 'AudioChunk'
    #       },
    #       configuration_event: {
    #         channel_definitions: [
    #           {
    #             channel_id: 1, # required
    #             participant_role: 'AGENT' # required - accepts ["AGENT", "CUSTOMER"]
    #           }
    #         ],
    #         post_call_analytics_settings: {
    #           output_location: 'OutputLocation', # required
    #           data_access_role_arn: 'DataAccessRoleArn', # required
    #           content_redaction_output: 'redacted', # accepts ["redacted", "redacted_and_unredacted"]
    #           output_encryption_kms_key_id: 'OutputEncryptionKMSKeyId'
    #         }
    #       }
    #     }, # required
    #     enable_channel_identification: false,
    #     number_of_channels: 1,
    #     content_identification_type: 'PHI' # accepts ["PHI"]
    #   )
    # @example Response structure
    #   resp.data #=> Types::StartMedicalStreamTranscriptionOutput
    #   resp.data.request_id #=> String
    #   resp.data.language_code #=> String, one of ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #   resp.data.media_sample_rate_hertz #=> Integer
    #   resp.data.media_encoding #=> String, one of ["pcm", "ogg-opus", "flac"]
    #   resp.data.vocabulary_name #=> String
    #   resp.data.specialty #=> String, one of ["PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"]
    #   resp.data.type #=> String, one of ["CONVERSATION", "DICTATION"]
    #   resp.data.show_speaker_label #=> Boolean
    #   resp.data.session_id #=> String
    #   resp.data.transcript_result_stream #=> Types::MedicalTranscriptResultStream, one of [TranscriptEvent, BadRequestException, LimitExceededException, InternalFailureException, ConflictException, ServiceUnavailableException]
    #   resp.data.transcript_result_stream.transcript_event #=> Types::MedicalTranscriptEvent
    #   resp.data.transcript_result_stream.transcript_event.transcript #=> Types::MedicalTranscript
    #   resp.data.transcript_result_stream.transcript_event.transcript.results #=> Array<MedicalResult>
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0] #=> Types::MedicalResult
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].result_id #=> String
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].start_time #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].end_time #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].is_partial #=> Boolean
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives #=> Array<MedicalAlternative>
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0] #=> Types::MedicalAlternative
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].transcript #=> String
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items #=> Array<MedicalItem>
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0] #=> Types::MedicalItem
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0].start_time #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0].end_time #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0].type #=> String, one of ["pronunciation", "punctuation"]
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0].content #=> String
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0].confidence #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0].speaker #=> String
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities #=> Array<MedicalEntity>
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities[0] #=> Types::MedicalEntity
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities[0].start_time #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities[0].end_time #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities[0].category #=> String
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities[0].content #=> String
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities[0].confidence #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].channel_id #=> String
    #   resp.data.transcript_result_stream.bad_request_exception #=> Types::BadRequestException
    #   resp.data.transcript_result_stream.bad_request_exception.message #=> String
    #   resp.data.transcript_result_stream.limit_exceeded_exception #=> Types::LimitExceededException
    #   resp.data.transcript_result_stream.limit_exceeded_exception.message #=> String
    #   resp.data.transcript_result_stream.internal_failure_exception #=> Types::InternalFailureException
    #   resp.data.transcript_result_stream.internal_failure_exception.message #=> String
    #   resp.data.transcript_result_stream.conflict_exception #=> Types::ConflictException
    #   resp.data.transcript_result_stream.conflict_exception.message #=> String
    #   resp.data.transcript_result_stream.service_unavailable_exception #=> Types::ServiceUnavailableException
    #   resp.data.transcript_result_stream.service_unavailable_exception.message #=> String
    #   resp.data.enable_channel_identification #=> Boolean
    #   resp.data.number_of_channels #=> Integer
    #   resp.data.content_identification_type #=> String, one of ["PHI"]
    def start_medical_stream_transcription(params = {}, options = {})
      middleware_opts = {}
      middleware_opts[:event_stream_handler] = options.delete(:event_stream_handler)
      raise ArgumentError, 'Missing `event_stream_handler`' unless middleware_opts[:event_stream_handler]
      response_body = ::StringIO.new
      config = operation_config(options)
      input = Params::StartMedicalStreamTranscriptionInput.build(params, context: 'params')
      stack = AWS::SDK::TranscribeStreaming::Middleware::StartMedicalStreamTranscription.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP2::Request.new(uri: URI('')),
        response: Hearth::HTTP2::Response.new(body: response_body),
        config: config,
        operation_name: :start_medical_stream_transcription,
      )
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_medical_stream_transcription] params: #{params}, options: #{options}")
      output = stack.run(input, context)
      if output.error
        context.config.logger.error("[#{context.invocation_id}] [#{self.class}#start_medical_stream_transcription] #{output.error} (#{output.error.class})")
        raise output.error
      end
      context.config.logger.info("[#{context.invocation_id}] [#{self.class}#start_medical_stream_transcription] #{output.data}")
      output
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
    # @param [Hash] options
    #   Request option override of configuration. See {Config#initialize} for available options.
    #   Some configurations cannot be overridden.
    # @return [Hearth::Output]
    # @example Request syntax with placeholder values
    #   resp = client.start_stream_transcription(
    #     language_code: 'en-US', # accepts ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #     media_sample_rate_hertz: 1, # required
    #     media_encoding: 'pcm', # required - accepts ["pcm", "ogg-opus", "flac"]
    #     vocabulary_name: 'VocabularyName',
    #     session_id: 'SessionId',
    #     audio_stream: {
    #       # One of:
    #       audio_event: {
    #         audio_chunk: 'AudioChunk'
    #       },
    #       configuration_event: {
    #         channel_definitions: [
    #           {
    #             channel_id: 1, # required
    #             participant_role: 'AGENT' # required - accepts ["AGENT", "CUSTOMER"]
    #           }
    #         ],
    #         post_call_analytics_settings: {
    #           output_location: 'OutputLocation', # required
    #           data_access_role_arn: 'DataAccessRoleArn', # required
    #           content_redaction_output: 'redacted', # accepts ["redacted", "redacted_and_unredacted"]
    #           output_encryption_kms_key_id: 'OutputEncryptionKMSKeyId'
    #         }
    #       }
    #     }, # required
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
    #   )
    # @example Response structure
    #   resp.data #=> Types::StartStreamTranscriptionOutput
    #   resp.data.request_id #=> String
    #   resp.data.language_code #=> String, one of ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #   resp.data.media_sample_rate_hertz #=> Integer
    #   resp.data.media_encoding #=> String, one of ["pcm", "ogg-opus", "flac"]
    #   resp.data.vocabulary_name #=> String
    #   resp.data.session_id #=> String
    #   resp.data.transcript_result_stream #=> Types::TranscriptResultStream, one of [TranscriptEvent, BadRequestException, LimitExceededException, InternalFailureException, ConflictException, ServiceUnavailableException]
    #   resp.data.transcript_result_stream.transcript_event #=> Types::TranscriptEvent
    #   resp.data.transcript_result_stream.transcript_event.transcript #=> Types::Transcript
    #   resp.data.transcript_result_stream.transcript_event.transcript.results #=> Array<Result>
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0] #=> Types::Result
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].result_id #=> String
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].start_time #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].end_time #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].is_partial #=> Boolean
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives #=> Array<Alternative>
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0] #=> Types::Alternative
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].transcript #=> String
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items #=> Array<Item>
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0] #=> Types::Item
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0].start_time #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0].end_time #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0].type #=> String, one of ["pronunciation", "punctuation"]
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0].content #=> String
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0].vocabulary_filter_match #=> Boolean
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0].speaker #=> String
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0].confidence #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].items[0].stable #=> Boolean
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities #=> Array<Entity>
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities[0] #=> Types::Entity
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities[0].start_time #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities[0].end_time #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities[0].category #=> String
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities[0].type #=> String
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities[0].content #=> String
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].alternatives[0].entities[0].confidence #=> Float
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].channel_id #=> String
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].language_code #=> String, one of ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].language_identification #=> Array<LanguageWithScore>
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].language_identification[0] #=> Types::LanguageWithScore
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].language_identification[0].language_code #=> String, one of ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #   resp.data.transcript_result_stream.transcript_event.transcript.results[0].language_identification[0].score #=> Float
    #   resp.data.transcript_result_stream.bad_request_exception #=> Types::BadRequestException
    #   resp.data.transcript_result_stream.bad_request_exception.message #=> String
    #   resp.data.transcript_result_stream.limit_exceeded_exception #=> Types::LimitExceededException
    #   resp.data.transcript_result_stream.limit_exceeded_exception.message #=> String
    #   resp.data.transcript_result_stream.internal_failure_exception #=> Types::InternalFailureException
    #   resp.data.transcript_result_stream.internal_failure_exception.message #=> String
    #   resp.data.transcript_result_stream.conflict_exception #=> Types::ConflictException
    #   resp.data.transcript_result_stream.conflict_exception.message #=> String
    #   resp.data.transcript_result_stream.service_unavailable_exception #=> Types::ServiceUnavailableException
    #   resp.data.transcript_result_stream.service_unavailable_exception.message #=> String
    #   resp.data.vocabulary_filter_name #=> String
    #   resp.data.vocabulary_filter_method #=> String, one of ["remove", "mask", "tag"]
    #   resp.data.show_speaker_label #=> Boolean
    #   resp.data.enable_channel_identification #=> Boolean
    #   resp.data.number_of_channels #=> Integer
    #   resp.data.enable_partial_results_stabilization #=> Boolean
    #   resp.data.partial_results_stability #=> String, one of ["high", "medium", "low"]
    #   resp.data.content_identification_type #=> String, one of ["PII"]
    #   resp.data.content_redaction_type #=> String, one of ["PII"]
    #   resp.data.pii_entity_types #=> String
    #   resp.data.language_model_name #=> String
    #   resp.data.identify_language #=> Boolean
    #   resp.data.language_options #=> String
    #   resp.data.preferred_language #=> String, one of ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
    #   resp.data.identify_multiple_languages #=> Boolean
    #   resp.data.vocabulary_names #=> String
    #   resp.data.vocabulary_filter_names #=> String
    def start_stream_transcription(params = {}, options = {})
      middleware_opts = {}
      middleware_opts[:event_stream_handler] = options.delete(:event_stream_handler)
      raise ArgumentError, 'Missing `event_stream_handler`' unless middleware_opts[:event_stream_handler]
      response_body = ::StringIO.new
      config = operation_config(options)
      input = Params::StartStreamTranscriptionInput.build(params, context: 'params')
      stack = AWS::SDK::TranscribeStreaming::Middleware::StartStreamTranscription.build(config, middleware_opts)
      context = Hearth::Context.new(
        request: Hearth::HTTP2::Request.new(uri: URI('')),
        response: Hearth::HTTP2::Response.new(body: response_body),
        config: config,
        operation_name: :start_stream_transcription,
      )
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
