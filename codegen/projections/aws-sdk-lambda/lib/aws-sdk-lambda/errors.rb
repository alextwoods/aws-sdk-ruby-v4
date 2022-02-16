# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Lambda
  module Errors

    def self.error_code(http_resp)
      if !(200..299).cover?(http_resp.status)
        json = Hearth::JSON.load(http_resp.body)
        http_resp.body.rewind
        code = json['__type'] || json['code'] if json
      end
      code ||= http_resp.headers['x-amzn-errortype']
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

    class CodeSigningConfigNotFoundException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CodeSigningConfigNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CodeSigningConfigNotFoundException]
      #
      attr_reader :data
    end

    class CodeStorageExceededException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CodeStorageExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CodeStorageExceededException]
      #
      attr_reader :data
    end

    class CodeVerificationFailedException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CodeVerificationFailedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CodeVerificationFailedException]
      #
      attr_reader :data
    end

    class EC2AccessDeniedException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EC2AccessDeniedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EC2AccessDeniedException]
      #
      attr_reader :data
    end

    class EC2ThrottledException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EC2ThrottledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EC2ThrottledException]
      #
      attr_reader :data
    end

    class EC2UnexpectedException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EC2UnexpectedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EC2UnexpectedException]
      #
      attr_reader :data
    end

    class EFSIOException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EFSIOException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EFSIOException]
      #
      attr_reader :data
    end

    class EFSMountConnectivityException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EFSMountConnectivityException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EFSMountConnectivityException]
      #
      attr_reader :data
    end

    class EFSMountFailureException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EFSMountFailureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EFSMountFailureException]
      #
      attr_reader :data
    end

    class EFSMountTimeoutException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EFSMountTimeoutException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EFSMountTimeoutException]
      #
      attr_reader :data
    end

    class ENILimitReachedException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ENILimitReachedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ENILimitReachedException]
      #
      attr_reader :data
    end

    class InvalidCodeSignatureException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCodeSignatureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCodeSignatureException]
      #
      attr_reader :data
    end

    class InvalidParameterValueException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidParameterValueException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidParameterValueException]
      #
      attr_reader :data
    end

    class InvalidRequestContentException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRequestContentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRequestContentException]
      #
      attr_reader :data
    end

    class InvalidRuntimeException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRuntimeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRuntimeException]
      #
      attr_reader :data
    end

    class InvalidSecurityGroupIDException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSecurityGroupIDException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSecurityGroupIDException]
      #
      attr_reader :data
    end

    class InvalidSubnetIDException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSubnetIDException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSubnetIDException]
      #
      attr_reader :data
    end

    class InvalidZipFileException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidZipFileException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidZipFileException]
      #
      attr_reader :data
    end

    class KMSAccessDeniedException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSAccessDeniedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSAccessDeniedException]
      #
      attr_reader :data
    end

    class KMSDisabledException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSDisabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSDisabledException]
      #
      attr_reader :data
    end

    class KMSInvalidStateException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSInvalidStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSInvalidStateException]
      #
      attr_reader :data
    end

    class KMSNotFoundException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSNotFoundException]
      #
      attr_reader :data
    end

    class PolicyLengthExceededException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PolicyLengthExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PolicyLengthExceededException]
      #
      attr_reader :data
    end

    class PreconditionFailedException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PreconditionFailedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PreconditionFailedException]
      #
      attr_reader :data
    end

    class ProvisionedConcurrencyConfigNotFoundException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ProvisionedConcurrencyConfigNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ProvisionedConcurrencyConfigNotFoundException]
      #
      attr_reader :data
    end

    class RequestTooLargeException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RequestTooLargeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RequestTooLargeException]
      #
      attr_reader :data
    end

    class ResourceConflictException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
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
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
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
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceNotFoundException]
      #
      attr_reader :data
    end

    class ResourceNotReadyException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceNotReadyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceNotReadyException]
      #
      attr_reader :data
    end

    class ServiceException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceException]
      #
      attr_reader :data
    end

    class SubnetIPAddressLimitReachedException < ApiServerError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubnetIPAddressLimitReachedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubnetIPAddressLimitReachedException]
      #
      attr_reader :data
    end

    class TooManyRequestsException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyRequestsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyRequestsException]
      #
      attr_reader :data
    end

    class UnsupportedMediaTypeException < ApiClientError
      # @param [Hearth::HTTP::Response] http_resp
      #
      # @param [String] error_code
      #
      # @param [String] message
      #
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedMediaTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedMediaTypeException]
      #
      attr_reader :data
    end

  end
end
