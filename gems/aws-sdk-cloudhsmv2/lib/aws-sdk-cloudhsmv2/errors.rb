# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudHSMV2
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

    class CloudHsmAccessDeniedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudHsmAccessDeniedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudHsmAccessDeniedException]
      #
      attr_reader :data
    end

    class CloudHsmInternalFailureException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudHsmInternalFailureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudHsmInternalFailureException]
      #
      attr_reader :data
    end

    class CloudHsmInvalidRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudHsmInvalidRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudHsmInvalidRequestException]
      #
      attr_reader :data
    end

    class CloudHsmResourceNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudHsmResourceNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudHsmResourceNotFoundException]
      #
      attr_reader :data
    end

    class CloudHsmServiceException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudHsmServiceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudHsmServiceException]
      #
      attr_reader :data
    end

    class CloudHsmTagException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CloudHsmTagException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CloudHsmTagException]
      #
      attr_reader :data
    end

  end
end
