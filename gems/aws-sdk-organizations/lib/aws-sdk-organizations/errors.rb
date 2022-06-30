# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Organizations
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

    class AWSOrganizationsNotInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AWSOrganizationsNotInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AWSOrganizationsNotInUseException]
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

    class AccessDeniedForDependencyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccessDeniedForDependencyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccessDeniedForDependencyException]
      #
      attr_reader :data
    end

    class AccountAlreadyClosedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccountAlreadyClosedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccountAlreadyClosedException]
      #
      attr_reader :data
    end

    class AccountAlreadyRegisteredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccountAlreadyRegisteredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccountAlreadyRegisteredException]
      #
      attr_reader :data
    end

    class AccountNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccountNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccountNotFoundException]
      #
      attr_reader :data
    end

    class AccountNotRegisteredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccountNotRegisteredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccountNotRegisteredException]
      #
      attr_reader :data
    end

    class AccountOwnerNotVerifiedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccountOwnerNotVerifiedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccountOwnerNotVerifiedException]
      #
      attr_reader :data
    end

    class AlreadyInOrganizationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AlreadyInOrganizationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AlreadyInOrganizationException]
      #
      attr_reader :data
    end

    class ChildNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ChildNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ChildNotFoundException]
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

    class ConstraintViolationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConstraintViolationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConstraintViolationException]
      #
      attr_reader :data
    end

    class CreateAccountStatusNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CreateAccountStatusNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CreateAccountStatusNotFoundException]
      #
      attr_reader :data
    end

    class DestinationParentNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DestinationParentNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DestinationParentNotFoundException]
      #
      attr_reader :data
    end

    class DuplicateAccountException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateAccountException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateAccountException]
      #
      attr_reader :data
    end

    class DuplicateHandshakeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateHandshakeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateHandshakeException]
      #
      attr_reader :data
    end

    class DuplicateOrganizationalUnitException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateOrganizationalUnitException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateOrganizationalUnitException]
      #
      attr_reader :data
    end

    class DuplicatePolicyAttachmentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicatePolicyAttachmentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicatePolicyAttachmentException]
      #
      attr_reader :data
    end

    class DuplicatePolicyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicatePolicyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicatePolicyException]
      #
      attr_reader :data
    end

    class EffectivePolicyNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EffectivePolicyNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EffectivePolicyNotFoundException]
      #
      attr_reader :data
    end

    class FinalizingOrganizationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FinalizingOrganizationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FinalizingOrganizationException]
      #
      attr_reader :data
    end

    class HandshakeAlreadyInStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HandshakeAlreadyInStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HandshakeAlreadyInStateException]
      #
      attr_reader :data
    end

    class HandshakeConstraintViolationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HandshakeConstraintViolationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HandshakeConstraintViolationException]
      #
      attr_reader :data
    end

    class HandshakeNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HandshakeNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HandshakeNotFoundException]
      #
      attr_reader :data
    end

    class InvalidHandshakeTransitionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidHandshakeTransitionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidHandshakeTransitionException]
      #
      attr_reader :data
    end

    class InvalidInputException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInputException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInputException]
      #
      attr_reader :data
    end

    class MalformedPolicyDocumentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MalformedPolicyDocumentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MalformedPolicyDocumentException]
      #
      attr_reader :data
    end

    class MasterCannotLeaveOrganizationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MasterCannotLeaveOrganizationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MasterCannotLeaveOrganizationException]
      #
      attr_reader :data
    end

    class OrganizationNotEmptyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OrganizationNotEmptyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OrganizationNotEmptyException]
      #
      attr_reader :data
    end

    class OrganizationalUnitNotEmptyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OrganizationalUnitNotEmptyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OrganizationalUnitNotEmptyException]
      #
      attr_reader :data
    end

    class OrganizationalUnitNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OrganizationalUnitNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OrganizationalUnitNotFoundException]
      #
      attr_reader :data
    end

    class ParentNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ParentNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ParentNotFoundException]
      #
      attr_reader :data
    end

    class PolicyChangesInProgressException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PolicyChangesInProgressException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PolicyChangesInProgressException]
      #
      attr_reader :data
    end

    class PolicyInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PolicyInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PolicyInUseException]
      #
      attr_reader :data
    end

    class PolicyNotAttachedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PolicyNotAttachedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PolicyNotAttachedException]
      #
      attr_reader :data
    end

    class PolicyNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PolicyNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PolicyNotFoundException]
      #
      attr_reader :data
    end

    class PolicyTypeAlreadyEnabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PolicyTypeAlreadyEnabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PolicyTypeAlreadyEnabledException]
      #
      attr_reader :data
    end

    class PolicyTypeNotAvailableForOrganizationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PolicyTypeNotAvailableForOrganizationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PolicyTypeNotAvailableForOrganizationException]
      #
      attr_reader :data
    end

    class PolicyTypeNotEnabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PolicyTypeNotEnabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PolicyTypeNotEnabledException]
      #
      attr_reader :data
    end

    class RootNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RootNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RootNotFoundException]
      #
      attr_reader :data
    end

    class ServiceException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceException]
      #
      attr_reader :data
    end

    class SourceParentNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SourceParentNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SourceParentNotFoundException]
      #
      attr_reader :data
    end

    class TargetNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TargetNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TargetNotFoundException]
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

    class UnsupportedAPIEndpointException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedAPIEndpointException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedAPIEndpointException]
      #
      attr_reader :data
    end

  end
end
