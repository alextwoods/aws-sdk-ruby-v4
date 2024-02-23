# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::STS
  module Errors
    def self.error_code(resp)
      custom_errors = {
        "ExpiredTokenException" => "ExpiredTokenException",
        "IDPCommunicationError" => "IDPCommunicationErrorException",
        "IDPRejectedClaim" => "IDPRejectedClaimException",
        "InvalidAuthorizationMessageException" => "InvalidAuthorizationMessageException",
        "InvalidIdentityToken" => "InvalidIdentityTokenException",
        "MalformedPolicyDocument" => "MalformedPolicyDocumentException",
        "PackedPolicyTooLarge" => "PackedPolicyTooLargeException",
        "RegionDisabledException" => "RegionDisabledException"
      }

      if !(200..299).cover?(resp.status)
        body = resp.body.read
        resp.body.rewind
        xml = Hearth::XML.parse(body) unless body.empty?
        return unless xml && xml.name == 'ErrorResponse'
        code = xml.at('Error')&.text_at('Code')
        custom_errors[code] || code
      end
    rescue Hearth::XML::ParseError
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

    class ExpiredTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ExpiredTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ExpiredTokenException]
      attr_reader :data
    end

    class IDPCommunicationErrorException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IDPCommunicationErrorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IDPCommunicationErrorException]
      attr_reader :data
    end

    class IDPRejectedClaimException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IDPRejectedClaimException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IDPRejectedClaimException]
      attr_reader :data
    end

    class InvalidAuthorizationMessageException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAuthorizationMessageException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAuthorizationMessageException]
      attr_reader :data
    end

    class InvalidIdentityTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidIdentityTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidIdentityTokenException]
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

    class PackedPolicyTooLargeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PackedPolicyTooLargeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PackedPolicyTooLargeException]
      attr_reader :data
    end

    class RegionDisabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RegionDisabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RegionDisabledException]
      attr_reader :data
    end

  end
end
