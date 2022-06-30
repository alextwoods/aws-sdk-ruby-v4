# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GlobalAccelerator
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

    class AcceleratorNotDisabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AcceleratorNotDisabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AcceleratorNotDisabledException]
      #
      attr_reader :data
    end

    class AcceleratorNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AcceleratorNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AcceleratorNotFoundException]
      #
      attr_reader :data
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

    class AssociatedEndpointGroupFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AssociatedEndpointGroupFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AssociatedEndpointGroupFoundException]
      #
      attr_reader :data
    end

    class AssociatedListenerFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AssociatedListenerFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AssociatedListenerFoundException]
      #
      attr_reader :data
    end

    class ByoipCidrNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ByoipCidrNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ByoipCidrNotFoundException]
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

    class EndpointAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EndpointAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EndpointAlreadyExistsException]
      #
      attr_reader :data
    end

    class EndpointGroupAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EndpointGroupAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EndpointGroupAlreadyExistsException]
      #
      attr_reader :data
    end

    class EndpointGroupNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EndpointGroupNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EndpointGroupNotFoundException]
      #
      attr_reader :data
    end

    class EndpointNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EndpointNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EndpointNotFoundException]
      #
      attr_reader :data
    end

    class IncorrectCidrStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IncorrectCidrStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IncorrectCidrStateException]
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

    class InvalidNextTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidNextTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidNextTokenException]
      #
      attr_reader :data
    end

    class InvalidPortRangeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPortRangeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPortRangeException]
      #
      attr_reader :data
    end

    class LimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LimitExceededException]
      #
      attr_reader :data
    end

    class ListenerNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ListenerNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ListenerNotFoundException]
      #
      attr_reader :data
    end

  end
end
