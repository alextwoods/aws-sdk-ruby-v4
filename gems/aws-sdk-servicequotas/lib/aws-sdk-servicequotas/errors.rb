# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceQuotas
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

    class AWSServiceAccessNotEnabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AWSServiceAccessNotEnabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AWSServiceAccessNotEnabledException]
      #
      attr_reader :data
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

    class DependencyAccessDeniedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DependencyAccessDeniedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DependencyAccessDeniedException]
      #
      attr_reader :data
    end

    class IllegalArgumentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IllegalArgumentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IllegalArgumentException]
      #
      attr_reader :data
    end

    class InvalidPaginationTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPaginationTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPaginationTokenException]
      #
      attr_reader :data
    end

    class InvalidResourceStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidResourceStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidResourceStateException]
      #
      attr_reader :data
    end

    class NoAvailableOrganizationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoAvailableOrganizationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoAvailableOrganizationException]
      #
      attr_reader :data
    end

    class NoSuchResourceException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchResourceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchResourceException]
      #
      attr_reader :data
    end

    class OrganizationNotInAllFeaturesModeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OrganizationNotInAllFeaturesModeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OrganizationNotInAllFeaturesModeException]
      #
      attr_reader :data
    end

    class QuotaExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::QuotaExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::QuotaExceededException]
      #
      attr_reader :data
    end

    class ResourceAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceAlreadyExistsException]
      #
      attr_reader :data
    end

    class ServiceException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceException]
      #
      attr_reader :data
    end

    class ServiceQuotaTemplateNotInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceQuotaTemplateNotInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceQuotaTemplateNotInUseException]
      #
      attr_reader :data
    end

    class TagPolicyViolationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagPolicyViolationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagPolicyViolationException]
      #
      attr_reader :data
    end

    class TemplatesNotAvailableInRegionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TemplatesNotAvailableInRegionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TemplatesNotAvailableInRegionException]
      #
      attr_reader :data
    end

    class TooManyRequestsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyRequestsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyRequestsException]
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
