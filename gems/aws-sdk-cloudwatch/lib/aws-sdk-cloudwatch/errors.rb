# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatch
  module Errors
    def self.error_code(resp)
      custom_errors = {
        "ConcurrentModificationException" => "ConcurrentModificationException",
        "InvalidParameterInput" => "DashboardInvalidInputError",
        "ResourceNotFound" => "DashboardNotFoundError",
        "InternalServiceError" => "InternalServiceFault",
        "InvalidFormat" => "InvalidFormatFault",
        "InvalidNextToken" => "InvalidNextToken",
        "InvalidParameterCombination" => "InvalidParameterCombinationException",
        "InvalidParameterValue" => "InvalidParameterValueException",
        "LimitExceededException" => "LimitExceededException",
        "LimitExceeded" => "LimitExceededFault",
        "MissingParameter" => "MissingRequiredParameterException",
        "ResourceNotFound" => "ResourceNotFound",
        "ResourceNotFoundException" => "ResourceNotFoundException"
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

    class DashboardInvalidInputError < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DashboardInvalidInputError.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DashboardInvalidInputError]
      #
      attr_reader :data
    end

    class DashboardNotFoundError < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DashboardNotFoundError.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DashboardNotFoundError]
      #
      attr_reader :data
    end

    class InternalServiceFault < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalServiceFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalServiceFault]
      #
      attr_reader :data
    end

    class InvalidFormatFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidFormatFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidFormatFault]
      #
      attr_reader :data
    end

    class InvalidNextToken < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidNextToken.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidNextToken]
      #
      attr_reader :data
    end

    class InvalidParameterCombinationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidParameterCombinationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidParameterCombinationException]
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

    class LimitExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LimitExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LimitExceededFault]
      #
      attr_reader :data
    end

    class MissingRequiredParameterException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MissingRequiredParameterException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MissingRequiredParameterException]
      #
      attr_reader :data
    end

    class ResourceNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceNotFound]
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

  end
end