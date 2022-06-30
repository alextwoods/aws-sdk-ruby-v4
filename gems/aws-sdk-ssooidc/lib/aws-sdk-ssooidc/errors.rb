# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOOIDC
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

    class AuthorizationPendingException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AuthorizationPendingException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AuthorizationPendingException]
      #
      attr_reader :data
    end

    class ExpiredTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ExpiredTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ExpiredTokenException]
      #
      attr_reader :data
    end

    class InternalServerException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalServerException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalServerException]
      #
      attr_reader :data
    end

    class InvalidClientException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidClientException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidClientException]
      #
      attr_reader :data
    end

    class InvalidClientMetadataException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidClientMetadataException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidClientMetadataException]
      #
      attr_reader :data
    end

    class InvalidGrantException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidGrantException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidGrantException]
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

    class InvalidScopeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidScopeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidScopeException]
      #
      attr_reader :data
    end

    class SlowDownException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SlowDownException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SlowDownException]
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

    class UnsupportedGrantTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedGrantTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedGrantTypeException]
      #
      attr_reader :data
    end

  end
end
