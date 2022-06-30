# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Chime
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

    class BadRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BadRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BadRequestException]
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

    class ForbiddenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ForbiddenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ForbiddenException]
      #
      attr_reader :data
    end

    class NotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotFoundException]
      #
      attr_reader :data
    end

    class ResourceLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceLimitExceededException]
      #
      attr_reader :data
    end

    class ServiceFailureException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceFailureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceFailureException]
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

    class ThrottledClientException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ThrottledClientException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ThrottledClientException]
      #
      attr_reader :data
    end

    class UnauthorizedClientException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnauthorizedClientException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnauthorizedClientException]
      #
      attr_reader :data
    end

    class UnprocessableEntityException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnprocessableEntityException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnprocessableEntityException]
      #
      attr_reader :data
    end

  end
end
