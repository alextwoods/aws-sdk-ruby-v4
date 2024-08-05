# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::TranscribeStreaming
  # @api private
  module Telemetry

    class StartCallAnalyticsStreamTranscription
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Transcribe Streaming',
          'rpc.method' => 'StartCallAnalyticsStreamTranscription',
          'code.function' => 'start_call_analytics_stream_transcription',
          'code.namespace' => 'AWS::SDK::TranscribeStreaming::Telemetry'
        }
        context.tracer.in_span(
          'Transcribe Streaming.StartCallAnalyticsStreamTranscription',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class StartMedicalStreamTranscription
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Transcribe Streaming',
          'rpc.method' => 'StartMedicalStreamTranscription',
          'code.function' => 'start_medical_stream_transcription',
          'code.namespace' => 'AWS::SDK::TranscribeStreaming::Telemetry'
        }
        context.tracer.in_span(
          'Transcribe Streaming.StartMedicalStreamTranscription',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class StartStreamTranscription
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Transcribe Streaming',
          'rpc.method' => 'StartStreamTranscription',
          'code.function' => 'start_stream_transcription',
          'code.namespace' => 'AWS::SDK::TranscribeStreaming::Telemetry'
        }
        context.tracer.in_span(
          'Transcribe Streaming.StartStreamTranscription',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

  end
end
