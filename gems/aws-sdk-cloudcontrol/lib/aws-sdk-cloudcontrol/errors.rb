# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudControl
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

    class ClientTokenConflictException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClientTokenConflictException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClientTokenConflictException]
      #
      attr_reader :data
    end

    class ConcurrentModificationException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConcurrentModificationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConcurrentModificationException]
      #
      attr_reader :data
    end

    class ConcurrentOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConcurrentOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConcurrentOperationException]
      #
      attr_reader :data
    end

    class GeneralServiceException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::GeneralServiceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::GeneralServiceException]
      #
      attr_reader :data
    end

    class HandlerFailureException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HandlerFailureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HandlerFailureException]
      #
      attr_reader :data
    end

    class HandlerInternalFailureException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HandlerInternalFailureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HandlerInternalFailureException]
      #
      attr_reader :data
    end

    class InvalidCredentialsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCredentialsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCredentialsException]
      #
      attr_reader :data
    end

    class InvalidRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRequestException]
      #
      attr_reader :data
    end

    class NetworkFailureException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NetworkFailureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NetworkFailureException]
      #
      attr_reader :data
    end

    class NotStabilizedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotStabilizedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotStabilizedException]
      #
      attr_reader :data
    end

    class NotUpdatableException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotUpdatableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotUpdatableException]
      #
      attr_reader :data
    end

    class PrivateTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PrivateTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PrivateTypeException]
      #
      attr_reader :data
    end

    class RequestTokenNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RequestTokenNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RequestTokenNotFoundException]
      #
      attr_reader :data
    end

    class ResourceConflictException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceConflictException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceConflictException]
      #
      attr_reader :data
    end

    class ResourceNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceNotFoundException]
      #
      attr_reader :data
    end

    class ServiceInternalErrorException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceInternalErrorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceInternalErrorException]
      #
      attr_reader :data
    end

    class ServiceLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceLimitExceededException]
      #
      attr_reader :data
    end

    class ThrottlingException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ThrottlingException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ThrottlingException]
      #
      attr_reader :data
    end

    class TypeNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TypeNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TypeNotFoundException]
      #
      attr_reader :data
    end

    class UnsupportedActionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedActionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedActionException]
      #
      attr_reader :data
    end

  end
end
