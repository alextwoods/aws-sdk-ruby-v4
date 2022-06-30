# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SWF
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

    class DefaultUndefinedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DefaultUndefinedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DefaultUndefinedFault]
      #
      attr_reader :data
    end

    class DomainAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DomainAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DomainAlreadyExistsFault]
      #
      attr_reader :data
    end

    class DomainDeprecatedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DomainDeprecatedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DomainDeprecatedFault]
      #
      attr_reader :data
    end

    class LimitExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LimitExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LimitExceededFault]
      #
      attr_reader :data
    end

    class OperationNotPermittedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OperationNotPermittedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OperationNotPermittedFault]
      #
      attr_reader :data
    end

    class TooManyTagsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyTagsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyTagsFault]
      #
      attr_reader :data
    end

    class TypeAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TypeAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TypeAlreadyExistsFault]
      #
      attr_reader :data
    end

    class TypeDeprecatedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TypeDeprecatedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TypeDeprecatedFault]
      #
      attr_reader :data
    end

    class UnknownResourceFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnknownResourceFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnknownResourceFault]
      #
      attr_reader :data
    end

    class WorkflowExecutionAlreadyStartedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WorkflowExecutionAlreadyStartedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WorkflowExecutionAlreadyStartedFault]
      #
      attr_reader :data
    end

  end
end
