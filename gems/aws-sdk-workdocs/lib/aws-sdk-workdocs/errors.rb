# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkDocs
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

    class ConflictingOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConflictingOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConflictingOperationException]
      #
      attr_reader :data
    end

    class CustomMetadataLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CustomMetadataLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CustomMetadataLimitExceededException]
      #
      attr_reader :data
    end

    class DeactivatingLastSystemUserException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeactivatingLastSystemUserException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeactivatingLastSystemUserException]
      #
      attr_reader :data
    end

    class DocumentLockedForCommentsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DocumentLockedForCommentsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DocumentLockedForCommentsException]
      #
      attr_reader :data
    end

    class DraftUploadOutOfSyncException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DraftUploadOutOfSyncException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DraftUploadOutOfSyncException]
      #
      attr_reader :data
    end

    class EntityAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EntityAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EntityAlreadyExistsException]
      #
      attr_reader :data
    end

    class EntityNotExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EntityNotExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EntityNotExistsException]
      #
      attr_reader :data
    end

    class FailedDependencyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FailedDependencyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FailedDependencyException]
      #
      attr_reader :data
    end

    class IllegalUserStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IllegalUserStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IllegalUserStateException]
      #
      attr_reader :data
    end

    class InvalidArgumentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidArgumentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidArgumentException]
      #
      attr_reader :data
    end

    class InvalidCommentOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCommentOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCommentOperationException]
      #
      attr_reader :data
    end

    class InvalidOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOperationException]
      #
      attr_reader :data
    end

    class InvalidPasswordException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPasswordException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPasswordException]
      #
      attr_reader :data
    end

    class LimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LimitExceededException]
      #
      attr_reader :data
    end

    class ProhibitedStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ProhibitedStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ProhibitedStateException]
      #
      attr_reader :data
    end

    class RequestedEntityTooLargeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RequestedEntityTooLargeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RequestedEntityTooLargeException]
      #
      attr_reader :data
    end

    class ResourceAlreadyCheckedOutException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceAlreadyCheckedOutException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceAlreadyCheckedOutException]
      #
      attr_reader :data
    end

    class ServiceUnavailableException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceUnavailableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceUnavailableException]
      #
      attr_reader :data
    end

    class StorageLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StorageLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StorageLimitExceededException]
      #
      attr_reader :data
    end

    class StorageLimitWillExceedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StorageLimitWillExceedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StorageLimitWillExceedException]
      #
      attr_reader :data
    end

    class TooManyLabelsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyLabelsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyLabelsException]
      #
      attr_reader :data
    end

    class TooManySubscriptionsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManySubscriptionsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManySubscriptionsException]
      #
      attr_reader :data
    end

    class UnauthorizedOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnauthorizedOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnauthorizedOperationException]
      #
      attr_reader :data
    end

    class UnauthorizedResourceAccessException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnauthorizedResourceAccessException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnauthorizedResourceAccessException]
      #
      attr_reader :data
    end

  end
end
