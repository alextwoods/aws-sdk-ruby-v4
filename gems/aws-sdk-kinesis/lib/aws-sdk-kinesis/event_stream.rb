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
    # Register event handlers using the `#on_<event_name>` methods
    # and set the handler using the `event_stream_handler` option
    # on the {Client#subscribe_to_shard} method.
    # @example Basic Usage
    #   handler = SubscribeToShard.new
    #   # register handlers for the events you are interested in
    #   handler.on_initial_response { |initial_response| process(initial_response) }
    #   client.subscribe_to_shard(params, event_stream_handler: handler)
    class SubscribeToShardHandler < Hearth::EventStream::HandlerBase
      # Register an event handler for the initial response.
      # @yield [event] Called when the initial response is received.
      # @yieldparam event [Types::SubscribeToShardOutput] the initial response
      # @example Event structure
      #   event #=> Types::SubscribeToShardOutput
      def on_initial_response(&block)
        on(Types::SubscribeToShardOutput, block)
      end

      # Register an event handler for subscribe_to_shard_event events
      # @yield [event] Called when subscribe_to_shard_event events are received.
      # @yieldparam event [Types::SubscribeToShardEventStream::SubscribeToShardEvent] the event.
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
        on(Types::SubscribeToShardEventStream::SubscribeToShardEvent, block)
      end

      # Register an event handler for any unknown events.
      # @yield [event] Called when unknown events are received.
      # @yieldparam event [Types::SubscribeToShardEventStream::Unknown] the event with value set to the Message
      def on_unknown_event(&block)
        on(Types::SubscribeToShardEventStream::Unknown, block)
      end

      private

      def parse_event(type, message)
        case type
        when 'initial-response'
          Parsers::EventStream::SubscribeToShardInitialResponse.parse(message)
        when 'SubscribeToShardEvent'
          Types::SubscribeToShardEventStream::SubscribeToShardEvent.new(Parsers::EventStream::SubscribeToShardEvent.parse(message))
        when 'ResourceNotFoundException'
          Types::SubscribeToShardEventStream::ResourceNotFoundException.new(Parsers::EventStream::ResourceNotFoundException.parse(message))
        when 'ResourceInUseException'
          Types::SubscribeToShardEventStream::ResourceInUseException.new(Parsers::EventStream::ResourceInUseException.parse(message))
        when 'KmsDisabledException'
          Types::SubscribeToShardEventStream::KmsDisabledException.new(Parsers::EventStream::KMSDisabledException.parse(message))
        when 'KmsInvalidStateException'
          Types::SubscribeToShardEventStream::KmsInvalidStateException.new(Parsers::EventStream::KMSInvalidStateException.parse(message))
        when 'KmsAccessDeniedException'
          Types::SubscribeToShardEventStream::KmsAccessDeniedException.new(Parsers::EventStream::KMSAccessDeniedException.parse(message))
        when 'KmsNotFoundException'
          Types::SubscribeToShardEventStream::KmsNotFoundException.new(Parsers::EventStream::KMSNotFoundException.parse(message))
        when 'KmsOptInRequired'
          Types::SubscribeToShardEventStream::KmsOptInRequired.new(Parsers::EventStream::KMSOptInRequired.parse(message))
        when 'KmsThrottlingException'
          Types::SubscribeToShardEventStream::KmsThrottlingException.new(Parsers::EventStream::KMSThrottlingException.parse(message))
        when 'InternalFailureException'
          Types::SubscribeToShardEventStream::InternalFailureException.new(Parsers::EventStream::InternalFailureException.parse(message))
        else
          Types::SubscribeToShardEventStream::Unknown.new(name: type, value: message)
        end
      end

      def parse_exception_event(type, message)
        case type
        when 'ResourceNotFoundException'
          data = Parsers::EventStream::ResourceNotFoundException.parse(message)
          Errors::ResourceNotFoundException.new(data: data, error_code: 'AWS::SDK::Kinesis::Types::SubscribeToShardEventStream::ResourceNotFoundException')
        when 'ResourceInUseException'
          data = Parsers::EventStream::ResourceInUseException.parse(message)
          Errors::ResourceInUseException.new(data: data, error_code: 'AWS::SDK::Kinesis::Types::SubscribeToShardEventStream::ResourceInUseException')
        when 'KmsDisabledException'
          data = Parsers::EventStream::KMSDisabledException.parse(message)
          Errors::KMSDisabledException.new(data: data, error_code: 'AWS::SDK::Kinesis::Types::SubscribeToShardEventStream::KmsDisabledException')
        when 'KmsInvalidStateException'
          data = Parsers::EventStream::KMSInvalidStateException.parse(message)
          Errors::KMSInvalidStateException.new(data: data, error_code: 'AWS::SDK::Kinesis::Types::SubscribeToShardEventStream::KmsInvalidStateException')
        when 'KmsAccessDeniedException'
          data = Parsers::EventStream::KMSAccessDeniedException.parse(message)
          Errors::KMSAccessDeniedException.new(data: data, error_code: 'AWS::SDK::Kinesis::Types::SubscribeToShardEventStream::KmsAccessDeniedException')
        when 'KmsNotFoundException'
          data = Parsers::EventStream::KMSNotFoundException.parse(message)
          Errors::KMSNotFoundException.new(data: data, error_code: 'AWS::SDK::Kinesis::Types::SubscribeToShardEventStream::KmsNotFoundException')
        when 'KmsOptInRequired'
          data = Parsers::EventStream::KMSOptInRequired.parse(message)
          Errors::KMSOptInRequired.new(data: data, error_code: 'AWS::SDK::Kinesis::Types::SubscribeToShardEventStream::KmsOptInRequired')
        when 'KmsThrottlingException'
          data = Parsers::EventStream::KMSThrottlingException.parse(message)
          Errors::KMSThrottlingException.new(data: data, error_code: 'AWS::SDK::Kinesis::Types::SubscribeToShardEventStream::KmsThrottlingException')
        when 'InternalFailureException'
          data = Parsers::EventStream::InternalFailureException.parse(message)
          Errors::InternalFailureException.new(data: data, error_code: 'AWS::SDK::Kinesis::Types::SubscribeToShardEventStream::InternalFailureException')
        else
          data = Types::SubscribeToShardEventStream::Unknown.new(name: type, value: message)
          Errors::ApiError.new(error_code: type, metadata: {data: data})
        end
      end

      def parse_error_event(message)
        error_code = message.headers.delete(':error-code')&.value
        error_message = message.headers.delete(':error-message')&.value
        metadata = {message: message}
        Errors::ApiError.new(error_code: error_code, metadata: metadata, message: error_message)
      end
    end
  end
end
