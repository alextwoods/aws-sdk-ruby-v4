# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Support
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

    class AttachmentIdNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AttachmentIdNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AttachmentIdNotFound]
      #
      attr_reader :data
    end

    class AttachmentLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AttachmentLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AttachmentLimitExceeded]
      #
      attr_reader :data
    end

    class AttachmentSetExpired < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AttachmentSetExpired.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AttachmentSetExpired]
      #
      attr_reader :data
    end

    class AttachmentSetIdNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AttachmentSetIdNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AttachmentSetIdNotFound]
      #
      attr_reader :data
    end

    class AttachmentSetSizeLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AttachmentSetSizeLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AttachmentSetSizeLimitExceeded]
      #
      attr_reader :data
    end

    class CaseCreationLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CaseCreationLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CaseCreationLimitExceeded]
      #
      attr_reader :data
    end

    class CaseIdNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CaseIdNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CaseIdNotFound]
      #
      attr_reader :data
    end

    class DescribeAttachmentLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DescribeAttachmentLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DescribeAttachmentLimitExceeded]
      #
      attr_reader :data
    end

    class InternalServerError < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalServerError.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalServerError]
      #
      attr_reader :data
    end

  end
end
