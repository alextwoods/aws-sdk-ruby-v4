# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
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
    class ApiError < Hearth::ApiError; end

    # Base class for all errors returned where the client is at fault.
    class ApiClientError < ApiError; end

    # Base class for all errors returned where the server is at fault.
    class ApiServerError < ApiError; end

    # Base class for all errors returned where the service returned
    # a redirection.
    class ApiRedirectError < ApiError
      def initialize(location:, **kwargs)
        @location = location
        super(**kwargs)
      end

      # @return [String] location
      attr_reader :location
    end

    class BucketAlreadyExists < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::BucketAlreadyExists]
      attr_reader :data
    end

    class BucketAlreadyOwnedByYou < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::BucketAlreadyOwnedByYou]
      attr_reader :data
    end

    class InvalidObjectState < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::InvalidObjectState]
      attr_reader :data
    end

    class NoSuchBucket < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::NoSuchBucket]
      attr_reader :data
    end

    class NoSuchKey < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::NoSuchKey]
      attr_reader :data
    end

    class NoSuchUpload < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::NoSuchUpload]
      attr_reader :data
    end

    class NotFound < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::NotFound]
      attr_reader :data
    end

    class ObjectAlreadyInActiveTierError < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ObjectAlreadyInActiveTierError]
      attr_reader :data
    end

    class ObjectNotInActiveTierError < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ObjectNotInActiveTierError]
      attr_reader :data
    end

  end
end
