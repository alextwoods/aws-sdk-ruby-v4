# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kinesis
  module EventStream

    # EventStreamHandler for the the {Client#subscribe_to_shard} operation.
    # Register event handlers using the +#on_<event_name>+ methods
    # and set the handler using the +event_stream_handler+ option
    # on the {Client#subscribe_to_shard} method.
    # @example Basic Usage
    #   handler = SubscribeToShard.new
    #   # register handlers for the events you are interested in
    #   handler.on_initial_response { |initial_response| process(initial_response) }
    #   client.subscribe_to_shard(params, event_stream_handler: handler)
    class SubscribeToShardHandler < Hearth::EventStream::HandlerBase

      # Register an event handler for subscribe_to_shard_event events
      # @yield [event] Called when subscribe_to_shard_event events are received.
      # @yieldparam event [Types::SubscribeToShardEvent] the event.
      # @example Event structure
      #   event #=> Types::SubscribeToShardEvent
      #   event.records #=> Array<Record>
      #   event.records[0] #=> Types::Record
      #   event.records[0].sequence_number #=> String
      #   event.records[0].approximate_arrival_timestamp #=> Time
      #   event.records[0].data #=> String
      #   event.records[0].partition_key #=> String
      #   event.records[0].encryption_type #=> String, one of ["NONE", "KMS"]
      #   event.continuation_sequence_number #=> String
      #   event.millis_behind_latest #=> Integer
      #   event.child_shards #=> Array<ChildShard>
      #   event.child_shards[0] #=> Types::ChildShard
      #   event.child_shards[0].shard_id #=> String
      #   event.child_shards[0].parent_shards #=> Array<String>
      #   event.child_shards[0].parent_shards[0] #=> String
      #   event.child_shards[0].hash_key_range #=> Types::HashKeyRange
      #   event.child_shards[0].hash_key_range.starting_hash_key #=> String
      #   event.child_shards[0].hash_key_range.ending_hash_key #=> String
      def on_subscribe_to_shard_event(&block)
        on('SubscribeToShardEvent', block)
      end

      # Register an event handler for resource_not_found_exception events
      # @yield [event] Called when resource_not_found_exception events are received.
      # @yieldparam event [Types::ResourceNotFoundException] the event.
      # @example Event structure
      #   event #=> Types::ResourceNotFoundException
      #   event.message #=> String
      def on_resource_not_found_exception(&block)
        on('ResourceNotFoundException', block)
      end

      # Register an event handler for resource_in_use_exception events
      # @yield [event] Called when resource_in_use_exception events are received.
      # @yieldparam event [Types::ResourceInUseException] the event.
      # @example Event structure
      #   event #=> Types::ResourceInUseException
      #   event.message #=> String
      def on_resource_in_use_exception(&block)
        on('ResourceInUseException', block)
      end

      # Register an event handler for kms_disabled_exception events
      # @yield [event] Called when kms_disabled_exception events are received.
      # @yieldparam event [Types::KMSDisabledException] the event.
      # @example Event structure
      #   event #=> Types::KMSDisabledException
      #   event.message #=> String
      def on_kms_disabled_exception(&block)
        on('KmsDisabledException', block)
      end

      # Register an event handler for kms_invalid_state_exception events
      # @yield [event] Called when kms_invalid_state_exception events are received.
      # @yieldparam event [Types::KMSInvalidStateException] the event.
      # @example Event structure
      #   event #=> Types::KMSInvalidStateException
      #   event.message #=> String
      def on_kms_invalid_state_exception(&block)
        on('KmsInvalidStateException', block)
      end

      # Register an event handler for kms_access_denied_exception events
      # @yield [event] Called when kms_access_denied_exception events are received.
      # @yieldparam event [Types::KMSAccessDeniedException] the event.
      # @example Event structure
      #   event #=> Types::KMSAccessDeniedException
      #   event.message #=> String
      def on_kms_access_denied_exception(&block)
        on('KmsAccessDeniedException', block)
      end

      # Register an event handler for kms_not_found_exception events
      # @yield [event] Called when kms_not_found_exception events are received.
      # @yieldparam event [Types::KMSNotFoundException] the event.
      # @example Event structure
      #   event #=> Types::KMSNotFoundException
      #   event.message #=> String
      def on_kms_not_found_exception(&block)
        on('KmsNotFoundException', block)
      end

      # Register an event handler for kms_opt_in_required events
      # @yield [event] Called when kms_opt_in_required events are received.
      # @yieldparam event [Types::KMSOptInRequired] the event.
      # @example Event structure
      #   event #=> Types::KMSOptInRequired
      #   event.message #=> String
      def on_kms_opt_in_required(&block)
        on('KmsOptInRequired', block)
      end

      # Register an event handler for kms_throttling_exception events
      # @yield [event] Called when kms_throttling_exception events are received.
      # @yieldparam event [Types::KMSThrottlingException] the event.
      # @example Event structure
      #   event #=> Types::KMSThrottlingException
      #   event.message #=> String
      def on_kms_throttling_exception(&block)
        on('KmsThrottlingException', block)
      end

      # Register an event handler for internal_failure_exception events
      # @yield [event] Called when internal_failure_exception events are received.
      # @yieldparam event [Types::InternalFailureException] the event.
      # @example Event structure
      #   event #=> Types::InternalFailureException
      #   event.message #=> String
      def on_internal_failure_exception(&block)
        on('InternalFailureException', block)
      end

      private

      def parse_event(type, message)
        case type
        when 'initial-response' then Parsers::EventStream::SubscribeToShardInitialResponse.parse(message)
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
