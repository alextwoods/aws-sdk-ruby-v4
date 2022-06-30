# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IAM
  module Errors
    def self.error_code(resp)
      custom_errors = {
        "ConcurrentModification" => "ConcurrentModificationException",
        "ReportExpired" => "CredentialReportExpiredException",
        "ReportNotPresent" => "CredentialReportNotPresentException",
        "ReportInProgress" => "CredentialReportNotReadyException",
        "DeleteConflict" => "DeleteConflictException",
        "DuplicateCertificate" => "DuplicateCertificateException",
        "DuplicateSSHPublicKey" => "DuplicateSSHPublicKeyException",
        "EntityAlreadyExists" => "EntityAlreadyExistsException",
        "EntityTemporarilyUnmodifiable" => "EntityTemporarilyUnmodifiableException",
        "InvalidAuthenticationCode" => "InvalidAuthenticationCodeException",
        "InvalidCertificate" => "InvalidCertificateException",
        "InvalidInput" => "InvalidInputException",
        "InvalidPublicKey" => "InvalidPublicKeyException",
        "InvalidUserType" => "InvalidUserTypeException",
        "KeyPairMismatch" => "KeyPairMismatchException",
        "LimitExceeded" => "LimitExceededException",
        "MalformedCertificate" => "MalformedCertificateException",
        "MalformedPolicyDocument" => "MalformedPolicyDocumentException",
        "NoSuchEntity" => "NoSuchEntityException",
        "PasswordPolicyViolation" => "PasswordPolicyViolationException",
        "PolicyEvaluation" => "PolicyEvaluationException",
        "PolicyNotAttachable" => "PolicyNotAttachableException",
        "ReportGenerationLimitExceeded" => "ReportGenerationLimitExceededException",
        "ServiceFailure" => "ServiceFailureException",
        "NotSupportedService" => "ServiceNotSupportedException",
        "UnmodifiableEntity" => "UnmodifiableEntityException",
        "UnrecognizedPublicKeyEncoding" => "UnrecognizedPublicKeyEncodingException"
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

    class CredentialReportExpiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CredentialReportExpiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CredentialReportExpiredException]
      #
      attr_reader :data
    end

    class CredentialReportNotPresentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CredentialReportNotPresentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CredentialReportNotPresentException]
      #
      attr_reader :data
    end

    class CredentialReportNotReadyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CredentialReportNotReadyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CredentialReportNotReadyException]
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

    class DuplicateCertificateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateCertificateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateCertificateException]
      #
      attr_reader :data
    end

    class DuplicateSSHPublicKeyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateSSHPublicKeyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateSSHPublicKeyException]
      #
      attr_reader :data
    end

    class EntityAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EntityAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EntityAlreadyExistsException]
      #
      attr_reader :data
    end

    class EntityTemporarilyUnmodifiableException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EntityTemporarilyUnmodifiableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EntityTemporarilyUnmodifiableException]
      #
      attr_reader :data
    end

    class InvalidAuthenticationCodeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAuthenticationCodeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAuthenticationCodeException]
      #
      attr_reader :data
    end

    class InvalidCertificateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCertificateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCertificateException]
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

    class InvalidPublicKeyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPublicKeyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPublicKeyException]
      #
      attr_reader :data
    end

    class InvalidUserTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidUserTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidUserTypeException]
      #
      attr_reader :data
    end

    class KeyPairMismatchException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KeyPairMismatchException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KeyPairMismatchException]
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

    class MalformedCertificateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MalformedCertificateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MalformedCertificateException]
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

    class NoSuchEntityException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchEntityException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchEntityException]
      #
      attr_reader :data
    end

    class PasswordPolicyViolationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PasswordPolicyViolationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PasswordPolicyViolationException]
      #
      attr_reader :data
    end

    class PolicyEvaluationException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PolicyEvaluationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PolicyEvaluationException]
      #
      attr_reader :data
    end

    class PolicyNotAttachableException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PolicyNotAttachableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PolicyNotAttachableException]
      #
      attr_reader :data
    end

    class ReportGenerationLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReportGenerationLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReportGenerationLimitExceededException]
      #
      attr_reader :data
    end

    class ServiceFailureException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceFailureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceFailureException]
      #
      attr_reader :data
    end

    class ServiceNotSupportedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceNotSupportedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceNotSupportedException]
      #
      attr_reader :data
    end

    class UnmodifiableEntityException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnmodifiableEntityException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnmodifiableEntityException]
      #
      attr_reader :data
    end

    class UnrecognizedPublicKeyEncodingException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnrecognizedPublicKeyEncodingException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnrecognizedPublicKeyEncodingException]
      #
      attr_reader :data
    end

  end
end
