# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SNS
  module Errors
    def self.error_code(resp)
      custom_errors = {
        "AuthorizationError" => "AuthorizationErrorException",
        "BatchEntryIdsNotDistinct" => "BatchEntryIdsNotDistinctException",
        "BatchRequestTooLong" => "BatchRequestTooLongException",
        "ConcurrentAccess" => "ConcurrentAccessException",
        "EmptyBatchRequest" => "EmptyBatchRequestException",
        "EndpointDisabled" => "EndpointDisabledException",
        "FilterPolicyLimitExceeded" => "FilterPolicyLimitExceededException",
        "InternalError" => "InternalErrorException",
        "InvalidBatchEntryId" => "InvalidBatchEntryIdException",
        "InvalidParameter" => "InvalidParameterException",
        "ParameterValueInvalid" => "InvalidParameterValueException",
        "InvalidSecurity" => "InvalidSecurityException",
        "KMSAccessDenied" => "KMSAccessDeniedException",
        "KMSDisabled" => "KMSDisabledException",
        "KMSInvalidState" => "KMSInvalidStateException",
        "KMSNotFound" => "KMSNotFoundException",
        "KMSOptInRequired" => "KMSOptInRequired",
        "KMSThrottling" => "KMSThrottlingException",
        "NotFound" => "NotFoundException",
        "OptedOut" => "OptedOutException",
        "PlatformApplicationDisabled" => "PlatformApplicationDisabledException",
        "ResourceNotFound" => "ResourceNotFoundException",
        "StaleTag" => "StaleTagException",
        "SubscriptionLimitExceeded" => "SubscriptionLimitExceededException",
        "TagLimitExceeded" => "TagLimitExceededException",
        "TagPolicy" => "TagPolicyException",
        "Throttled" => "ThrottledException",
        "TooManyEntriesInBatchRequest" => "TooManyEntriesInBatchRequestException",
        "TopicLimitExceeded" => "TopicLimitExceededException",
        "UserError" => "UserErrorException",
        "ValidationException" => "ValidationException"
      }

      if !(200..299).cover?(resp.status)
        body = resp.body.read
        resp.body.rewind
        xml = Hearth::XML.parse(body) unless body.empty?
        return unless xml && xml.name == 'ErrorResponse'
        code = xml.at('Error')&.text_at('Code')
        custom_errors[code] || code
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

    class AuthorizationErrorException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AuthorizationErrorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AuthorizationErrorException]
      #
      attr_reader :data
    end

    class BatchEntryIdsNotDistinctException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BatchEntryIdsNotDistinctException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BatchEntryIdsNotDistinctException]
      #
      attr_reader :data
    end

    class BatchRequestTooLongException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BatchRequestTooLongException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BatchRequestTooLongException]
      #
      attr_reader :data
    end

    class ConcurrentAccessException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConcurrentAccessException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConcurrentAccessException]
      #
      attr_reader :data
    end

    class EmptyBatchRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EmptyBatchRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EmptyBatchRequestException]
      #
      attr_reader :data
    end

    class EndpointDisabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EndpointDisabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EndpointDisabledException]
      #
      attr_reader :data
    end

    class FilterPolicyLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FilterPolicyLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FilterPolicyLimitExceededException]
      #
      attr_reader :data
    end

    class InternalErrorException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalErrorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalErrorException]
      #
      attr_reader :data
    end

    class InvalidBatchEntryIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidBatchEntryIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidBatchEntryIdException]
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

    class InvalidSecurityException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSecurityException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSecurityException]
      #
      attr_reader :data
    end

    class KMSAccessDeniedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSAccessDeniedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSAccessDeniedException]
      #
      attr_reader :data
    end

    class KMSDisabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSDisabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSDisabledException]
      #
      attr_reader :data
    end

    class KMSInvalidStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSInvalidStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSInvalidStateException]
      #
      attr_reader :data
    end

    class KMSNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSNotFoundException]
      #
      attr_reader :data
    end

    class KMSOptInRequired < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSOptInRequired.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSOptInRequired]
      #
      attr_reader :data
    end

    class KMSThrottlingException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSThrottlingException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSThrottlingException]
      #
      attr_reader :data
    end

    class NotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotFoundException]
      #
      attr_reader :data
    end

    class OptedOutException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OptedOutException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OptedOutException]
      #
      attr_reader :data
    end

    class PlatformApplicationDisabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PlatformApplicationDisabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PlatformApplicationDisabledException]
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

    class StaleTagException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StaleTagException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StaleTagException]
      #
      attr_reader :data
    end

    class SubscriptionLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubscriptionLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubscriptionLimitExceededException]
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

    class TagPolicyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagPolicyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagPolicyException]
      #
      attr_reader :data
    end

    class ThrottledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ThrottledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ThrottledException]
      #
      attr_reader :data
    end

    class TooManyEntriesInBatchRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyEntriesInBatchRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyEntriesInBatchRequestException]
      #
      attr_reader :data
    end

    class TopicLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TopicLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TopicLimitExceededException]
      #
      attr_reader :data
    end

    class UserErrorException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UserErrorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UserErrorException]
      #
      attr_reader :data
    end

    class ValidationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ValidationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ValidationException]
      #
      attr_reader :data
    end

    class VerificationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::VerificationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::VerificationException]
      #
      attr_reader :data
    end

  end
end
