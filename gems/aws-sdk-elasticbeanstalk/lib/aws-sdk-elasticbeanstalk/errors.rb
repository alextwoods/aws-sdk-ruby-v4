# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticBeanstalk
  module Errors
    def self.error_code(resp)
      custom_errors = {
        "CodeBuildNotInServiceRegionException" => "CodeBuildNotInServiceRegionException",
        "InsufficientPrivilegesException" => "InsufficientPrivilegesException",
        "InvalidRequestException" => "InvalidRequestException",
        "ManagedActionInvalidStateException" => "ManagedActionInvalidStateException",
        "OperationInProgressFailure" => "OperationInProgressException",
        "PlatformVersionStillReferencedException" => "PlatformVersionStillReferencedException",
        "ResourceNotFoundException" => "ResourceNotFoundException",
        "ResourceTypeNotSupportedException" => "ResourceTypeNotSupportedException",
        "S3LocationNotInServiceRegionException" => "S3LocationNotInServiceRegionException",
        "S3SubscriptionRequiredException" => "S3SubscriptionRequiredException",
        "SourceBundleDeletionFailure" => "SourceBundleDeletionException",
        "TooManyApplicationsException" => "TooManyApplicationsException",
        "TooManyBucketsException" => "TooManyBucketsException",
        "TooManyConfigurationTemplatesException" => "TooManyConfigurationTemplatesException",
        "TooManyEnvironmentsException" => "TooManyEnvironmentsException",
        "TooManyPlatformsException" => "TooManyPlatformsException",
        "TooManyTagsException" => "TooManyTagsException"
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

    class CodeBuildNotInServiceRegionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CodeBuildNotInServiceRegionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CodeBuildNotInServiceRegionException]
      #
      attr_reader :data
    end

    class ElasticBeanstalkServiceException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ElasticBeanstalkServiceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ElasticBeanstalkServiceException]
      #
      attr_reader :data
    end

    class InsufficientPrivilegesException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InsufficientPrivilegesException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InsufficientPrivilegesException]
      #
      attr_reader :data
    end

    class InvalidRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRequestException]
      #
      attr_reader :data
    end

    class ManagedActionInvalidStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ManagedActionInvalidStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ManagedActionInvalidStateException]
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

    class PlatformVersionStillReferencedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PlatformVersionStillReferencedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PlatformVersionStillReferencedException]
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

    class ResourceTypeNotSupportedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceTypeNotSupportedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceTypeNotSupportedException]
      #
      attr_reader :data
    end

    class S3LocationNotInServiceRegionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::S3LocationNotInServiceRegionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::S3LocationNotInServiceRegionException]
      #
      attr_reader :data
    end

    class S3SubscriptionRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::S3SubscriptionRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::S3SubscriptionRequiredException]
      #
      attr_reader :data
    end

    class SourceBundleDeletionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SourceBundleDeletionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SourceBundleDeletionException]
      #
      attr_reader :data
    end

    class TooManyApplicationVersionsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyApplicationVersionsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyApplicationVersionsException]
      #
      attr_reader :data
    end

    class TooManyApplicationsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyApplicationsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyApplicationsException]
      #
      attr_reader :data
    end

    class TooManyBucketsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyBucketsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyBucketsException]
      #
      attr_reader :data
    end

    class TooManyConfigurationTemplatesException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyConfigurationTemplatesException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyConfigurationTemplatesException]
      #
      attr_reader :data
    end

    class TooManyEnvironmentsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyEnvironmentsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyEnvironmentsException]
      #
      attr_reader :data
    end

    class TooManyPlatformsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyPlatformsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyPlatformsException]
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

  end
end
