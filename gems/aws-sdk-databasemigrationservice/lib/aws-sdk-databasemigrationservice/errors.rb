# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DatabaseMigrationService
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

    class AccessDeniedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AccessDeniedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AccessDeniedFault]
      #
      attr_reader :data
    end

    class CollectorNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CollectorNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CollectorNotFoundFault]
      #
      attr_reader :data
    end

    class InsufficientResourceCapacityFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientResourceCapacityFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientResourceCapacityFault]
      #
      attr_reader :data
    end

    class InvalidCertificateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCertificateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCertificateFault]
      #
      attr_reader :data
    end

    class InvalidOperationFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOperationFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOperationFault]
      #
      attr_reader :data
    end

    class InvalidResourceStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidResourceStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidResourceStateFault]
      #
      attr_reader :data
    end

    class InvalidSubnet < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSubnet.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSubnet]
      #
      attr_reader :data
    end

    class KMSAccessDeniedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSAccessDeniedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSAccessDeniedFault]
      #
      attr_reader :data
    end

    class KMSDisabledFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSDisabledFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSDisabledFault]
      #
      attr_reader :data
    end

    class KMSFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSFault]
      #
      attr_reader :data
    end

    class KMSInvalidStateFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSInvalidStateFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSInvalidStateFault]
      #
      attr_reader :data
    end

    class KMSKeyNotAccessibleFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSKeyNotAccessibleFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSKeyNotAccessibleFault]
      #
      attr_reader :data
    end

    class KMSNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSNotFoundFault]
      #
      attr_reader :data
    end

    class KMSThrottlingFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KMSThrottlingFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KMSThrottlingFault]
      #
      attr_reader :data
    end

    class ReplicationSubnetGroupDoesNotCoverEnoughAZs < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReplicationSubnetGroupDoesNotCoverEnoughAZs.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReplicationSubnetGroupDoesNotCoverEnoughAZs]
      #
      attr_reader :data
    end

    class ResourceAlreadyExistsFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceAlreadyExistsFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceAlreadyExistsFault]
      #
      attr_reader :data
    end

    class ResourceNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceNotFoundFault]
      #
      attr_reader :data
    end

    class ResourceQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceQuotaExceededFault]
      #
      attr_reader :data
    end

    class S3AccessDeniedFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::S3AccessDeniedFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::S3AccessDeniedFault]
      #
      attr_reader :data
    end

    class S3ResourceNotFoundFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::S3ResourceNotFoundFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::S3ResourceNotFoundFault]
      #
      attr_reader :data
    end

    class SNSInvalidTopicFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SNSInvalidTopicFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SNSInvalidTopicFault]
      #
      attr_reader :data
    end

    class SNSNoAuthorizationFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SNSNoAuthorizationFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SNSNoAuthorizationFault]
      #
      attr_reader :data
    end

    class StorageQuotaExceededFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StorageQuotaExceededFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StorageQuotaExceededFault]
      #
      attr_reader :data
    end

    class SubnetAlreadyInUse < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubnetAlreadyInUse.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubnetAlreadyInUse]
      #
      attr_reader :data
    end

    class UpgradeDependencyFailureFault < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UpgradeDependencyFailureFault.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UpgradeDependencyFailureFault]
      #
      attr_reader :data
    end

  end
end
