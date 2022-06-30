# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceDiscovery
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

    class CustomHealthNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CustomHealthNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CustomHealthNotFound]
      #
      attr_reader :data
    end

    class DuplicateRequest < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateRequest.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateRequest]
      #
      attr_reader :data
    end

    class InstanceNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InstanceNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InstanceNotFound]
      #
      attr_reader :data
    end

    class InvalidInput < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInput.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInput]
      #
      attr_reader :data
    end

    class NamespaceAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NamespaceAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NamespaceAlreadyExists]
      #
      attr_reader :data
    end

    class NamespaceNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NamespaceNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NamespaceNotFound]
      #
      attr_reader :data
    end

    class OperationNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OperationNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OperationNotFound]
      #
      attr_reader :data
    end

    class RequestLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RequestLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RequestLimitExceeded]
      #
      attr_reader :data
    end

    class ResourceInUse < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceInUse]
      #
      attr_reader :data
    end

    class ResourceLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceLimitExceeded]
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

    class ServiceAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceAlreadyExists]
      #
      attr_reader :data
    end

    class ServiceNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceNotFound]
      #
      attr_reader :data
    end

    class TooManyTagsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyTagsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyTagsException]
      #
      attr_reader :data
    end

  end
end
