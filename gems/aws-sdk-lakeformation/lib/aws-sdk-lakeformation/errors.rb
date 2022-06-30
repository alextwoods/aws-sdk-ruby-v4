# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LakeFormation
  module Errors
    def self.error_code(resp)
      if !(200..299).cover?(resp.status)
        json = Hearth::JSON.load(resp.body)
        resp.body.rewind
        code = json['__type'] || json['code'] if json
      end
      code ||= resp.headers['x-amzn-errortype']
      if code
        code.split('#').last.split(':').first
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

    class AccessDeniedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccessDeniedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccessDeniedException]
      #
      attr_reader :data
    end

    class AlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AlreadyExistsException]
      #
      attr_reader :data
    end

    class ConcurrentModificationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConcurrentModificationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConcurrentModificationException]
      #
      attr_reader :data
    end

    class EntityNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EntityNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EntityNotFoundException]
      #
      attr_reader :data
    end

    class ExpiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ExpiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ExpiredException]
      #
      attr_reader :data
    end

    class GlueEncryptionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::GlueEncryptionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::GlueEncryptionException]
      #
      attr_reader :data
    end

    class InternalServiceException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalServiceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalServiceException]
      #
      attr_reader :data
    end

    class InvalidInputException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInputException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInputException]
      #
      attr_reader :data
    end

    class OperationTimeoutException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OperationTimeoutException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OperationTimeoutException]
      #
      attr_reader :data
    end

    class PermissionTypeMismatchException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PermissionTypeMismatchException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PermissionTypeMismatchException]
      #
      attr_reader :data
    end

    class ResourceNotReadyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceNotReadyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceNotReadyException]
      #
      attr_reader :data
    end

    class ResourceNumberLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceNumberLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceNumberLimitExceededException]
      #
      attr_reader :data
    end

    class StatisticsNotReadyYetException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StatisticsNotReadyYetException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StatisticsNotReadyYetException]
      #
      attr_reader :data
    end

    class ThrottledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ThrottledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ThrottledException]
      #
      attr_reader :data

      def retryable?
        true
      end

      def throttling?
        true
      end
    end

    class TransactionCanceledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TransactionCanceledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TransactionCanceledException]
      #
      attr_reader :data
    end

    class TransactionCommitInProgressException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TransactionCommitInProgressException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TransactionCommitInProgressException]
      #
      attr_reader :data
    end

    class TransactionCommittedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TransactionCommittedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TransactionCommittedException]
      #
      attr_reader :data
    end

    class WorkUnitsNotReadyYetException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WorkUnitsNotReadyYetException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WorkUnitsNotReadyYetException]
      #
      attr_reader :data
    end

  end
end
