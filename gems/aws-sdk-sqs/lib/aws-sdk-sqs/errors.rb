# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SQS
  module Errors
    def self.error_code(resp)
      custom_errors = {
        "AWS.SimpleQueueService.BatchEntryIdsNotDistinct" => "BatchEntryIdsNotDistinct",
        "AWS.SimpleQueueService.BatchRequestTooLong" => "BatchRequestTooLong",
        "AWS.SimpleQueueService.EmptyBatchRequest" => "EmptyBatchRequest",
        "AWS.SimpleQueueService.InvalidBatchEntryId" => "InvalidBatchEntryId",
        "AWS.SimpleQueueService.MessageNotInflight" => "MessageNotInflight",
        "OverLimit" => "OverLimit",
        "AWS.SimpleQueueService.PurgeQueueInProgress" => "PurgeQueueInProgress",
        "AWS.SimpleQueueService.QueueDeletedRecently" => "QueueDeletedRecently",
        "AWS.SimpleQueueService.NonExistentQueue" => "QueueDoesNotExist",
        "QueueAlreadyExists" => "QueueNameExists",
        "AWS.SimpleQueueService.TooManyEntriesInBatchRequest" => "TooManyEntriesInBatchRequest",
        "AWS.SimpleQueueService.UnsupportedOperation" => "UnsupportedOperation"
      }

      if !(200..299).cover?(resp.status)
        body = resp.body.read
        resp.body.rewind
        xml = Hearth::XML.parse(body) unless body.empty?
        return unless xml && xml.name == 'ErrorResponse'
        code = xml.at('Error')&.text_at('Code')
        custom_errors[code] || code
      end
    end

    # Base class for all errors returned by this service
    class ApiError < Hearth::HTTP::ApiError; end

    # Base class for all errors returned where the client is at fault.
    # These are generally errors with 4XX HTTP status codes.
    class ApiClientError < ApiError; end

    # Base class for all errors returned where the server is at fault.
    # These are generally errors with 5XX HTTP status codes.
    class ApiServerError < ApiError; end

    # Base class for all errors returned where the service returned
    # a 3XX redirection.
    class ApiRedirectError < ApiError
      def initialize(location:, **kwargs)
        @location = location
        super(**kwargs)
      end

      # @return [String] location
      attr_reader :location
    end

    class BatchEntryIdsNotDistinct < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BatchEntryIdsNotDistinct.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BatchEntryIdsNotDistinct]
      #
      attr_reader :data
    end

    class BatchRequestTooLong < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BatchRequestTooLong.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BatchRequestTooLong]
      #
      attr_reader :data
    end

    class EmptyBatchRequest < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EmptyBatchRequest.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EmptyBatchRequest]
      #
      attr_reader :data
    end

    class InvalidAttributeName < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAttributeName.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAttributeName]
      #
      attr_reader :data
    end

    class InvalidBatchEntryId < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidBatchEntryId.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidBatchEntryId]
      #
      attr_reader :data
    end

    class InvalidIdFormat < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidIdFormat.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidIdFormat]
      #
      attr_reader :data
    end

    class InvalidMessageContents < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidMessageContents.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidMessageContents]
      #
      attr_reader :data
    end

    class MessageNotInflight < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MessageNotInflight.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MessageNotInflight]
      #
      attr_reader :data
    end

    class OverLimit < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OverLimit.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OverLimit]
      #
      attr_reader :data
    end

    class PurgeQueueInProgress < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PurgeQueueInProgress.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PurgeQueueInProgress]
      #
      attr_reader :data
    end

    class QueueDeletedRecently < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::QueueDeletedRecently.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::QueueDeletedRecently]
      #
      attr_reader :data
    end

    class QueueDoesNotExist < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::QueueDoesNotExist.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::QueueDoesNotExist]
      #
      attr_reader :data
    end

    class QueueNameExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::QueueNameExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::QueueNameExists]
      #
      attr_reader :data
    end

    class ReceiptHandleIsInvalid < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReceiptHandleIsInvalid.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReceiptHandleIsInvalid]
      #
      attr_reader :data
    end

    class TooManyEntriesInBatchRequest < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyEntriesInBatchRequest.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyEntriesInBatchRequest]
      #
      attr_reader :data
    end

    class UnsupportedOperation < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedOperation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedOperation]
      #
      attr_reader :data
    end

  end
end
