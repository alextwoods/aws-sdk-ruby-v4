# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CognitoIdentityProvider
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

    class AliasExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AliasExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AliasExistsException]
      #
      attr_reader :data
    end

    class CodeDeliveryFailureException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CodeDeliveryFailureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CodeDeliveryFailureException]
      #
      attr_reader :data
    end

    class CodeMismatchException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CodeMismatchException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CodeMismatchException]
      #
      attr_reader :data
    end

    class ConcurrentModificationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConcurrentModificationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConcurrentModificationException]
      #
      attr_reader :data
    end

    class DuplicateProviderException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateProviderException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateProviderException]
      #
      attr_reader :data
    end

    class EnableSoftwareTokenMFAException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EnableSoftwareTokenMFAException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EnableSoftwareTokenMFAException]
      #
      attr_reader :data
    end

    class ExpiredCodeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ExpiredCodeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ExpiredCodeException]
      #
      attr_reader :data
    end

    class GroupExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::GroupExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::GroupExistsException]
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

    class InvalidEmailRoleAccessPolicyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidEmailRoleAccessPolicyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidEmailRoleAccessPolicyException]
      #
      attr_reader :data
    end

    class InvalidLambdaResponseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLambdaResponseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLambdaResponseException]
      #
      attr_reader :data
    end

    class InvalidOAuthFlowException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOAuthFlowException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOAuthFlowException]
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

    class InvalidPasswordException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPasswordException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPasswordException]
      #
      attr_reader :data
    end

    class InvalidSmsRoleAccessPolicyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSmsRoleAccessPolicyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSmsRoleAccessPolicyException]
      #
      attr_reader :data
    end

    class InvalidSmsRoleTrustRelationshipException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSmsRoleTrustRelationshipException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSmsRoleTrustRelationshipException]
      #
      attr_reader :data
    end

    class InvalidUserPoolConfigurationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidUserPoolConfigurationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidUserPoolConfigurationException]
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

    class MFAMethodNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MFAMethodNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MFAMethodNotFoundException]
      #
      attr_reader :data
    end

    class NotAuthorizedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotAuthorizedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotAuthorizedException]
      #
      attr_reader :data
    end

    class PasswordResetRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PasswordResetRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PasswordResetRequiredException]
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

    class ScopeDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ScopeDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ScopeDoesNotExistException]
      #
      attr_reader :data
    end

    class SoftwareTokenMFANotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SoftwareTokenMFANotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SoftwareTokenMFANotFoundException]
      #
      attr_reader :data
    end

    class TooManyFailedAttemptsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyFailedAttemptsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyFailedAttemptsException]
      #
      attr_reader :data
    end

    class TooManyRequestsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyRequestsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyRequestsException]
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

    class UnexpectedLambdaException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnexpectedLambdaException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnexpectedLambdaException]
      #
      attr_reader :data
    end

    class UnsupportedIdentityProviderException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedIdentityProviderException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedIdentityProviderException]
      #
      attr_reader :data
    end

    class UnsupportedOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedOperationException]
      #
      attr_reader :data
    end

    class UnsupportedTokenTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedTokenTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedTokenTypeException]
      #
      attr_reader :data
    end

    class UnsupportedUserStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedUserStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedUserStateException]
      #
      attr_reader :data
    end

    class UserImportInProgressException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UserImportInProgressException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UserImportInProgressException]
      #
      attr_reader :data
    end

    class UserLambdaValidationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UserLambdaValidationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UserLambdaValidationException]
      #
      attr_reader :data
    end

    class UserNotConfirmedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UserNotConfirmedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UserNotConfirmedException]
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

    class UserPoolAddOnNotEnabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UserPoolAddOnNotEnabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UserPoolAddOnNotEnabledException]
      #
      attr_reader :data
    end

    class UserPoolTaggingException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UserPoolTaggingException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UserPoolTaggingException]
      #
      attr_reader :data
    end

    class UsernameExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UsernameExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UsernameExistsException]
      #
      attr_reader :data
    end

  end
end
