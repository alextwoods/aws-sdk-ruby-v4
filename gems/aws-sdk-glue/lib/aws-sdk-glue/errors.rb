# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Glue
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

    class ConcurrentRunsExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConcurrentRunsExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConcurrentRunsExceededException]
      #
      attr_reader :data
    end

    class ConditionCheckFailureException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConditionCheckFailureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConditionCheckFailureException]
      #
      attr_reader :data
    end

    class ConflictException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConflictException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConflictException]
      #
      attr_reader :data
    end

    class CrawlerNotRunningException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CrawlerNotRunningException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CrawlerNotRunningException]
      #
      attr_reader :data
    end

    class CrawlerRunningException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CrawlerRunningException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CrawlerRunningException]
      #
      attr_reader :data
    end

    class CrawlerStoppingException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CrawlerStoppingException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CrawlerStoppingException]
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

    class IdempotentParameterMismatchException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IdempotentParameterMismatchException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IdempotentParameterMismatchException]
      #
      attr_reader :data
    end

    class IllegalBlueprintStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IllegalBlueprintStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IllegalBlueprintStateException]
      #
      attr_reader :data
    end

    class IllegalSessionStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IllegalSessionStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IllegalSessionStateException]
      #
      attr_reader :data
    end

    class IllegalWorkflowStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IllegalWorkflowStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IllegalWorkflowStateException]
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

    class InvalidStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidStateException]
      #
      attr_reader :data
    end

    class MLTransformNotReadyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MLTransformNotReadyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MLTransformNotReadyException]
      #
      attr_reader :data
    end

    class NoScheduleException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoScheduleException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoScheduleException]
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

    class SchedulerNotRunningException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SchedulerNotRunningException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SchedulerNotRunningException]
      #
      attr_reader :data
    end

    class SchedulerRunningException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SchedulerRunningException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SchedulerRunningException]
      #
      attr_reader :data
    end

    class SchedulerTransitioningException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SchedulerTransitioningException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SchedulerTransitioningException]
      #
      attr_reader :data
    end

    class ValidationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ValidationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ValidationException]
      #
      attr_reader :data
    end

    class VersionMismatchException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::VersionMismatchException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::VersionMismatchException]
      #
      attr_reader :data
    end

  end
end
