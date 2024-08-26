# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3
  module EventStream

    # EventStreamHandler for the the {Client#select_object_content} operation.
    # Register event handlers using the `#on_<event_name>` methods
    # and set the handler using the `event_stream_handler` option
    # on the {Client#select_object_content} method.
    # @example Basic Usage
    #   handler = SelectObjectContent.new
    #   # register handlers for the events you are interested in
    #   handler.on_initial_response { |initial_response| process(initial_response) }
    #   client.select_object_content(params, event_stream_handler: handler)
    class SelectObjectContentHandler < Hearth::EventStream::HandlerBase
      # Register an event handler for the initial response.
      # @yield [event] Called when the initial response is received.
      # @yieldparam event [Types::SelectObjectContentOutput] the initial response
      # @example Event structure
      #   event #=> Types::SelectObjectContentOutput
      def on_initial_response(&block)
        on(Types::SelectObjectContentOutput, block)
      end

      # Register an event handler for records events
      # @yield [event] Called when records events are received.
      # @yieldparam event [Types::SelectObjectContentEventStream::Records] the event.
      # @example Event structure
      #   event #=> Types::RecordsEvent
      #   event.payload #=> String
      def on_records(&block)
        on(Types::SelectObjectContentEventStream::Records, block)
      end

      # Register an event handler for stats events
      # @yield [event] Called when stats events are received.
      # @yieldparam event [Types::SelectObjectContentEventStream::Stats] the event.
      # @example Event structure
      #   event #=> Types::StatsEvent
      #   event.details #=> Types::Stats
      #   event.details.bytes_scanned #=> Integer
      #   event.details.bytes_processed #=> Integer
      #   event.details.bytes_returned #=> Integer
      def on_stats(&block)
        on(Types::SelectObjectContentEventStream::Stats, block)
      end

      # Register an event handler for progress events
      # @yield [event] Called when progress events are received.
      # @yieldparam event [Types::SelectObjectContentEventStream::Progress] the event.
      # @example Event structure
      #   event #=> Types::ProgressEvent
      #   event.details #=> Types::Progress
      #   event.details.bytes_scanned #=> Integer
      #   event.details.bytes_processed #=> Integer
      #   event.details.bytes_returned #=> Integer
      def on_progress(&block)
        on(Types::SelectObjectContentEventStream::Progress, block)
      end

      # Register an event handler for cont events
      # @yield [event] Called when cont events are received.
      # @yieldparam event [Types::SelectObjectContentEventStream::Cont] the event.
      # @example Event structure
      #   event #=> Types::ContinuationEvent
      def on_cont(&block)
        on(Types::SelectObjectContentEventStream::Cont, block)
      end

      # Register an event handler for end events
      # @yield [event] Called when end events are received.
      # @yieldparam event [Types::SelectObjectContentEventStream::End] the event.
      # @example Event structure
      #   event #=> Types::EndEvent
      def on_end(&block)
        on(Types::SelectObjectContentEventStream::End, block)
      end

      # Register an event handler for any unknown events.
      # @yield [event] Called when unknown events are received.
      # @yieldparam event [Types::SelectObjectContentEventStream::Unknown] the event with value set to the Message
      def on_unknown_event(&block)
        on(Types::SelectObjectContentEventStream::Unknown, block)
      end

      private

      def parse_event(type, message)
        case type
        when 'initial-response'
          Parsers::EventStream::SelectObjectContentInitialResponse.parse(message)
        when 'Records'
          Types::SelectObjectContentEventStream::Records.new(Parsers::EventStream::RecordsEvent.parse(message))
        when 'Stats'
          Types::SelectObjectContentEventStream::Stats.new(Parsers::EventStream::StatsEvent.parse(message))
        when 'Progress'
          Types::SelectObjectContentEventStream::Progress.new(Parsers::EventStream::ProgressEvent.parse(message))
        when 'Cont'
          Types::SelectObjectContentEventStream::Cont.new(Parsers::EventStream::ContinuationEvent.parse(message))
        when 'End'
          Types::SelectObjectContentEventStream::End.new(Parsers::EventStream::EndEvent.parse(message))
        else
          Types::SelectObjectContentEventStream::Unknown.new(name: type, value: message)
        end
      end

      def parse_exception_event(type, message)
        data = Types::SelectObjectContentEventStream::Unknown.new(name: type, value: message)
        Errors::ApiError.new(error_code: type, metadata: {data: data})
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
