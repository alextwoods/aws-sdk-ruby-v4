# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexRuntimeV2
  # @api private
  module Telemetry

    class DeleteSession
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Lex Runtime V2',
          'rpc.method' => 'DeleteSession',
          'code.function' => 'delete_session',
          'code.namespace' => 'AWS::SDK::LexRuntimeV2::Telemetry'
        }
        context.tracer.in_span(
          'Lex Runtime V2.DeleteSession',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class GetSession
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Lex Runtime V2',
          'rpc.method' => 'GetSession',
          'code.function' => 'get_session',
          'code.namespace' => 'AWS::SDK::LexRuntimeV2::Telemetry'
        }
        context.tracer.in_span(
          'Lex Runtime V2.GetSession',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class PutSession
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Lex Runtime V2',
          'rpc.method' => 'PutSession',
          'code.function' => 'put_session',
          'code.namespace' => 'AWS::SDK::LexRuntimeV2::Telemetry'
        }
        context.tracer.in_span(
          'Lex Runtime V2.PutSession',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class RecognizeText
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Lex Runtime V2',
          'rpc.method' => 'RecognizeText',
          'code.function' => 'recognize_text',
          'code.namespace' => 'AWS::SDK::LexRuntimeV2::Telemetry'
        }
        context.tracer.in_span(
          'Lex Runtime V2.RecognizeText',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class RecognizeUtterance
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Lex Runtime V2',
          'rpc.method' => 'RecognizeUtterance',
          'code.function' => 'recognize_utterance',
          'code.namespace' => 'AWS::SDK::LexRuntimeV2::Telemetry'
        }
        context.tracer.in_span(
          'Lex Runtime V2.RecognizeUtterance',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

    class StartConversation
      def self.in_span(context, &block)
        attributes = {
          'rpc.service' => 'Lex Runtime V2',
          'rpc.method' => 'StartConversation',
          'code.function' => 'start_conversation',
          'code.namespace' => 'AWS::SDK::LexRuntimeV2::Telemetry'
        }
        context.tracer.in_span(
          'Lex Runtime V2.StartConversation',
          attributes: attributes,
          kind: Hearth::Telemetry::SpanKind::CLIENT,
          &block
        )
      end
    end

  end
end
