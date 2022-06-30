# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SMS
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

    class DryRunOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DryRunOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DryRunOperationException]
      #
      attr_reader :data
    end

    class InternalError < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalError.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalError]
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

    class NoConnectorsAvailableException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoConnectorsAvailableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoConnectorsAvailableException]
      #
      attr_reader :data
    end

    class OperationNotPermittedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OperationNotPermittedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OperationNotPermittedException]
      #
      attr_reader :data
    end

    class ReplicationJobAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReplicationJobAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReplicationJobAlreadyExistsException]
      #
      attr_reader :data
    end

    class ReplicationJobNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReplicationJobNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReplicationJobNotFoundException]
      #
      attr_reader :data
    end

    class ReplicationRunLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReplicationRunLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReplicationRunLimitExceededException]
      #
      attr_reader :data
    end

    class ServerCannotBeReplicatedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServerCannotBeReplicatedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServerCannotBeReplicatedException]
      #
      attr_reader :data
    end

    class TemporarilyUnavailableException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TemporarilyUnavailableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TemporarilyUnavailableException]
      #
      attr_reader :data
    end

    class UnauthorizedOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnauthorizedOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnauthorizedOperationException]
      #
      attr_reader :data
    end

  end
end
