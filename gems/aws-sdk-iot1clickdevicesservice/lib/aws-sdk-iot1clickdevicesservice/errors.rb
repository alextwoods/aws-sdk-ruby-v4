# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoT1ClickDevicesService
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

    class InternalFailureException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalFailureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalFailureException]
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

    class PreconditionFailedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PreconditionFailedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PreconditionFailedException]
      #
      attr_reader :data
    end

    class RangeNotSatisfiableException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RangeNotSatisfiableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RangeNotSatisfiableException]
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

  end
end