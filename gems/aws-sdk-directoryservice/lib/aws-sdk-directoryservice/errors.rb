# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DirectoryService
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

    class AuthenticationFailedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AuthenticationFailedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AuthenticationFailedException]
      #
      attr_reader :data
    end

    class CertificateAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CertificateAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CertificateAlreadyExistsException]
      #
      attr_reader :data
    end

    class CertificateDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CertificateDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CertificateDoesNotExistException]
      #
      attr_reader :data
    end

    class CertificateInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CertificateInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CertificateInUseException]
      #
      attr_reader :data
    end

    class CertificateLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CertificateLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CertificateLimitExceededException]
      #
      attr_reader :data
    end

    class ClientException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClientException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClientException]
      #
      attr_reader :data
    end

    class DirectoryAlreadyInRegionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DirectoryAlreadyInRegionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DirectoryAlreadyInRegionException]
      #
      attr_reader :data
    end

    class DirectoryAlreadySharedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DirectoryAlreadySharedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DirectoryAlreadySharedException]
      #
      attr_reader :data
    end

    class DirectoryDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DirectoryDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DirectoryDoesNotExistException]
      #
      attr_reader :data
    end

    class DirectoryLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DirectoryLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DirectoryLimitExceededException]
      #
      attr_reader :data
    end

    class DirectoryNotSharedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DirectoryNotSharedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DirectoryNotSharedException]
      #
      attr_reader :data
    end

    class DirectoryUnavailableException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DirectoryUnavailableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DirectoryUnavailableException]
      #
      attr_reader :data
    end

    class DomainControllerLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DomainControllerLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DomainControllerLimitExceededException]
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

    class EntityDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EntityDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EntityDoesNotExistException]
      #
      attr_reader :data
    end

    class InsufficientPermissionsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientPermissionsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientPermissionsException]
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

    class InvalidClientAuthStatusException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidClientAuthStatusException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidClientAuthStatusException]
      #
      attr_reader :data
    end

    class InvalidLDAPSStatusException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLDAPSStatusException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLDAPSStatusException]
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

    class InvalidTargetException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTargetException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTargetException]
      #
      attr_reader :data
    end

    class IpRouteLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IpRouteLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IpRouteLimitExceededException]
      #
      attr_reader :data
    end

    class NoAvailableCertificateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoAvailableCertificateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoAvailableCertificateException]
      #
      attr_reader :data
    end

    class OrganizationsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OrganizationsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OrganizationsException]
      #
      attr_reader :data
    end

    class RegionLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RegionLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RegionLimitExceededException]
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

    class ShareLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ShareLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ShareLimitExceededException]
      #
      attr_reader :data
    end

    class SnapshotLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotLimitExceededException]
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

    class UserDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UserDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UserDoesNotExistException]
      #
      attr_reader :data
    end

  end
end
