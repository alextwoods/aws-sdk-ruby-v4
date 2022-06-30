# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EC2InstanceConnect
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

    class AuthException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AuthException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AuthException]
      #
      attr_reader :data
    end

    class EC2InstanceNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EC2InstanceNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EC2InstanceNotFoundException]
      #
      attr_reader :data
    end

    class EC2InstanceStateInvalidException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EC2InstanceStateInvalidException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EC2InstanceStateInvalidException]
      #
      attr_reader :data
    end

    class EC2InstanceTypeInvalidException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EC2InstanceTypeInvalidException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EC2InstanceTypeInvalidException]
      #
      attr_reader :data
    end

    class InvalidArgsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidArgsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidArgsException]
      #
      attr_reader :data
    end

    class SerialConsoleAccessDisabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SerialConsoleAccessDisabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SerialConsoleAccessDisabledException]
      #
      attr_reader :data
    end

    class SerialConsoleSessionLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SerialConsoleSessionLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SerialConsoleSessionLimitExceededException]
      #
      attr_reader :data
    end

    class SerialConsoleSessionUnavailableException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SerialConsoleSessionUnavailableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SerialConsoleSessionUnavailableException]
      #
      attr_reader :data
    end

    class ServiceException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceException]
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

  end
end
