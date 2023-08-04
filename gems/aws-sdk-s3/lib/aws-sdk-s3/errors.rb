# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::S3
  module Errors
    def self.error_code(resp)
      if !(200..299).cover?(resp.status)
        body = resp.body.read
        resp.body.rewind
        xml = Hearth::XML.parse(body) unless body.empty?
        return unless xml
        return unless xml.name == 'Error'
        if xml
          xml.text_at('Code')
        end
      end
    rescue Hearth::XML::ParseError
      "HTTP #{resp.status} Error"
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

    class BucketAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BucketAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BucketAlreadyExists]
      #
      attr_reader :data
    end

    class BucketAlreadyOwnedByYou < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BucketAlreadyOwnedByYou.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BucketAlreadyOwnedByYou]
      #
      attr_reader :data
    end

    class InvalidObjectState < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidObjectState.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidObjectState]
      #
      attr_reader :data
    end

    class NoSuchBucket < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchBucket.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchBucket]
      #
      attr_reader :data
    end

    class NoSuchKey < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchKey.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchKey]
      #
      attr_reader :data
    end

    class NoSuchUpload < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoSuchUpload.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoSuchUpload]
      #
      attr_reader :data
    end

    class NotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotFound]
      #
      attr_reader :data
    end

    class ObjectAlreadyInActiveTierError < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ObjectAlreadyInActiveTierError.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ObjectAlreadyInActiveTierError]
      #
      attr_reader :data
    end

    class ObjectNotInActiveTierError < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ObjectNotInActiveTierError.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ObjectNotInActiveTierError]
      #
      attr_reader :data
    end

  end
end
