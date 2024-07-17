# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kinesis
  module EventStream

    class SubscribeToShardEventStreamHandler < Hearth::EventStream::HandlerBase

      def on_subscribe_to_shard_event(&block)
        on('SubscribeToShardEvent', block)
      end

      def on_resource_not_found_exception(&block)
        on('ResourceNotFoundException', block)
      end

      def on_resource_in_use_exception(&block)
        on('ResourceInUseException', block)
      end

      def on_kms_disabled_exception(&block)
        on('KmsDisabledException', block)
      end

      def on_kms_invalid_state_exception(&block)
        on('KmsInvalidStateException', block)
      end

      def on_kms_access_denied_exception(&block)
        on('KmsAccessDeniedException', block)
      end

      def on_kms_not_found_exception(&block)
        on('KmsNotFoundException', block)
      end

      def on_kms_opt_in_required(&block)
        on('KmsOptInRequired', block)
      end

      def on_kms_throttling_exception(&block)
        on('KmsThrottlingException', block)
      end

      def on_internal_failure_exception(&block)
        on('InternalFailureException', block)
      end

      def parse_event(type, message)
        case type
        when 'SubscribeToShardEvent' then Parsers::EventStream::SubscribeToShardEvent.parse(message)
        when 'ResourceNotFoundException' then Parsers::EventStream::ResourceNotFoundException.parse(message)
        when 'ResourceInUseException' then Parsers::EventStream::ResourceInUseException.parse(message)
        when 'KmsDisabledException' then Parsers::EventStream::KMSDisabledException.parse(message)
        when 'KmsInvalidStateException' then Parsers::EventStream::KMSInvalidStateException.parse(message)
        when 'KmsAccessDeniedException' then Parsers::EventStream::KMSAccessDeniedException.parse(message)
        when 'KmsNotFoundException' then Parsers::EventStream::KMSNotFoundException.parse(message)
        when 'KmsOptInRequired' then Parsers::EventStream::KMSOptInRequired.parse(message)
        when 'KmsThrottlingException' then Parsers::EventStream::KMSThrottlingException.parse(message)
        when 'InternalFailureException' then Parsers::EventStream::InternalFailureException.parse(message)
        end
      end
    end
  end
end
