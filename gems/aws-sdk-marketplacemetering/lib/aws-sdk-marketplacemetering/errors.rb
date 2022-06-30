# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MarketplaceMetering
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

    class CustomerNotEntitledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CustomerNotEntitledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CustomerNotEntitledException]
      #
      attr_reader :data
    end

    class DisabledApiException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DisabledApiException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DisabledApiException]
      #
      attr_reader :data
    end

    class DuplicateRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateRequestException]
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

    class InternalServiceErrorException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalServiceErrorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalServiceErrorException]
      #
      attr_reader :data
    end

    class InvalidCustomerIdentifierException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCustomerIdentifierException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCustomerIdentifierException]
      #
      attr_reader :data
    end

    class InvalidEndpointRegionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidEndpointRegionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidEndpointRegionException]
      #
      attr_reader :data
    end

    class InvalidProductCodeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidProductCodeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidProductCodeException]
      #
      attr_reader :data
    end

    class InvalidPublicKeyVersionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPublicKeyVersionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPublicKeyVersionException]
      #
      attr_reader :data
    end

    class InvalidRegionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRegionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRegionException]
      #
      attr_reader :data
    end

    class InvalidTagException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTagException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTagException]
      #
      attr_reader :data
    end

    class InvalidTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTokenException]
      #
      attr_reader :data
    end

    class InvalidUsageAllocationsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidUsageAllocationsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidUsageAllocationsException]
      #
      attr_reader :data
    end

    class InvalidUsageDimensionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidUsageDimensionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidUsageDimensionException]
      #
      attr_reader :data
    end

    class PlatformNotSupportedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PlatformNotSupportedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PlatformNotSupportedException]
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

    class TimestampOutOfBoundsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TimestampOutOfBoundsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TimestampOutOfBoundsException]
      #
      attr_reader :data
    end

  end
end
