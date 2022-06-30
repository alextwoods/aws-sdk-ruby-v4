# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudDirectory
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

    class BatchWriteException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BatchWriteException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BatchWriteException]
      #
      attr_reader :data
    end

    class CannotListParentOfRootException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CannotListParentOfRootException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CannotListParentOfRootException]
      #
      attr_reader :data
    end

    class DirectoryAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DirectoryAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DirectoryAlreadyExistsException]
      #
      attr_reader :data
    end

    class DirectoryDeletedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DirectoryDeletedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DirectoryDeletedException]
      #
      attr_reader :data
    end

    class DirectoryNotDisabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DirectoryNotDisabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DirectoryNotDisabledException]
      #
      attr_reader :data
    end

    class DirectoryNotEnabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DirectoryNotEnabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DirectoryNotEnabledException]
      #
      attr_reader :data
    end

    class FacetAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FacetAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FacetAlreadyExistsException]
      #
      attr_reader :data
    end

    class FacetInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FacetInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FacetInUseException]
      #
      attr_reader :data
    end

    class FacetNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FacetNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FacetNotFoundException]
      #
      attr_reader :data
    end

    class FacetValidationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FacetValidationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FacetValidationException]
      #
      attr_reader :data
    end

    class IncompatibleSchemaException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IncompatibleSchemaException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IncompatibleSchemaException]
      #
      attr_reader :data
    end

    class IndexedAttributeMissingException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IndexedAttributeMissingException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IndexedAttributeMissingException]
      #
      attr_reader :data
    end

    class InternalServiceException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalServiceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalServiceException]
      #
      attr_reader :data
    end

    class InvalidArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidArnException]
      #
      attr_reader :data
    end

    class InvalidAttachmentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAttachmentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAttachmentException]
      #
      attr_reader :data
    end

    class InvalidFacetUpdateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidFacetUpdateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidFacetUpdateException]
      #
      attr_reader :data
    end

    class InvalidNextTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidNextTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidNextTokenException]
      #
      attr_reader :data
    end

    class InvalidRuleException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRuleException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRuleException]
      #
      attr_reader :data
    end

    class InvalidSchemaDocException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSchemaDocException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSchemaDocException]
      #
      attr_reader :data
    end

    class InvalidTaggingRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTaggingRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTaggingRequestException]
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

    class LinkNameAlreadyInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LinkNameAlreadyInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LinkNameAlreadyInUseException]
      #
      attr_reader :data
    end

    class NotIndexException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotIndexException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotIndexException]
      #
      attr_reader :data
    end

    class NotNodeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotNodeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotNodeException]
      #
      attr_reader :data
    end

    class NotPolicyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotPolicyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotPolicyException]
      #
      attr_reader :data
    end

    class ObjectAlreadyDetachedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ObjectAlreadyDetachedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ObjectAlreadyDetachedException]
      #
      attr_reader :data
    end

    class ObjectNotDetachedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ObjectNotDetachedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ObjectNotDetachedException]
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

    class RetryableConflictException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RetryableConflictException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RetryableConflictException]
      #
      attr_reader :data
    end

    class SchemaAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SchemaAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SchemaAlreadyExistsException]
      #
      attr_reader :data
    end

    class SchemaAlreadyPublishedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SchemaAlreadyPublishedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SchemaAlreadyPublishedException]
      #
      attr_reader :data
    end

    class StillContainsLinksException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StillContainsLinksException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StillContainsLinksException]
      #
      attr_reader :data
    end

    class UnsupportedIndexTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedIndexTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedIndexTypeException]
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
