# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AutoScaling
  module Errors
    def self.error_code(resp)
      custom_errors = {
        "ActiveInstanceRefreshNotFound" => "ActiveInstanceRefreshNotFoundFault",
        "AlreadyExists" => "AlreadyExistsFault",
        "InstanceRefreshInProgress" => "InstanceRefreshInProgressFault",
        "InvalidNextToken" => "InvalidNextToken",
        "LimitExceeded" => "LimitExceededFault",
        "ResourceContention" => "ResourceContentionFault",
        "ResourceInUse" => "ResourceInUseFault",
        "ScalingActivityInProgress" => "ScalingActivityInProgressFault",
        "ServiceLinkedRoleFailure" => "ServiceLinkedRoleFailure"
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

    class ActiveInstanceRefreshNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ActiveInstanceRefreshNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ActiveInstanceRefreshNotFoundFault]
      #
      attr_reader :data
    end

    class AlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AlreadyExistsFault]
      #
      attr_reader :data
    end

    class InstanceRefreshInProgressFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InstanceRefreshInProgressFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InstanceRefreshInProgressFault]
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

    class ResourceContentionFault < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceContentionFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceContentionFault]
      #
      attr_reader :data
    end

    class ResourceInUseFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceInUseFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceInUseFault]
      #
      attr_reader :data
    end

    class ScalingActivityInProgressFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ScalingActivityInProgressFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ScalingActivityInProgressFault]
      #
      attr_reader :data
    end

    class ServiceLinkedRoleFailure < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceLinkedRoleFailure.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceLinkedRoleFailure]
      #
      attr_reader :data
    end

  end
end
