# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kinesis
  module Errors
    def self.error_code(resp)

      if !(200..299).cover?(resp.status)
        json = Hearth::JSON.parse(resp.body.read)
        resp.body.rewind
        code = json['__type'] || json['code'] if json
      end
      code ||= resp.headers['x-amzn-errortype']
      if code
        code.split('#').last.split(':').first
      end
    rescue Hearth::JSON::ParseError
      "HTTP #{resp.status} Error"
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
      attr_reader :data
    end

    class ExpiredIteratorException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ExpiredIteratorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ExpiredIteratorException]
      attr_reader :data
    end

    class ExpiredNextTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ExpiredNextTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ExpiredNextTokenException]
      attr_reader :data
    end

    class InternalFailureException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalFailureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalFailureException]
      attr_reader :data
    end

    class InvalidArgumentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidArgumentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidArgumentException]
      attr_reader :data
    end

    class KMSAccessDeniedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSAccessDeniedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSAccessDeniedException]
      attr_reader :data
    end

    class KMSDisabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSDisabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSDisabledException]
      attr_reader :data
    end

    class KMSInvalidStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSInvalidStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSInvalidStateException]
      attr_reader :data
    end

    class KMSNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSNotFoundException]
      attr_reader :data
    end

    class KMSOptInRequired < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSOptInRequired.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSOptInRequired]
      attr_reader :data
    end

    class KMSThrottlingException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSThrottlingException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSThrottlingException]
      attr_reader :data
    end

    class LimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LimitExceededException]
      attr_reader :data
    end

    class ProvisionedThroughputExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ProvisionedThroughputExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ProvisionedThroughputExceededException]
      attr_reader :data
    end

    class ResourceInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceInUseException]
      attr_reader :data
    end

    class ResourceNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceNotFoundException]
      attr_reader :data
    end

    class ValidationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ValidationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ValidationException]
      attr_reader :data
    end

  end
end
