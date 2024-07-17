# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3
  module EventStream

    class SelectObjectContentEventStreamHandler < Hearth::EventStream::HandlerBase

      def on_records(&block)
        on('Records', block)
      end

      def on_stats(&block)
        on('Stats', block)
      end

      def on_progress(&block)
        on('Progress', block)
      end

      def on_cont(&block)
        on('Cont', block)
      end

      def on_end(&block)
        on('End', block)
      end

      def parse_event(type, message)
        case type
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
