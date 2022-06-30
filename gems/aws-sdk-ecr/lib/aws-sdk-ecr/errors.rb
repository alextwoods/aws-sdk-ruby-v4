# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECR
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

    class EmptyUploadException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EmptyUploadException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EmptyUploadException]
      #
      attr_reader :data
    end

    class ImageAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ImageAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ImageAlreadyExistsException]
      #
      attr_reader :data
    end

    class ImageDigestDoesNotMatchException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ImageDigestDoesNotMatchException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ImageDigestDoesNotMatchException]
      #
      attr_reader :data
    end

    class ImageNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ImageNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ImageNotFoundException]
      #
      attr_reader :data
    end

    class ImageTagAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ImageTagAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ImageTagAlreadyExistsException]
      #
      attr_reader :data
    end

    class InvalidLayerException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLayerException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLayerException]
      #
      attr_reader :data
    end

    class InvalidLayerPartException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLayerPartException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLayerPartException]
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

    class InvalidTagParameterException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTagParameterException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTagParameterException]
      #
      attr_reader :data
    end

    class KmsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::KmsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::KmsException]
      #
      attr_reader :data
    end

    class LayerAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LayerAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LayerAlreadyExistsException]
      #
      attr_reader :data
    end

    class LayerInaccessibleException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LayerInaccessibleException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LayerInaccessibleException]
      #
      attr_reader :data
    end

    class LayerPartTooSmallException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LayerPartTooSmallException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LayerPartTooSmallException]
      #
      attr_reader :data
    end

    class LayersNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LayersNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LayersNotFoundException]
      #
      attr_reader :data
    end

    class LifecyclePolicyNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LifecyclePolicyNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LifecyclePolicyNotFoundException]
      #
      attr_reader :data
    end

    class LifecyclePolicyPreviewInProgressException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LifecyclePolicyPreviewInProgressException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LifecyclePolicyPreviewInProgressException]
      #
      attr_reader :data
    end

    class LifecyclePolicyPreviewNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LifecyclePolicyPreviewNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LifecyclePolicyPreviewNotFoundException]
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

    class PullThroughCacheRuleAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PullThroughCacheRuleAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PullThroughCacheRuleAlreadyExistsException]
      #
      attr_reader :data
    end

    class PullThroughCacheRuleNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PullThroughCacheRuleNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PullThroughCacheRuleNotFoundException]
      #
      attr_reader :data
    end

    class ReferencedImagesNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReferencedImagesNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReferencedImagesNotFoundException]
      #
      attr_reader :data
    end

    class RegistryPolicyNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RegistryPolicyNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RegistryPolicyNotFoundException]
      #
      attr_reader :data
    end

    class RepositoryAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryAlreadyExistsException]
      #
      attr_reader :data
    end

    class RepositoryNotEmptyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryNotEmptyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryNotEmptyException]
      #
      attr_reader :data
    end

    class RepositoryNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryNotFoundException]
      #
      attr_reader :data
    end

    class RepositoryPolicyNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryPolicyNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryPolicyNotFoundException]
      #
      attr_reader :data
    end

    class ScanNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ScanNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ScanNotFoundException]
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

    class UnsupportedImageTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedImageTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedImageTypeException]
      #
      attr_reader :data
    end

    class UnsupportedUpstreamRegistryException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedUpstreamRegistryException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedUpstreamRegistryException]
      #
      attr_reader :data
    end

    class UploadNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UploadNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UploadNotFoundException]
      #
      attr_reader :data
    end

    class ValidationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ValidationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ValidationException]
      #
      attr_reader :data
    end

  end
end
