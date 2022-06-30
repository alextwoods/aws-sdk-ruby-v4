# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Connect
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

    class ContactFlowNotPublishedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ContactFlowNotPublishedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ContactFlowNotPublishedException]
      #
      attr_reader :data
    end

    class ContactNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ContactNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ContactNotFoundException]
      #
      attr_reader :data
    end

    class DestinationNotAllowedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DestinationNotAllowedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DestinationNotAllowedException]
      #
      attr_reader :data
    end

    class DuplicateResourceException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateResourceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateResourceException]
      #
      attr_reader :data
    end

    class IdempotencyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IdempotencyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IdempotencyException]
      #
      attr_reader :data
    end

    class InternalServiceException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalServiceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalServiceException]
      #
      attr_reader :data
    end

    class InvalidContactFlowException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidContactFlowException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidContactFlowException]
      #
      attr_reader :data
    end

    class InvalidContactFlowModuleException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidContactFlowModuleException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidContactFlowModuleException]
      #
      attr_reader :data
    end

    class InvalidParameterException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidParameterException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidParameterException]
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

    class OutboundContactNotPermittedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OutboundContactNotPermittedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OutboundContactNotPermittedException]
      #
      attr_reader :data
    end

    class PropertyValidationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PropertyValidationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PropertyValidationException]
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

    class ServiceQuotaExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceQuotaExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceQuotaExceededException]
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

    class UserNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UserNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UserNotFoundException]
      #
      attr_reader :data
    end

  end
end
