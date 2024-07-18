# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TranscribeStreaming
  module EventStream

    class StartCallAnalyticsStreamTranscriptionHandler < Hearth::EventStream::HandlerBase

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
        when 'initial-response' then Parsers::EventStream::StartCallAnalyticsStreamTranscriptionInitialResponse.parse(message)
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

    class StartMedicalStreamTranscriptionHandler < Hearth::EventStream::HandlerBase

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
        when 'initial-response' then Parsers::EventStream::StartMedicalStreamTranscriptionInitialResponse.parse(message)
        when 'TranscriptEvent' then Parsers::EventStream::MedicalTranscriptEvent.parse(message)
        when 'BadRequestException' then Parsers::EventStream::BadRequestException.parse(message)
        when 'LimitExceededException' then Parsers::EventStream::LimitExceededException.parse(message)
        when 'InternalFailureException' then Parsers::EventStream::InternalFailureException.parse(message)
        when 'ConflictException' then Parsers::EventStream::ConflictException.parse(message)
        when 'ServiceUnavailableException' then Parsers::EventStream::ServiceUnavailableException.parse(message)
        end
      end
    end

    class StartStreamTranscriptionHandler < Hearth::EventStream::HandlerBase

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
        when 'initial-response' then Parsers::EventStream::StartStreamTranscriptionInitialResponse.parse(message)
        when 'TranscriptEvent' then Parsers::EventStream::TranscriptEvent.parse(message)
        when 'BadRequestException' then Parsers::EventStream::BadRequestException.parse(message)
        when 'LimitExceededException' then Parsers::EventStream::LimitExceededException.parse(message)
        when 'InternalFailureException' then Parsers::EventStream::InternalFailureException.parse(message)
        when 'ConflictException' then Parsers::EventStream::ConflictException.parse(message)
        when 'ServiceUnavailableException' then Parsers::EventStream::ServiceUnavailableException.parse(message)
        end
      end
    end

    class StartCallAnalyticsStreamTranscriptionOutput < Hearth::EventStream::AsyncOutput

      def signal_utterance_event(params = {})
        input = Params::UtteranceEvent.build(params, context: 'params')
        message = Builders::EventStream::UtteranceEvent.build(input: input)
        send_event(message)
      end

      def signal_category_event(params = {})
        input = Params::CategoryEvent.build(params, context: 'params')
        message = Builders::EventStream::CategoryEvent.build(input: input)
        send_event(message)
      end

      def signal_bad_request_exception(params = {})
        input = Params::BadRequestException.build(params, context: 'params')
        message = Builders::EventStream::BadRequestException.build(input: input)
        send_event(message)
      end

      def signal_limit_exceeded_exception(params = {})
        input = Params::LimitExceededException.build(params, context: 'params')
        message = Builders::EventStream::LimitExceededException.build(input: input)
        send_event(message)
      end

      def signal_internal_failure_exception(params = {})
        input = Params::InternalFailureException.build(params, context: 'params')
        message = Builders::EventStream::InternalFailureException.build(input: input)
        send_event(message)
      end

      def signal_conflict_exception(params = {})
        input = Params::ConflictException.build(params, context: 'params')
        message = Builders::EventStream::ConflictException.build(input: input)
        send_event(message)
      end

      def signal_service_unavailable_exception(params = {})
        input = Params::ServiceUnavailableException.build(params, context: 'params')
        message = Builders::EventStream::ServiceUnavailableException.build(input: input)
        send_event(message)
      end
    end

    class StartMedicalStreamTranscriptionOutput < Hearth::EventStream::AsyncOutput

      def signal_transcript_event(params = {})
        input = Params::MedicalTranscriptEvent.build(params, context: 'params')
        message = Builders::EventStream::MedicalTranscriptEvent.build(input: input)
        send_event(message)
      end

      def signal_bad_request_exception(params = {})
        input = Params::BadRequestException.build(params, context: 'params')
        message = Builders::EventStream::BadRequestException.build(input: input)
        send_event(message)
      end

      def signal_limit_exceeded_exception(params = {})
        input = Params::LimitExceededException.build(params, context: 'params')
        message = Builders::EventStream::LimitExceededException.build(input: input)
        send_event(message)
      end

      def signal_internal_failure_exception(params = {})
        input = Params::InternalFailureException.build(params, context: 'params')
        message = Builders::EventStream::InternalFailureException.build(input: input)
        send_event(message)
      end

      def signal_conflict_exception(params = {})
        input = Params::ConflictException.build(params, context: 'params')
        message = Builders::EventStream::ConflictException.build(input: input)
        send_event(message)
      end

      def signal_service_unavailable_exception(params = {})
        input = Params::ServiceUnavailableException.build(params, context: 'params')
        message = Builders::EventStream::ServiceUnavailableException.build(input: input)
        send_event(message)
      end
    end

    class StartStreamTranscriptionOutput < Hearth::EventStream::AsyncOutput

      def signal_transcript_event(params = {})
        input = Params::TranscriptEvent.build(params, context: 'params')
        message = Builders::EventStream::TranscriptEvent.build(input: input)
        send_event(message)
      end

      def signal_bad_request_exception(params = {})
        input = Params::BadRequestException.build(params, context: 'params')
        message = Builders::EventStream::BadRequestException.build(input: input)
        send_event(message)
      end

      def signal_limit_exceeded_exception(params = {})
        input = Params::LimitExceededException.build(params, context: 'params')
        message = Builders::EventStream::LimitExceededException.build(input: input)
        send_event(message)
      end

      def signal_internal_failure_exception(params = {})
        input = Params::InternalFailureException.build(params, context: 'params')
        message = Builders::EventStream::InternalFailureException.build(input: input)
        send_event(message)
      end

      def signal_conflict_exception(params = {})
        input = Params::ConflictException.build(params, context: 'params')
        message = Builders::EventStream::ConflictException.build(input: input)
        send_event(message)
      end

      def signal_service_unavailable_exception(params = {})
        input = Params::ServiceUnavailableException.build(params, context: 'params')
        message = Builders::EventStream::ServiceUnavailableException.build(input: input)
        send_event(message)
      end
    end
  end
end
