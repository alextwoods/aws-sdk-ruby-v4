# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TranscribeStreaming
  module EventStream

    class StartCallAnalyticsStreamTranscription < Hearth::EventStream::HandlerBase

      def signal_audio_event(params = {})
        input = Params::AudioEvent.build(params, context: 'params')
        message = Builders::EventStream::AudioEvent.build(input: input)
        encoder.send_event(:event, message)
      end

      def signal_configuration_event(params = {})
        input = Params::ConfigurationEvent.build(params, context: 'params')
        message = Builders::EventStream::ConfigurationEvent.build(input: input)
        encoder.send_event(:event, message)
      end

      def on_utterance_event(&block)
        on('UtteranceEvent', block)
      end

      def on_category_event(&block)
        on('CategoryEvent', block)
      end

      def on_bad_request_exception(&block)
        on('BadRequestException', block)
      end

      def on_limit_exceeded_exception(&block)
        on('LimitExceededException', block)
      end

      def on_internal_failure_exception(&block)
        on('InternalFailureException', block)
      end

      def on_conflict_exception(&block)
        on('ConflictException', block)
      end

      def on_service_unavailable_exception(&block)
        on('ServiceUnavailableException', block)
      end

      def parse_event(type, message)
        case type
        when 'UtteranceEvent' then Parsers::EventStream::UtteranceEvent.parse(message)
        when 'CategoryEvent' then Parsers::EventStream::CategoryEvent.parse(message)
        when 'BadRequestException' then Parsers::EventStream::BadRequestException.parse(message)
        when 'LimitExceededException' then Parsers::EventStream::LimitExceededException.parse(message)
        when 'InternalFailureException' then Parsers::EventStream::InternalFailureException.parse(message)
        when 'ConflictException' then Parsers::EventStream::ConflictException.parse(message)
        when 'ServiceUnavailableException' then Parsers::EventStream::ServiceUnavailableException.parse(message)
        end
      end
    end

    class StartMedicalStreamTranscription < Hearth::EventStream::HandlerBase

      def signal_audio_event(params = {})
        input = Params::AudioEvent.build(params, context: 'params')
        message = Builders::EventStream::AudioEvent.build(input: input)
        encoder.send_event(:event, message)
      end

      def signal_configuration_event(params = {})
        input = Params::ConfigurationEvent.build(params, context: 'params')
        message = Builders::EventStream::ConfigurationEvent.build(input: input)
        encoder.send_event(:event, message)
      end

      def on_transcript_event(&block)
        on('TranscriptEvent', block)
      end

      def on_bad_request_exception(&block)
        on('BadRequestException', block)
      end

      def on_limit_exceeded_exception(&block)
        on('LimitExceededException', block)
      end

      def on_internal_failure_exception(&block)
        on('InternalFailureException', block)
      end

      def on_conflict_exception(&block)
        on('ConflictException', block)
      end

      def on_service_unavailable_exception(&block)
        on('ServiceUnavailableException', block)
      end

      def parse_event(type, message)
        case type
        when 'TranscriptEvent' then Parsers::EventStream::TranscriptEvent.parse(message)
        when 'BadRequestException' then Parsers::EventStream::BadRequestException.parse(message)
        when 'LimitExceededException' then Parsers::EventStream::LimitExceededException.parse(message)
        when 'InternalFailureException' then Parsers::EventStream::InternalFailureException.parse(message)
        when 'ConflictException' then Parsers::EventStream::ConflictException.parse(message)
        when 'ServiceUnavailableException' then Parsers::EventStream::ServiceUnavailableException.parse(message)
        end
      end
    end

    class StartStreamTranscription < Hearth::EventStream::HandlerBase

      def signal_audio_event(params = {})
        input = Params::AudioEvent.build(params, context: 'params')
        message = Builders::EventStream::AudioEvent.build(input: input)
        encoder.send_event(:event, message)
      end

      def signal_configuration_event(params = {})
        input = Params::ConfigurationEvent.build(params, context: 'params')
        message = Builders::EventStream::ConfigurationEvent.build(input: input)
        encoder.send_event(:event, message)
      end

      def on_transcript_event(&block)
        on('TranscriptEvent', block)
      end

      def on_bad_request_exception(&block)
        on('BadRequestException', block)
      end

      def on_limit_exceeded_exception(&block)
        on('LimitExceededException', block)
      end

      def on_internal_failure_exception(&block)
        on('InternalFailureException', block)
      end

      def on_conflict_exception(&block)
        on('ConflictException', block)
      end

      def on_service_unavailable_exception(&block)
        on('ServiceUnavailableException', block)
      end

      def parse_event(type, message)
        case type
        when 'TranscriptEvent' then Parsers::EventStream::TranscriptEvent.parse(message)
        when 'BadRequestException' then Parsers::EventStream::BadRequestException.parse(message)
        when 'LimitExceededException' then Parsers::EventStream::LimitExceededException.parse(message)
        when 'InternalFailureException' then Parsers::EventStream::InternalFailureException.parse(message)
        when 'ConflictException' then Parsers::EventStream::ConflictException.parse(message)
        when 'ServiceUnavailableException' then Parsers::EventStream::ServiceUnavailableException.parse(message)
        end
      end
    end
  end
end
