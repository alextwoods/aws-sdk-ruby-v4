# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TranscribeStreaming
  module EventStream

    # EventStreamHandler for the the {Client#start_call_analytics_stream_transcription} operation.
    # Register event handlers using the `#on_<event_name>` methods
    # and set the handler using the `event_stream_handler` option
    # on the {Client#start_call_analytics_stream_transcription} method.
    # @example Basic Usage
    #   handler = StartCallAnalyticsStreamTranscription.new
    #   # register handlers for the events you are interested in
    #   handler.on_initial_response { |initial_response| process(initial_response) }
    #   client.start_call_analytics_stream_transcription(params, event_stream_handler: handler)
    class StartCallAnalyticsStreamTranscriptionHandler < Hearth::EventStream::HandlerBase
      # Register an event handler for the initial response.
      # @yield [event] Called when the initial response is received.
      # @yieldparam event [Types::StartCallAnalyticsStreamTranscriptionOutput] the initial response
      # @example Event structure
      #   event #=> Types::StartCallAnalyticsStreamTranscriptionOutput
      #   event.request_id #=> String
      #   event.language_code #=> String, one of ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR"]
      #   event.media_sample_rate_hertz #=> Integer
      #   event.media_encoding #=> String, one of ["pcm", "ogg-opus", "flac"]
      #   event.vocabulary_name #=> String
      #   event.session_id #=> String
      #   event.vocabulary_filter_name #=> String
      #   event.vocabulary_filter_method #=> String, one of ["remove", "mask", "tag"]
      #   event.language_model_name #=> String
      #   event.enable_partial_results_stabilization #=> Boolean
      #   event.partial_results_stability #=> String, one of ["high", "medium", "low"]
      #   event.content_identification_type #=> String, one of ["PII"]
      #   event.content_redaction_type #=> String, one of ["PII"]
      #   event.pii_entity_types #=> String
      def on_initial_response(&block)
        on(Types::StartCallAnalyticsStreamTranscriptionOutput, block)
      end

      # Register an event handler for utterance_event events
      # @yield [event] Called when utterance_event events are received.
      # @yieldparam event [Types::CallAnalyticsTranscriptResultStream::UtteranceEvent] the event.
      # @example Event structure
      #   event #=> Types::UtteranceEvent
      #   event.utterance_id #=> String
      #   event.is_partial #=> Boolean
      #   event.participant_role #=> String, one of ["AGENT", "CUSTOMER"]
      #   event.begin_offset_millis #=> Integer
      #   event.end_offset_millis #=> Integer
      #   event.transcript #=> String
      #   event.items #=> Array<CallAnalyticsItem>
      #   event.items[0] #=> Types::CallAnalyticsItem
      #   event.items[0].begin_offset_millis #=> Integer
      #   event.items[0].end_offset_millis #=> Integer
      #   event.items[0].type #=> String, one of ["pronunciation", "punctuation"]
      #   event.items[0].content #=> String
      #   event.items[0].confidence #=> Float
      #   event.items[0].vocabulary_filter_match #=> Boolean
      #   event.items[0].stable #=> Boolean
      #   event.entities #=> Array<CallAnalyticsEntity>
      #   event.entities[0] #=> Types::CallAnalyticsEntity
      #   event.entities[0].begin_offset_millis #=> Integer
      #   event.entities[0].end_offset_millis #=> Integer
      #   event.entities[0].category #=> String
      #   event.entities[0].type #=> String
      #   event.entities[0].content #=> String
      #   event.entities[0].confidence #=> Float
      #   event.sentiment #=> String, one of ["POSITIVE", "NEGATIVE", "MIXED", "NEUTRAL"]
      #   event.issues_detected #=> Array<IssueDetected>
      #   event.issues_detected[0] #=> Types::IssueDetected
      #   event.issues_detected[0].character_offsets #=> Types::CharacterOffsets
      #   event.issues_detected[0].character_offsets.begin #=> Integer
      #   event.issues_detected[0].character_offsets.end #=> Integer
      def on_utterance_event(&block)
        on(Types::CallAnalyticsTranscriptResultStream::UtteranceEvent, block)
      end

      # Register an event handler for category_event events
      # @yield [event] Called when category_event events are received.
      # @yieldparam event [Types::CallAnalyticsTranscriptResultStream::CategoryEvent] the event.
      # @example Event structure
      #   event #=> Types::CategoryEvent
      #   event.matched_categories #=> Array<String>
      #   event.matched_categories[0] #=> String
      #   event.matched_details #=> Hash<String, PointsOfInterest>
      #   event.matched_details['key'] #=> Types::PointsOfInterest
      #   event.matched_details['key'].timestamp_ranges #=> Array<TimestampRange>
      #   event.matched_details['key'].timestamp_ranges[0] #=> Types::TimestampRange
      #   event.matched_details['key'].timestamp_ranges[0].begin_offset_millis #=> Integer
      #   event.matched_details['key'].timestamp_ranges[0].end_offset_millis #=> Integer
      def on_category_event(&block)
        on(Types::CallAnalyticsTranscriptResultStream::CategoryEvent, block)
      end

      # Register an event handler for any unknown events.
      # @yield [event] Called when unknown events are received.
      # @yieldparam event [Types::CallAnalyticsTranscriptResultStream::Unknown] the event with value set to the Message
      def on_unknown_event(&block)
        on(Types::CallAnalyticsTranscriptResultStream::Unknown, block)
      end

      private

      def parse_event(type, message)
        case type
        when 'initial-response'
          Parsers::EventStream::StartCallAnalyticsStreamTranscriptionInitialResponse.parse(message)
        when 'UtteranceEvent'
          Types::CallAnalyticsTranscriptResultStream::UtteranceEvent.new(Parsers::EventStream::UtteranceEvent.parse(message))
        when 'CategoryEvent'
          Types::CallAnalyticsTranscriptResultStream::CategoryEvent.new(Parsers::EventStream::CategoryEvent.parse(message))
        when 'BadRequestException'
          Types::CallAnalyticsTranscriptResultStream::BadRequestException.new(Parsers::EventStream::BadRequestException.parse(message))
        when 'LimitExceededException'
          Types::CallAnalyticsTranscriptResultStream::LimitExceededException.new(Parsers::EventStream::LimitExceededException.parse(message))
        when 'InternalFailureException'
          Types::CallAnalyticsTranscriptResultStream::InternalFailureException.new(Parsers::EventStream::InternalFailureException.parse(message))
        when 'ConflictException'
          Types::CallAnalyticsTranscriptResultStream::ConflictException.new(Parsers::EventStream::ConflictException.parse(message))
        when 'ServiceUnavailableException'
          Types::CallAnalyticsTranscriptResultStream::ServiceUnavailableException.new(Parsers::EventStream::ServiceUnavailableException.parse(message))
        else
          Types::CallAnalyticsTranscriptResultStream::Unknown.new(name: type || 'unknown', value: message)
        end
      end

      def parse_exception_event(type, message)
        case type
        when 'BadRequestException'
          data = Parsers::EventStream::BadRequestException.parse(message)
          Errors::BadRequestException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::CallAnalyticsTranscriptResultStream::BadRequestException')
        when 'LimitExceededException'
          data = Parsers::EventStream::LimitExceededException.parse(message)
          Errors::LimitExceededException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::CallAnalyticsTranscriptResultStream::LimitExceededException')
        when 'InternalFailureException'
          data = Parsers::EventStream::InternalFailureException.parse(message)
          Errors::InternalFailureException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::CallAnalyticsTranscriptResultStream::InternalFailureException')
        when 'ConflictException'
          data = Parsers::EventStream::ConflictException.parse(message)
          Errors::ConflictException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::CallAnalyticsTranscriptResultStream::ConflictException')
        when 'ServiceUnavailableException'
          data = Parsers::EventStream::ServiceUnavailableException.parse(message)
          Errors::ServiceUnavailableException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::CallAnalyticsTranscriptResultStream::ServiceUnavailableException')
        else
          data = Types::CallAnalyticsTranscriptResultStream::Unknown.new(name: type || 'unknown', value: message)
          Errors::ApiError.new(error_code: type || 'unknown', metadata: {data: data})
        end
      end

      def parse_error_event(message)
        error_code = message.headers.delete(':error-code')&.value
        error_message = message.headers.delete(':error-message')&.value
        metadata = {message: message}
        Errors::ApiError.new(error_code: error_code, metadata: metadata, message: error_message)
      end
    end

    # EventStreamHandler for the the {Client#start_medical_stream_transcription} operation.
    # Register event handlers using the `#on_<event_name>` methods
    # and set the handler using the `event_stream_handler` option
    # on the {Client#start_medical_stream_transcription} method.
    # @example Basic Usage
    #   handler = StartMedicalStreamTranscription.new
    #   # register handlers for the events you are interested in
    #   handler.on_initial_response { |initial_response| process(initial_response) }
    #   client.start_medical_stream_transcription(params, event_stream_handler: handler)
    class StartMedicalStreamTranscriptionHandler < Hearth::EventStream::HandlerBase
      # Register an event handler for the initial response.
      # @yield [event] Called when the initial response is received.
      # @yieldparam event [Types::StartMedicalStreamTranscriptionOutput] the initial response
      # @example Event structure
      #   event #=> Types::StartMedicalStreamTranscriptionOutput
      #   event.request_id #=> String
      #   event.language_code #=> String, one of ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
      #   event.media_sample_rate_hertz #=> Integer
      #   event.media_encoding #=> String, one of ["pcm", "ogg-opus", "flac"]
      #   event.vocabulary_name #=> String
      #   event.specialty #=> String, one of ["PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"]
      #   event.type #=> String, one of ["CONVERSATION", "DICTATION"]
      #   event.show_speaker_label #=> Boolean
      #   event.session_id #=> String
      #   event.enable_channel_identification #=> Boolean
      #   event.number_of_channels #=> Integer
      #   event.content_identification_type #=> String, one of ["PHI"]
      def on_initial_response(&block)
        on(Types::StartMedicalStreamTranscriptionOutput, block)
      end

      # Register an event handler for transcript_event events
      # @yield [event] Called when transcript_event events are received.
      # @yieldparam event [Types::MedicalTranscriptResultStream::TranscriptEvent] the event.
      # @example Event structure
      #   event #=> Types::MedicalTranscriptEvent
      #   event.transcript #=> Types::MedicalTranscript
      #   event.transcript.results #=> Array<MedicalResult>
      #   event.transcript.results[0] #=> Types::MedicalResult
      #   event.transcript.results[0].result_id #=> String
      #   event.transcript.results[0].start_time #=> Float
      #   event.transcript.results[0].end_time #=> Float
      #   event.transcript.results[0].is_partial #=> Boolean
      #   event.transcript.results[0].alternatives #=> Array<MedicalAlternative>
      #   event.transcript.results[0].alternatives[0] #=> Types::MedicalAlternative
      #   event.transcript.results[0].alternatives[0].transcript #=> String
      #   event.transcript.results[0].alternatives[0].items #=> Array<MedicalItem>
      #   event.transcript.results[0].alternatives[0].items[0] #=> Types::MedicalItem
      #   event.transcript.results[0].alternatives[0].items[0].start_time #=> Float
      #   event.transcript.results[0].alternatives[0].items[0].end_time #=> Float
      #   event.transcript.results[0].alternatives[0].items[0].type #=> String, one of ["pronunciation", "punctuation"]
      #   event.transcript.results[0].alternatives[0].items[0].content #=> String
      #   event.transcript.results[0].alternatives[0].items[0].confidence #=> Float
      #   event.transcript.results[0].alternatives[0].items[0].speaker #=> String
      #   event.transcript.results[0].alternatives[0].entities #=> Array<MedicalEntity>
      #   event.transcript.results[0].alternatives[0].entities[0] #=> Types::MedicalEntity
      #   event.transcript.results[0].alternatives[0].entities[0].start_time #=> Float
      #   event.transcript.results[0].alternatives[0].entities[0].end_time #=> Float
      #   event.transcript.results[0].alternatives[0].entities[0].category #=> String
      #   event.transcript.results[0].alternatives[0].entities[0].content #=> String
      #   event.transcript.results[0].alternatives[0].entities[0].confidence #=> Float
      #   event.transcript.results[0].channel_id #=> String
      def on_transcript_event(&block)
        on(Types::MedicalTranscriptResultStream::TranscriptEvent, block)
      end

      # Register an event handler for any unknown events.
      # @yield [event] Called when unknown events are received.
      # @yieldparam event [Types::MedicalTranscriptResultStream::Unknown] the event with value set to the Message
      def on_unknown_event(&block)
        on(Types::MedicalTranscriptResultStream::Unknown, block)
      end

      private

      def parse_event(type, message)
        case type
        when 'initial-response'
          Parsers::EventStream::StartMedicalStreamTranscriptionInitialResponse.parse(message)
        when 'TranscriptEvent'
          Types::MedicalTranscriptResultStream::TranscriptEvent.new(Parsers::EventStream::MedicalTranscriptEvent.parse(message))
        when 'BadRequestException'
          Types::MedicalTranscriptResultStream::BadRequestException.new(Parsers::EventStream::BadRequestException.parse(message))
        when 'LimitExceededException'
          Types::MedicalTranscriptResultStream::LimitExceededException.new(Parsers::EventStream::LimitExceededException.parse(message))
        when 'InternalFailureException'
          Types::MedicalTranscriptResultStream::InternalFailureException.new(Parsers::EventStream::InternalFailureException.parse(message))
        when 'ConflictException'
          Types::MedicalTranscriptResultStream::ConflictException.new(Parsers::EventStream::ConflictException.parse(message))
        when 'ServiceUnavailableException'
          Types::MedicalTranscriptResultStream::ServiceUnavailableException.new(Parsers::EventStream::ServiceUnavailableException.parse(message))
        else
          Types::MedicalTranscriptResultStream::Unknown.new(name: type || 'unknown', value: message)
        end
      end

      def parse_exception_event(type, message)
        case type
        when 'BadRequestException'
          data = Parsers::EventStream::BadRequestException.parse(message)
          Errors::BadRequestException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::MedicalTranscriptResultStream::BadRequestException')
        when 'LimitExceededException'
          data = Parsers::EventStream::LimitExceededException.parse(message)
          Errors::LimitExceededException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::MedicalTranscriptResultStream::LimitExceededException')
        when 'InternalFailureException'
          data = Parsers::EventStream::InternalFailureException.parse(message)
          Errors::InternalFailureException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::MedicalTranscriptResultStream::InternalFailureException')
        when 'ConflictException'
          data = Parsers::EventStream::ConflictException.parse(message)
          Errors::ConflictException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::MedicalTranscriptResultStream::ConflictException')
        when 'ServiceUnavailableException'
          data = Parsers::EventStream::ServiceUnavailableException.parse(message)
          Errors::ServiceUnavailableException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::MedicalTranscriptResultStream::ServiceUnavailableException')
        else
          data = Types::MedicalTranscriptResultStream::Unknown.new(name: type || 'unknown', value: message)
          Errors::ApiError.new(error_code: type || 'unknown', metadata: {data: data})
        end
      end

      def parse_error_event(message)
        error_code = message.headers.delete(':error-code')&.value
        error_message = message.headers.delete(':error-message')&.value
        metadata = {message: message}
        Errors::ApiError.new(error_code: error_code, metadata: metadata, message: error_message)
      end
    end

    # EventStreamHandler for the the {Client#start_stream_transcription} operation.
    # Register event handlers using the `#on_<event_name>` methods
    # and set the handler using the `event_stream_handler` option
    # on the {Client#start_stream_transcription} method.
    # @example Basic Usage
    #   handler = StartStreamTranscription.new
    #   # register handlers for the events you are interested in
    #   handler.on_initial_response { |initial_response| process(initial_response) }
    #   client.start_stream_transcription(params, event_stream_handler: handler)
    class StartStreamTranscriptionHandler < Hearth::EventStream::HandlerBase
      # Register an event handler for the initial response.
      # @yield [event] Called when the initial response is received.
      # @yieldparam event [Types::StartStreamTranscriptionOutput] the initial response
      # @example Event structure
      #   event #=> Types::StartStreamTranscriptionOutput
      #   event.request_id #=> String
      #   event.language_code #=> String, one of ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
      #   event.media_sample_rate_hertz #=> Integer
      #   event.media_encoding #=> String, one of ["pcm", "ogg-opus", "flac"]
      #   event.vocabulary_name #=> String
      #   event.session_id #=> String
      #   event.vocabulary_filter_name #=> String
      #   event.vocabulary_filter_method #=> String, one of ["remove", "mask", "tag"]
      #   event.show_speaker_label #=> Boolean
      #   event.enable_channel_identification #=> Boolean
      #   event.number_of_channels #=> Integer
      #   event.enable_partial_results_stabilization #=> Boolean
      #   event.partial_results_stability #=> String, one of ["high", "medium", "low"]
      #   event.content_identification_type #=> String, one of ["PII"]
      #   event.content_redaction_type #=> String, one of ["PII"]
      #   event.pii_entity_types #=> String
      #   event.language_model_name #=> String
      #   event.identify_language #=> Boolean
      #   event.language_options #=> String
      #   event.preferred_language #=> String, one of ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
      #   event.identify_multiple_languages #=> Boolean
      #   event.vocabulary_names #=> String
      #   event.vocabulary_filter_names #=> String
      def on_initial_response(&block)
        on(Types::StartStreamTranscriptionOutput, block)
      end

      # Register an event handler for transcript_event events
      # @yield [event] Called when transcript_event events are received.
      # @yieldparam event [Types::TranscriptResultStream::TranscriptEvent] the event.
      # @example Event structure
      #   event #=> Types::TranscriptEvent
      #   event.transcript #=> Types::Transcript
      #   event.transcript.results #=> Array<Result>
      #   event.transcript.results[0] #=> Types::Result
      #   event.transcript.results[0].result_id #=> String
      #   event.transcript.results[0].start_time #=> Float
      #   event.transcript.results[0].end_time #=> Float
      #   event.transcript.results[0].is_partial #=> Boolean
      #   event.transcript.results[0].alternatives #=> Array<Alternative>
      #   event.transcript.results[0].alternatives[0] #=> Types::Alternative
      #   event.transcript.results[0].alternatives[0].transcript #=> String
      #   event.transcript.results[0].alternatives[0].items #=> Array<Item>
      #   event.transcript.results[0].alternatives[0].items[0] #=> Types::Item
      #   event.transcript.results[0].alternatives[0].items[0].start_time #=> Float
      #   event.transcript.results[0].alternatives[0].items[0].end_time #=> Float
      #   event.transcript.results[0].alternatives[0].items[0].type #=> String, one of ["pronunciation", "punctuation"]
      #   event.transcript.results[0].alternatives[0].items[0].content #=> String
      #   event.transcript.results[0].alternatives[0].items[0].vocabulary_filter_match #=> Boolean
      #   event.transcript.results[0].alternatives[0].items[0].speaker #=> String
      #   event.transcript.results[0].alternatives[0].items[0].confidence #=> Float
      #   event.transcript.results[0].alternatives[0].items[0].stable #=> Boolean
      #   event.transcript.results[0].alternatives[0].entities #=> Array<Entity>
      #   event.transcript.results[0].alternatives[0].entities[0] #=> Types::Entity
      #   event.transcript.results[0].alternatives[0].entities[0].start_time #=> Float
      #   event.transcript.results[0].alternatives[0].entities[0].end_time #=> Float
      #   event.transcript.results[0].alternatives[0].entities[0].category #=> String
      #   event.transcript.results[0].alternatives[0].entities[0].type #=> String
      #   event.transcript.results[0].alternatives[0].entities[0].content #=> String
      #   event.transcript.results[0].alternatives[0].entities[0].confidence #=> Float
      #   event.transcript.results[0].channel_id #=> String
      #   event.transcript.results[0].language_code #=> String, one of ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
      #   event.transcript.results[0].language_identification #=> Array<LanguageWithScore>
      #   event.transcript.results[0].language_identification[0] #=> Types::LanguageWithScore
      #   event.transcript.results[0].language_identification[0].language_code #=> String, one of ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "hi-IN", "th-TH"]
      #   event.transcript.results[0].language_identification[0].score #=> Float
      def on_transcript_event(&block)
        on(Types::TranscriptResultStream::TranscriptEvent, block)
      end

      # Register an event handler for any unknown events.
      # @yield [event] Called when unknown events are received.
      # @yieldparam event [Types::TranscriptResultStream::Unknown] the event with value set to the Message
      def on_unknown_event(&block)
        on(Types::TranscriptResultStream::Unknown, block)
      end

      private

      def parse_event(type, message)
        case type
        when 'initial-response'
          Parsers::EventStream::StartStreamTranscriptionInitialResponse.parse(message)
        when 'TranscriptEvent'
          Types::TranscriptResultStream::TranscriptEvent.new(Parsers::EventStream::TranscriptEvent.parse(message))
        when 'BadRequestException'
          Types::TranscriptResultStream::BadRequestException.new(Parsers::EventStream::BadRequestException.parse(message))
        when 'LimitExceededException'
          Types::TranscriptResultStream::LimitExceededException.new(Parsers::EventStream::LimitExceededException.parse(message))
        when 'InternalFailureException'
          Types::TranscriptResultStream::InternalFailureException.new(Parsers::EventStream::InternalFailureException.parse(message))
        when 'ConflictException'
          Types::TranscriptResultStream::ConflictException.new(Parsers::EventStream::ConflictException.parse(message))
        when 'ServiceUnavailableException'
          Types::TranscriptResultStream::ServiceUnavailableException.new(Parsers::EventStream::ServiceUnavailableException.parse(message))
        else
          Types::TranscriptResultStream::Unknown.new(name: type || 'unknown', value: message)
        end
      end

      def parse_exception_event(type, message)
        case type
        when 'BadRequestException'
          data = Parsers::EventStream::BadRequestException.parse(message)
          Errors::BadRequestException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::TranscriptResultStream::BadRequestException')
        when 'LimitExceededException'
          data = Parsers::EventStream::LimitExceededException.parse(message)
          Errors::LimitExceededException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::TranscriptResultStream::LimitExceededException')
        when 'InternalFailureException'
          data = Parsers::EventStream::InternalFailureException.parse(message)
          Errors::InternalFailureException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::TranscriptResultStream::InternalFailureException')
        when 'ConflictException'
          data = Parsers::EventStream::ConflictException.parse(message)
          Errors::ConflictException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::TranscriptResultStream::ConflictException')
        when 'ServiceUnavailableException'
          data = Parsers::EventStream::ServiceUnavailableException.parse(message)
          Errors::ServiceUnavailableException.new(data: data, error_code: 'AWS::SDK::TranscribeStreaming::Types::TranscriptResultStream::ServiceUnavailableException')
        else
          data = Types::TranscriptResultStream::Unknown.new(name: type || 'unknown', value: message)
          Errors::ApiError.new(error_code: type || 'unknown', metadata: {data: data})
        end
      end

      def parse_error_event(message)
        error_code = message.headers.delete(':error-code')&.value
        error_message = message.headers.delete(':error-message')&.value
        metadata = {message: message}
        Errors::ApiError.new(error_code: error_code, metadata: metadata, message: error_message)
      end
    end

    # Output returned from {Client#start_call_analytics_stream_transcription}
    # and used to signal (send) async input events.
    # @example Basic Usage
    #   stream = client.utterance_event(initial_request)
    #   stream.signal_start_call_analytics_stream_transcription(event_params) # send an event
    #   stream.join # close the input stream and wait for the server
    class StartCallAnalyticsStreamTranscriptionOutput < Hearth::EventStream::AsyncOutput

      # Signal (send) an AudioStream::AudioEvent input event
      # @param [Hash | Types::AudioEvent] params
      #   Request parameters for signaling this event.
      #   See {Types::AudioEvent#initialize} for available parameters.
      # @example Request syntax with placeholder values
      #   stream.signal_audio_event(
      #     audio_chunk: 'AudioChunk'
      #   )
      def signal_audio_event(params = {})
        input = Params::AudioEvent.build(params, context: 'params')
        message = Builders::EventStream::AudioEvent.build(input: input)
        send_event(message)
      end

      # Signal (send) an AudioStream::ConfigurationEvent input event
      # @param [Hash | Types::ConfigurationEvent] params
      #   Request parameters for signaling this event.
      #   See {Types::ConfigurationEvent#initialize} for available parameters.
      # @example Request syntax with placeholder values
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
      def signal_configuration_event(params = {})
        input = Params::ConfigurationEvent.build(params, context: 'params')
        message = Builders::EventStream::ConfigurationEvent.build(input: input)
        send_event(message)
      end
    end

    # Output returned from {Client#start_medical_stream_transcription}
    # and used to signal (send) async input events.
    # @example Basic Usage
    #   stream = client.transcript_event(initial_request)
    #   stream.signal_start_medical_stream_transcription(event_params) # send an event
    #   stream.join # close the input stream and wait for the server
    class StartMedicalStreamTranscriptionOutput < Hearth::EventStream::AsyncOutput

      # Signal (send) an AudioStream::AudioEvent input event
      # @param [Hash | Types::AudioEvent] params
      #   Request parameters for signaling this event.
      #   See {Types::AudioEvent#initialize} for available parameters.
      # @example Request syntax with placeholder values
      #   stream.signal_audio_event(
      #     audio_chunk: 'AudioChunk'
      #   )
      def signal_audio_event(params = {})
        input = Params::AudioEvent.build(params, context: 'params')
        message = Builders::EventStream::AudioEvent.build(input: input)
        send_event(message)
      end

      # Signal (send) an AudioStream::ConfigurationEvent input event
      # @param [Hash | Types::ConfigurationEvent] params
      #   Request parameters for signaling this event.
      #   See {Types::ConfigurationEvent#initialize} for available parameters.
      # @example Request syntax with placeholder values
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
      def signal_configuration_event(params = {})
        input = Params::ConfigurationEvent.build(params, context: 'params')
        message = Builders::EventStream::ConfigurationEvent.build(input: input)
        send_event(message)
      end
    end

    # Output returned from {Client#start_stream_transcription}
    # and used to signal (send) async input events.
    # @example Basic Usage
    #   stream = client.transcript_event(initial_request)
    #   stream.signal_start_stream_transcription(event_params) # send an event
    #   stream.join # close the input stream and wait for the server
    class StartStreamTranscriptionOutput < Hearth::EventStream::AsyncOutput

      # Signal (send) an AudioStream::AudioEvent input event
      # @param [Hash | Types::AudioEvent] params
      #   Request parameters for signaling this event.
      #   See {Types::AudioEvent#initialize} for available parameters.
      # @example Request syntax with placeholder values
      #   stream.signal_audio_event(
      #     audio_chunk: 'AudioChunk'
      #   )
      def signal_audio_event(params = {})
        input = Params::AudioEvent.build(params, context: 'params')
        message = Builders::EventStream::AudioEvent.build(input: input)
        send_event(message)
      end

      # Signal (send) an AudioStream::ConfigurationEvent input event
      # @param [Hash | Types::ConfigurationEvent] params
      #   Request parameters for signaling this event.
      #   See {Types::ConfigurationEvent#initialize} for available parameters.
      # @example Request syntax with placeholder values
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
      def signal_configuration_event(params = {})
        input = Params::ConfigurationEvent.build(params, context: 'params')
        message = Builders::EventStream::ConfigurationEvent.build(input: input)
        send_event(message)
      end
    end
  end
end
