# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RAM
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

    class IdempotentParameterMismatchException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IdempotentParameterMismatchException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IdempotentParameterMismatchException]
      #
      attr_reader :data
    end

    class InvalidClientTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidClientTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidClientTokenException]
      #
      attr_reader :data
    end

    class InvalidMaxResultsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidMaxResultsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidMaxResultsException]
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

    class InvalidResourceTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidResourceTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidResourceTypeException]
      #
      attr_reader :data
    end

    class InvalidStateTransitionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidStateTransitionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidStateTransitionException]
      #
      attr_reader :data
    end

    class MalformedArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MalformedArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MalformedArnException]
      #
      attr_reader :data
    end

    class MissingRequiredParameterException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MissingRequiredParameterException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MissingRequiredParameterException]
      #
      attr_reader :data
    end

    class OperationNotPermittedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OperationNotPermittedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OperationNotPermittedException]
      #
      attr_reader :data
    end

    class ResourceArnNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceArnNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceArnNotFoundException]
      #
      attr_reader :data
    end

    class ResourceShareInvitationAlreadyAcceptedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceShareInvitationAlreadyAcceptedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceShareInvitationAlreadyAcceptedException]
      #
      attr_reader :data
    end

    class ResourceShareInvitationAlreadyRejectedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceShareInvitationAlreadyRejectedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceShareInvitationAlreadyRejectedException]
      #
      attr_reader :data
    end

    class ResourceShareInvitationArnNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceShareInvitationArnNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceShareInvitationArnNotFoundException]
      #
      attr_reader :data
    end

    class ResourceShareInvitationExpiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceShareInvitationExpiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceShareInvitationExpiredException]
      #
      attr_reader :data
    end

    class ResourceShareLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceShareLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceShareLimitExceededException]
      #
      attr_reader :data
    end

    class ServerInternalException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServerInternalException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServerInternalException]
      #
      attr_reader :data
    end

    class ServiceUnavailableException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceUnavailableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceUnavailableException]
      #
      attr_reader :data
    end

    class TagLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagLimitExceededException]
      #
      attr_reader :data
    end

    class TagPolicyViolationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagPolicyViolationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagPolicyViolationException]
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

    class UnknownResourceException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnknownResourceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnknownResourceException]
      #
      attr_reader :data
    end

  end
end
