# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudFormation
  module Errors
    def self.error_code(resp)
      custom_errors = {
        "AlreadyExistsException" => "AlreadyExistsException",
        "CFNRegistryException" => "CFNRegistryException",
        "ChangeSetNotFound" => "ChangeSetNotFoundException",
        "CreatedButModifiedException" => "CreatedButModifiedException",
        "InsufficientCapabilitiesException" => "InsufficientCapabilitiesException",
        "InvalidChangeSetStatus" => "InvalidChangeSetStatusException",
        "InvalidOperationException" => "InvalidOperationException",
        "InvalidStateTransition" => "InvalidStateTransitionException",
        "LimitExceededException" => "LimitExceededException",
        "NameAlreadyExistsException" => "NameAlreadyExistsException",
        "OperationIdAlreadyExistsException" => "OperationIdAlreadyExistsException",
        "OperationInProgressException" => "OperationInProgressException",
        "OperationNotFoundException" => "OperationNotFoundException",
        "ConditionalCheckFailed" => "OperationStatusCheckFailedException",
        "StackInstanceNotFoundException" => "StackInstanceNotFoundException",
        "StackNotFoundException" => "StackNotFoundException",
        "StackSetNotEmptyException" => "StackSetNotEmptyException",
        "StackSetNotFoundException" => "StackSetNotFoundException",
        "StaleRequestException" => "StaleRequestException",
        "TokenAlreadyExistsException" => "TokenAlreadyExistsException",
        "TypeConfigurationNotFoundException" => "TypeConfigurationNotFoundException",
        "TypeNotFoundException" => "TypeNotFoundException"
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

    class AlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AlreadyExistsException]
      #
      attr_reader :data
    end

    class CFNRegistryException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CFNRegistryException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CFNRegistryException]
      #
      attr_reader :data
    end

    class ChangeSetNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ChangeSetNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ChangeSetNotFoundException]
      #
      attr_reader :data
    end

    class CreatedButModifiedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CreatedButModifiedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CreatedButModifiedException]
      #
      attr_reader :data
    end

    class InsufficientCapabilitiesException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientCapabilitiesException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientCapabilitiesException]
      #
      attr_reader :data
    end

    class InvalidChangeSetStatusException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidChangeSetStatusException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidChangeSetStatusException]
      #
      attr_reader :data
    end

    class InvalidOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOperationException]
      #
      attr_reader :data
    end

    class InvalidStateTransitionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidStateTransitionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidStateTransitionException]
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

    class NameAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NameAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NameAlreadyExistsException]
      #
      attr_reader :data
    end

    class OperationIdAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OperationIdAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OperationIdAlreadyExistsException]
      #
      attr_reader :data
    end

    class OperationInProgressException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OperationInProgressException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OperationInProgressException]
      #
      attr_reader :data
    end

    class OperationNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OperationNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OperationNotFoundException]
      #
      attr_reader :data
    end

    class OperationStatusCheckFailedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OperationStatusCheckFailedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OperationStatusCheckFailedException]
      #
      attr_reader :data
    end

    class StackInstanceNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StackInstanceNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StackInstanceNotFoundException]
      #
      attr_reader :data
    end

    class StackNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StackNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StackNotFoundException]
      #
      attr_reader :data
    end

    class StackSetNotEmptyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StackSetNotEmptyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StackSetNotEmptyException]
      #
      attr_reader :data
    end

    class StackSetNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StackSetNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StackSetNotFoundException]
      #
      attr_reader :data
    end

    class StaleRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StaleRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StaleRequestException]
      #
      attr_reader :data
    end

    class TokenAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TokenAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TokenAlreadyExistsException]
      #
      attr_reader :data
    end

    class TypeConfigurationNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TypeConfigurationNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TypeConfigurationNotFoundException]
      #
      attr_reader :data
    end

    class TypeNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TypeNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TypeNotFoundException]
      #
      attr_reader :data
    end

  end
end
