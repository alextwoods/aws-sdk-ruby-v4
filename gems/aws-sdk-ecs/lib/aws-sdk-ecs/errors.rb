# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECS
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

    class AttributeLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AttributeLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AttributeLimitExceededException]
      #
      attr_reader :data
    end

    class BlockedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BlockedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BlockedException]
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

    class ClusterContainsContainerInstancesException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterContainsContainerInstancesException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterContainsContainerInstancesException]
      #
      attr_reader :data
    end

    class ClusterContainsServicesException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterContainsServicesException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterContainsServicesException]
      #
      attr_reader :data
    end

    class ClusterContainsTasksException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterContainsTasksException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterContainsTasksException]
      #
      attr_reader :data
    end

    class ClusterNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClusterNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClusterNotFoundException]
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

    class MissingVersionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MissingVersionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MissingVersionException]
      #
      attr_reader :data
    end

    class NoUpdateAvailableException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoUpdateAvailableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoUpdateAvailableException]
      #
      attr_reader :data
    end

    class PlatformTaskDefinitionIncompatibilityException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PlatformTaskDefinitionIncompatibilityException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PlatformTaskDefinitionIncompatibilityException]
      #
      attr_reader :data
    end

    class PlatformUnknownException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PlatformUnknownException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PlatformUnknownException]
      #
      attr_reader :data
    end

    class ResourceInUseException < ApiClientError
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
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceNotFoundException]
      #
      attr_reader :data
    end

    class ServerException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServerException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServerException]
      #
      attr_reader :data
    end

    class ServiceNotActiveException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceNotActiveException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceNotActiveException]
      #
      attr_reader :data
    end

    class ServiceNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceNotFoundException]
      #
      attr_reader :data
    end

    class TargetNotConnectedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TargetNotConnectedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TargetNotConnectedException]
      #
      attr_reader :data
    end

    class TargetNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TargetNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TargetNotFoundException]
      #
      attr_reader :data
    end

    class TaskSetNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TaskSetNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TaskSetNotFoundException]
      #
      attr_reader :data
    end

    class UnsupportedFeatureException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedFeatureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedFeatureException]
      #
      attr_reader :data
    end

    class UpdateInProgressException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UpdateInProgressException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UpdateInProgressException]
      #
      attr_reader :data
    end

  end
end
