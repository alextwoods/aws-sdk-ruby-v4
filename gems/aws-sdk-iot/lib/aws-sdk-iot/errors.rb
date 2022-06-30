# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoT
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

    class CertificateConflictException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CertificateConflictException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CertificateConflictException]
      #
      attr_reader :data
    end

    class CertificateStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CertificateStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CertificateStateException]
      #
      attr_reader :data
    end

    class CertificateValidationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CertificateValidationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CertificateValidationException]
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

    class ConflictingResourceUpdateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConflictingResourceUpdateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConflictingResourceUpdateException]
      #
      attr_reader :data
    end

    class DeleteConflictException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DeleteConflictException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DeleteConflictException]
      #
      attr_reader :data
    end

    class IndexNotReadyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IndexNotReadyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IndexNotReadyException]
      #
      attr_reader :data
    end

    class InternalException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalException]
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

    class InternalServerException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalServerException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalServerException]
      #
      attr_reader :data
    end

    class InvalidAggregationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAggregationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAggregationException]
      #
      attr_reader :data
    end

    class InvalidQueryException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidQueryException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidQueryException]
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

    class InvalidResponseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidResponseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidResponseException]
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

    class MalformedPolicyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MalformedPolicyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MalformedPolicyException]
      #
      attr_reader :data
    end

    class NotConfiguredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotConfiguredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotConfiguredException]
      #
      attr_reader :data
    end

    class RegistrationCodeValidationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RegistrationCodeValidationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RegistrationCodeValidationException]
      #
      attr_reader :data
    end

    class ResourceAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceAlreadyExistsException]
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

    class ResourceRegistrationFailureException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceRegistrationFailureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceRegistrationFailureException]
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

    class SqlParseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SqlParseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SqlParseException]
      #
      attr_reader :data
    end

    class TaskAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TaskAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TaskAlreadyExistsException]
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

    class TransferAlreadyCompletedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TransferAlreadyCompletedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TransferAlreadyCompletedException]
      #
      attr_reader :data
    end

    class TransferConflictException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TransferConflictException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TransferConflictException]
      #
      attr_reader :data
    end

    class UnauthorizedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnauthorizedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnauthorizedException]
      #
      attr_reader :data
    end

    class VersionConflictException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::VersionConflictException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::VersionConflictException]
      #
      attr_reader :data
    end

    class VersionsLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::VersionsLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::VersionsLimitExceededException]
      #
      attr_reader :data
    end

  end
end
