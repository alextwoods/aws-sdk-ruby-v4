# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Polly
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

    class EngineNotSupportedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EngineNotSupportedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EngineNotSupportedException]
      #
      attr_reader :data
    end

    class InvalidLexiconException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLexiconException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLexiconException]
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

    class InvalidS3BucketException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidS3BucketException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidS3BucketException]
      #
      attr_reader :data
    end

    class InvalidS3KeyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidS3KeyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidS3KeyException]
      #
      attr_reader :data
    end

    class InvalidSampleRateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSampleRateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSampleRateException]
      #
      attr_reader :data
    end

    class InvalidSnsTopicArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSnsTopicArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSnsTopicArnException]
      #
      attr_reader :data
    end

    class InvalidSsmlException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSsmlException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSsmlException]
      #
      attr_reader :data
    end

    class InvalidTaskIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTaskIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTaskIdException]
      #
      attr_reader :data
    end

    class LanguageNotSupportedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LanguageNotSupportedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LanguageNotSupportedException]
      #
      attr_reader :data
    end

    class LexiconNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LexiconNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LexiconNotFoundException]
      #
      attr_reader :data
    end

    class LexiconSizeExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::LexiconSizeExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::LexiconSizeExceededException]
      #
      attr_reader :data
    end

    class MarksNotSupportedForFormatException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MarksNotSupportedForFormatException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MarksNotSupportedForFormatException]
      #
      attr_reader :data
    end

    class MaxLexemeLengthExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaxLexemeLengthExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaxLexemeLengthExceededException]
      #
      attr_reader :data
    end

    class MaxLexiconsNumberExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaxLexiconsNumberExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaxLexiconsNumberExceededException]
      #
      attr_reader :data
    end

    class ServiceFailureException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceFailureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceFailureException]
      #
      attr_reader :data
    end

    class SsmlMarksNotSupportedForTextTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SsmlMarksNotSupportedForTextTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SsmlMarksNotSupportedForTextTypeException]
      #
      attr_reader :data
    end

    class SynthesisTaskNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SynthesisTaskNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SynthesisTaskNotFoundException]
      #
      attr_reader :data
    end

    class TextLengthExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TextLengthExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TextLengthExceededException]
      #
      attr_reader :data
    end

    class UnsupportedPlsAlphabetException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedPlsAlphabetException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedPlsAlphabetException]
      #
      attr_reader :data
    end

    class UnsupportedPlsLanguageException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedPlsLanguageException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedPlsLanguageException]
      #
      attr_reader :data
    end

  end
end
