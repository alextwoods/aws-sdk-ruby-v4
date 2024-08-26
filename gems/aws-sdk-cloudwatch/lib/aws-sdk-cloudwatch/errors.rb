# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
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
    rescue Hearth::XML::ParseError
      "HTTP #{resp.status} Error"
    end

    # Base class for all errors returned by this service
    class ApiError < Hearth::ApiError; end

    # Base class for all errors returned where the client is at fault.
    class ApiClientError < ApiError; end

    # Base class for all errors returned where the server is at fault.
    class ApiServerError < ApiError; end

    # Base class for all errors returned where the service returned
    # a redirection.
    class ApiRedirectError < ApiError
      def initialize(location:, **kwargs)
        @location = location
        super(**kwargs)
      end

      # @return [String] location
      attr_reader :location
    end

    class ConcurrentModificationException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ConcurrentModificationException]
      attr_reader :data
    end

    class DashboardInvalidInputError < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::DashboardInvalidInputError]
      attr_reader :data
    end

    class DashboardNotFoundError < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::DashboardNotFoundError]
      attr_reader :data
    end

    class InternalServiceFault < ApiServerError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::InternalServiceFault]
      attr_reader :data
    end

    class InvalidFormatFault < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::InvalidFormatFault]
      attr_reader :data
    end

    class InvalidNextToken < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::InvalidNextToken]
      attr_reader :data
    end

    class InvalidParameterCombinationException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::InvalidParameterCombinationException]
      attr_reader :data
    end

    class InvalidParameterValueException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::InvalidParameterValueException]
      attr_reader :data
    end

    class LimitExceededException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::LimitExceededException]
      attr_reader :data
    end

    class LimitExceededFault < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::LimitExceededFault]
      attr_reader :data
    end

    class MissingRequiredParameterException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::MissingRequiredParameterException]
      attr_reader :data
    end

    class ResourceNotFound < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ResourceNotFound]
      attr_reader :data
    end

    class ResourceNotFoundException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ResourceNotFoundException]
      attr_reader :data
    end

  end
end
