# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMakerRuntime
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

    class InternalDependencyException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalDependencyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalDependencyException]
      #
      attr_reader :data
    end

    class InternalFailure < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalFailure.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalFailure]
      #
      attr_reader :data
    end

    class ModelError < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ModelError.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ModelError]
      #
      attr_reader :data
    end

    class ModelNotReadyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ModelNotReadyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ModelNotReadyException]
      #
      attr_reader :data
    end

    class ServiceUnavailable < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceUnavailable.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceUnavailable]
      #
      attr_reader :data
    end

    class ValidationError < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ValidationError.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ValidationError]
      #
      attr_reader :data
    end

  end
end
