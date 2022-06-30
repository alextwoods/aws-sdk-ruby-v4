# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkMail
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

    class DirectoryInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DirectoryInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DirectoryInUseException]
      #
      attr_reader :data
    end

    class DirectoryServiceAuthenticationFailedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DirectoryServiceAuthenticationFailedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DirectoryServiceAuthenticationFailedException]
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

    class EmailAddressInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EmailAddressInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EmailAddressInUseException]
      #
      attr_reader :data
    end

    class EntityAlreadyRegisteredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EntityAlreadyRegisteredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EntityAlreadyRegisteredException]
      #
      attr_reader :data
    end

    class EntityNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EntityNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EntityNotFoundException]
      #
      attr_reader :data
    end

    class EntityStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EntityStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EntityStateException]
      #
      attr_reader :data
    end

    class InvalidConfigurationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidConfigurationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidConfigurationException]
      #
      attr_reader :data
    end

    class InvalidCustomSesConfigurationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCustomSesConfigurationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCustomSesConfigurationException]
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

    class MailDomainInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MailDomainInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MailDomainInUseException]
      #
      attr_reader :data
    end

    class MailDomainNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MailDomainNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MailDomainNotFoundException]
      #
      attr_reader :data
    end

    class MailDomainStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MailDomainStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MailDomainStateException]
      #
      attr_reader :data
    end

    class NameAvailabilityException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NameAvailabilityException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NameAvailabilityException]
      #
      attr_reader :data
    end

    class OrganizationNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OrganizationNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OrganizationNotFoundException]
      #
      attr_reader :data
    end

    class OrganizationStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OrganizationStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OrganizationStateException]
      #
      attr_reader :data
    end

    class ReservedNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReservedNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReservedNameException]
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

    class TooManyTagsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyTagsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyTagsException]
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

  end
end
