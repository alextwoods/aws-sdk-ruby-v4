# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexRuntimeV2
  module EventStream

    class StartConversationHandler < Hearth::EventStream::HandlerBase

      def on_playback_interruption_event(&block)
        on('PlaybackInterruptionEvent', block)
      end

      def on_transcript_event(&block)
        on('TranscriptEvent', block)
      end

      def on_intent_result_event(&block)
        on('IntentResultEvent', block)
      end

      def on_text_response_event(&block)
        on('TextResponseEvent', block)
      end

      def on_audio_response_event(&block)
        on('AudioResponseEvent', block)
      end

      def on_heartbeat_event(&block)
        on('HeartbeatEvent', block)
      end

      def on_access_denied_exception(&block)
        on('AccessDeniedException', block)
      end

      def on_resource_not_found_exception(&block)
        on('ResourceNotFoundException', block)
      end

      def on_validation_exception(&block)
        on('ValidationException', block)
      end

      def on_throttling_exception(&block)
        on('ThrottlingException', block)
      end

      def on_internal_server_exception(&block)
        on('InternalServerException', block)
      end

      def on_conflict_exception(&block)
        on('ConflictException', block)
      end

      def on_dependency_failed_exception(&block)
        on('DependencyFailedException', block)
      end

      def on_bad_gateway_exception(&block)
        on('BadGatewayException', block)
      end

      def parse_event(type, message)
        case type
        when 'initial-response' then Parsers::EventStream::StartConversationInitialResponse.parse(message)
        when 'PlaybackInterruptionEvent' then Parsers::EventStream::PlaybackInterruptionEvent.parse(message)
        when 'TranscriptEvent' then Parsers::EventStream::TranscriptEvent.parse(message)
        when 'IntentResultEvent' then Parsers::EventStream::IntentResultEvent.parse(message)
        when 'TextResponseEvent' then Parsers::EventStream::TextResponseEvent.parse(message)
        when 'AudioResponseEvent' then Parsers::EventStream::AudioResponseEvent.parse(message)
        when 'HeartbeatEvent' then Parsers::EventStream::HeartbeatEvent.parse(message)
        when 'AccessDeniedException' then Parsers::EventStream::AccessDeniedException.parse(message)
        when 'ResourceNotFoundException' then Parsers::EventStream::ResourceNotFoundException.parse(message)
        when 'ValidationException' then Parsers::EventStream::ValidationException.parse(message)
        when 'ThrottlingException' then Parsers::EventStream::ThrottlingException.parse(message)
        when 'InternalServerException' then Parsers::EventStream::InternalServerException.parse(message)
        when 'ConflictException' then Parsers::EventStream::ConflictException.parse(message)
        when 'DependencyFailedException' then Parsers::EventStream::DependencyFailedException.parse(message)
        when 'BadGatewayException' then Parsers::EventStream::BadGatewayException.parse(message)
        end
      end
    end

    class StartConversationOutput < Hearth::EventStream::AsyncOutput

      def signal_playback_interruption_event(params = {})
        input = Params::PlaybackInterruptionEvent.build(params, context: 'params')
        message = Builders::EventStream::PlaybackInterruptionEvent.build(input: input)
        send_event(message)
      end

      def signal_transcript_event(params = {})
        input = Params::TranscriptEvent.build(params, context: 'params')
        message = Builders::EventStream::TranscriptEvent.build(input: input)
        send_event(message)
      end

      def signal_intent_result_event(params = {})
        input = Params::IntentResultEvent.build(params, context: 'params')
        message = Builders::EventStream::IntentResultEvent.build(input: input)
        send_event(message)
      end

      def signal_text_response_event(params = {})
        input = Params::TextResponseEvent.build(params, context: 'params')
        message = Builders::EventStream::TextResponseEvent.build(input: input)
        send_event(message)
      end

      def signal_audio_response_event(params = {})
        input = Params::AudioResponseEvent.build(params, context: 'params')
        message = Builders::EventStream::AudioResponseEvent.build(input: input)
        send_event(message)
      end

      def signal_heartbeat_event(params = {})
        input = Params::HeartbeatEvent.build(params, context: 'params')
        message = Builders::EventStream::HeartbeatEvent.build(input: input)
        send_event(message)
      end

      def signal_access_denied_exception(params = {})
        input = Params::AccessDeniedException.build(params, context: 'params')
        message = Builders::EventStream::AccessDeniedException.build(input: input)
        send_event(message)
      end

      def signal_resource_not_found_exception(params = {})
        input = Params::ResourceNotFoundException.build(params, context: 'params')
        message = Builders::EventStream::ResourceNotFoundException.build(input: input)
        send_event(message)
      end

      def signal_validation_exception(params = {})
        input = Params::ValidationException.build(params, context: 'params')
        message = Builders::EventStream::ValidationException.build(input: input)
        send_event(message)
      end

      def signal_throttling_exception(params = {})
        input = Params::ThrottlingException.build(params, context: 'params')
        message = Builders::EventStream::ThrottlingException.build(input: input)
        send_event(message)
      end

      def signal_internal_server_exception(params = {})
        input = Params::InternalServerException.build(params, context: 'params')
        message = Builders::EventStream::InternalServerException.build(input: input)
        send_event(message)
      end

      def signal_conflict_exception(params = {})
        input = Params::ConflictException.build(params, context: 'params')
        message = Builders::EventStream::ConflictException.build(input: input)
        send_event(message)
      end

      def signal_dependency_failed_exception(params = {})
        input = Params::DependencyFailedException.build(params, context: 'params')
        message = Builders::EventStream::DependencyFailedException.build(input: input)
        send_event(message)
      end

      def signal_bad_gateway_exception(params = {})
        input = Params::BadGatewayException.build(params, context: 'params')
        message = Builders::EventStream::BadGatewayException.build(input: input)
        send_event(message)
      end
    end
  end
end
