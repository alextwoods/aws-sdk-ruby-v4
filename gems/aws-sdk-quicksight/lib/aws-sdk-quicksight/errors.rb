# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::QuickSight
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

    class ConcurrentUpdatingException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConcurrentUpdatingException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConcurrentUpdatingException]
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

    class DomainNotWhitelistedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DomainNotWhitelistedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DomainNotWhitelistedException]
      #
      attr_reader :data
    end

    class IdentityTypeNotSupportedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IdentityTypeNotSupportedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IdentityTypeNotSupportedException]
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

    class InvalidParameterValueException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidParameterValueException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidParameterValueException]
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

    class PreconditionNotMetException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PreconditionNotMetException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PreconditionNotMetException]
      #
      attr_reader :data
    end

    class QuickSightUserNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::QuickSightUserNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::QuickSightUserNotFoundException]
      #
      attr_reader :data
    end

    class ResourceExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceExistsException]
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

    class ResourceUnavailableException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceUnavailableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceUnavailableException]
      #
      attr_reader :data
    end

    class SessionLifetimeInMinutesInvalidException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SessionLifetimeInMinutesInvalidException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SessionLifetimeInMinutesInvalidException]
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

    class UnsupportedPricingPlanException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedPricingPlanException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedPricingPlanException]
      #
      attr_reader :data
    end

    class UnsupportedUserEditionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedUserEditionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedUserEditionException]
      #
      attr_reader :data
    end

  end
end
