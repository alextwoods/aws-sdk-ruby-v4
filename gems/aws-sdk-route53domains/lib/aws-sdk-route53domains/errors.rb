# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53Domains
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

    class DomainLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DomainLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DomainLimitExceeded]
      #
      attr_reader :data
    end

    class DuplicateRequest < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateRequest.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateRequest]
      #
      attr_reader :data
    end

    class InvalidInput < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInput.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInput]
      #
      attr_reader :data
    end

    class OperationLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OperationLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OperationLimitExceeded]
      #
      attr_reader :data
    end

    class TLDRulesViolation < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TLDRulesViolation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TLDRulesViolation]
      #
      attr_reader :data
    end

    class UnsupportedTLD < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedTLD.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedTLD]
      #
      attr_reader :data
    end

  end
end
