# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisVideo
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

    class AccountChannelLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccountChannelLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccountChannelLimitExceededException]
      #
      attr_reader :data
    end

    class AccountStreamLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccountStreamLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccountStreamLimitExceededException]
      #
      attr_reader :data
    end

    class ClientLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClientLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClientLimitExceededException]
      #
      attr_reader :data
    end

    class DeviceStreamLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeviceStreamLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeviceStreamLimitExceededException]
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

    class InvalidDeviceException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeviceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeviceException]
      #
      attr_reader :data
    end

    class InvalidResourceFormatException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidResourceFormatException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidResourceFormatException]
      #
      attr_reader :data
    end

    class NoDataRetentionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoDataRetentionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoDataRetentionException]
      #
      attr_reader :data
    end

    class NotAuthorizedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotAuthorizedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotAuthorizedException]
      #
      attr_reader :data
    end

    class ResourceInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceInUseException]
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

    class TagsPerResourceExceededLimitException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagsPerResourceExceededLimitException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagsPerResourceExceededLimitException]
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
