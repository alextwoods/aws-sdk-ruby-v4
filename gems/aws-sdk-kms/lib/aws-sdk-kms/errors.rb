# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KMS
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
    rescue Hearth::JSON::ParseError
      "HTTP #{resp.status} Error"
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

    class AlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AlreadyExistsException]
      attr_reader :data
    end

    class CloudHsmClusterInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudHsmClusterInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudHsmClusterInUseException]
      attr_reader :data
    end

    class CloudHsmClusterInvalidConfigurationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudHsmClusterInvalidConfigurationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudHsmClusterInvalidConfigurationException]
      attr_reader :data
    end

    class CloudHsmClusterNotActiveException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudHsmClusterNotActiveException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudHsmClusterNotActiveException]
      attr_reader :data
    end

    class CloudHsmClusterNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudHsmClusterNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudHsmClusterNotFoundException]
      attr_reader :data
    end

    class CloudHsmClusterNotRelatedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudHsmClusterNotRelatedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudHsmClusterNotRelatedException]
      attr_reader :data
    end

    class CustomKeyStoreHasCMKsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CustomKeyStoreHasCMKsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CustomKeyStoreHasCMKsException]
      attr_reader :data
    end

    class CustomKeyStoreInvalidStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CustomKeyStoreInvalidStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CustomKeyStoreInvalidStateException]
      attr_reader :data
    end

    class CustomKeyStoreNameInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CustomKeyStoreNameInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CustomKeyStoreNameInUseException]
      attr_reader :data
    end

    class CustomKeyStoreNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CustomKeyStoreNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CustomKeyStoreNotFoundException]
      attr_reader :data
    end

    class DependencyTimeoutException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DependencyTimeoutException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DependencyTimeoutException]
      attr_reader :data
    end

    class DisabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DisabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DisabledException]
      attr_reader :data
    end

    class DryRunOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DryRunOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DryRunOperationException]
      attr_reader :data
    end

    class ExpiredImportTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ExpiredImportTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ExpiredImportTokenException]
      attr_reader :data
    end

    class IncorrectKeyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IncorrectKeyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IncorrectKeyException]
      attr_reader :data
    end

    class IncorrectKeyMaterialException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IncorrectKeyMaterialException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IncorrectKeyMaterialException]
      attr_reader :data
    end

    class IncorrectTrustAnchorException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IncorrectTrustAnchorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IncorrectTrustAnchorException]
      attr_reader :data
    end

    class InvalidAliasNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAliasNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAliasNameException]
      attr_reader :data
    end

    class InvalidArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidArnException]
      attr_reader :data
    end

    class InvalidCiphertextException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCiphertextException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCiphertextException]
      attr_reader :data
    end

    class InvalidGrantIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidGrantIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidGrantIdException]
      attr_reader :data
    end

    class InvalidGrantTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidGrantTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidGrantTokenException]
      attr_reader :data
    end

    class InvalidImportTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidImportTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidImportTokenException]
      attr_reader :data
    end

    class InvalidKeyUsageException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidKeyUsageException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidKeyUsageException]
      attr_reader :data
    end

    class InvalidMarkerException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidMarkerException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidMarkerException]
      attr_reader :data
    end

    class KMSInternalException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSInternalException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSInternalException]
      attr_reader :data
    end

    class KMSInvalidMacException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSInvalidMacException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSInvalidMacException]
      attr_reader :data
    end

    class KMSInvalidSignatureException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSInvalidSignatureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSInvalidSignatureException]
      attr_reader :data
    end

    class KMSInvalidStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSInvalidStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSInvalidStateException]
      attr_reader :data
    end

    class KeyUnavailableException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KeyUnavailableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KeyUnavailableException]
      attr_reader :data
    end

    class LimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LimitExceededException]
      attr_reader :data
    end

    class MalformedPolicyDocumentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MalformedPolicyDocumentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MalformedPolicyDocumentException]
      attr_reader :data
    end

    class NotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotFoundException]
      attr_reader :data
    end

    class TagException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagException]
      attr_reader :data
    end

    class UnsupportedOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedOperationException]
      attr_reader :data
    end

    class XksKeyAlreadyInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::XksKeyAlreadyInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::XksKeyAlreadyInUseException]
      attr_reader :data
    end

    class XksKeyInvalidConfigurationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::XksKeyInvalidConfigurationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::XksKeyInvalidConfigurationException]
      attr_reader :data
    end

    class XksKeyNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::XksKeyNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::XksKeyNotFoundException]
      attr_reader :data
    end

    class XksProxyIncorrectAuthenticationCredentialException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::XksProxyIncorrectAuthenticationCredentialException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::XksProxyIncorrectAuthenticationCredentialException]
      attr_reader :data
    end

    class XksProxyInvalidConfigurationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::XksProxyInvalidConfigurationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::XksProxyInvalidConfigurationException]
      attr_reader :data
    end

    class XksProxyInvalidResponseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::XksProxyInvalidResponseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::XksProxyInvalidResponseException]
      attr_reader :data
    end

    class XksProxyUriEndpointInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::XksProxyUriEndpointInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::XksProxyUriEndpointInUseException]
      attr_reader :data
    end

    class XksProxyUriInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::XksProxyUriInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::XksProxyUriInUseException]
      attr_reader :data
    end

    class XksProxyUriUnreachableException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::XksProxyUriUnreachableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::XksProxyUriUnreachableException]
      attr_reader :data
    end

    class XksProxyVpcEndpointServiceInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::XksProxyVpcEndpointServiceInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::XksProxyVpcEndpointServiceInUseException]
      attr_reader :data
    end

    class XksProxyVpcEndpointServiceInvalidConfigurationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::XksProxyVpcEndpointServiceInvalidConfigurationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::XksProxyVpcEndpointServiceInvalidConfigurationException]
      attr_reader :data
    end

    class XksProxyVpcEndpointServiceNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::XksProxyVpcEndpointServiceNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::XksProxyVpcEndpointServiceNotFoundException]
      attr_reader :data
    end

  end
end
