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
    # Register event handlers using the +#on_<event_name>+ methods
    # and set the handler using the +event_stream_handler+ option
    # on the {Client#select_object_content} method.
    # @example Basic Usage
    #   handler = SelectObjectContent.new
    #   # register handlers for the events you are interested in
    #   handler.on_initial_response { |initial_response| process(initial_response) }
    #   client.select_object_content(params, event_stream_handler: handler)
    class SelectObjectContentHandler < Hearth::EventStream::HandlerBase

      # Register an event handler for records events
      # @yield [event] Called when records events are received.
      # @yieldparam event [Types::RecordsEvent] the event.
      # @example Event structure
      #   event #=> Types::RecordsEvent
      #   event.payload #=> String
      def on_records(&block)
        on('Records', block)
      end

      # Register an event handler for stats events
      # @yield [event] Called when stats events are received.
      # @yieldparam event [Types::StatsEvent] the event.
      # @example Event structure
      #   event #=> Types::StatsEvent
      #   event.details #=> Types::Stats
      #   event.details.bytes_scanned #=> Integer
      #   event.details.bytes_processed #=> Integer
      #   event.details.bytes_returned #=> Integer
      def on_stats(&block)
        on('Stats', block)
      end

      # Register an event handler for progress events
      # @yield [event] Called when progress events are received.
      # @yieldparam event [Types::ProgressEvent] the event.
      # @example Event structure
      #   event #=> Types::ProgressEvent
      #   event.details #=> Types::Progress
      #   event.details.bytes_scanned #=> Integer
      #   event.details.bytes_processed #=> Integer
      #   event.details.bytes_returned #=> Integer
      def on_progress(&block)
        on('Progress', block)
      end

      # Register an event handler for cont events
      # @yield [event] Called when cont events are received.
      # @yieldparam event [Types::ContinuationEvent] the event.
      # @example Event structure
      #   event #=> Types::ContinuationEvent
      def on_cont(&block)
        on('Cont', block)
      end

      # Register an event handler for end events
      # @yield [event] Called when end events are received.
      # @yieldparam event [Types::EndEvent] the event.
      # @example Event structure
      #   event #=> Types::EndEvent
      def on_end(&block)
        on('End', block)
      end

      private

      def parse_event(type, message)
        case type
        when 'initial-response' then Parsers::EventStream::SelectObjectContentInitialResponse.parse(message)
        when 'Records' then Parsers::EventStream::RecordsEvent.parse(message)
        when 'Stats' then Parsers::EventStream::StatsEvent.parse(message)
        when 'Progress' then Parsers::EventStream::ProgressEvent.parse(message)
        when 'Cont' then Parsers::EventStream::ContinuationEvent.parse(message)
        when 'End' then Parsers::EventStream::EndEvent.parse(message)
        end
      end
    end
  end
end
