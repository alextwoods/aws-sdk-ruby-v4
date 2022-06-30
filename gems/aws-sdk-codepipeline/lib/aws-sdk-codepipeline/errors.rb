# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodePipeline
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

    class ActionNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ActionNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ActionNotFoundException]
      #
      attr_reader :data
    end

    class ActionTypeNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ActionTypeNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ActionTypeNotFoundException]
      #
      attr_reader :data
    end

    class ApprovalAlreadyCompletedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApprovalAlreadyCompletedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApprovalAlreadyCompletedException]
      #
      attr_reader :data
    end

    class ConcurrentModificationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConcurrentModificationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConcurrentModificationException]
      #
      attr_reader :data
    end

    class ConflictException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConflictException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConflictException]
      #
      attr_reader :data
    end

    class DuplicatedStopRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicatedStopRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicatedStopRequestException]
      #
      attr_reader :data
    end

    class InvalidActionDeclarationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidActionDeclarationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidActionDeclarationException]
      #
      attr_reader :data
    end

    class InvalidApprovalTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidApprovalTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidApprovalTokenException]
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

    class InvalidBlockerDeclarationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidBlockerDeclarationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidBlockerDeclarationException]
      #
      attr_reader :data
    end

    class InvalidClientTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidClientTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidClientTokenException]
      #
      attr_reader :data
    end

    class InvalidJobException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidJobException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidJobException]
      #
      attr_reader :data
    end

    class InvalidJobStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidJobStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidJobStateException]
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

    class InvalidNonceException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidNonceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidNonceException]
      #
      attr_reader :data
    end

    class InvalidStageDeclarationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidStageDeclarationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidStageDeclarationException]
      #
      attr_reader :data
    end

    class InvalidStructureException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidStructureException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidStructureException]
      #
      attr_reader :data
    end

    class InvalidTagsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTagsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTagsException]
      #
      attr_reader :data
    end

    class InvalidWebhookAuthenticationParametersException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidWebhookAuthenticationParametersException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidWebhookAuthenticationParametersException]
      #
      attr_reader :data
    end

    class InvalidWebhookFilterPatternException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidWebhookFilterPatternException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidWebhookFilterPatternException]
      #
      attr_reader :data
    end

    class JobNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::JobNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::JobNotFoundException]
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

    class NotLatestPipelineExecutionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotLatestPipelineExecutionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotLatestPipelineExecutionException]
      #
      attr_reader :data
    end

    class OutputVariablesSizeExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OutputVariablesSizeExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OutputVariablesSizeExceededException]
      #
      attr_reader :data
    end

    class PipelineExecutionNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PipelineExecutionNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PipelineExecutionNotFoundException]
      #
      attr_reader :data
    end

    class PipelineExecutionNotStoppableException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PipelineExecutionNotStoppableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PipelineExecutionNotStoppableException]
      #
      attr_reader :data
    end

    class PipelineNameInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PipelineNameInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PipelineNameInUseException]
      #
      attr_reader :data
    end

    class PipelineNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PipelineNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PipelineNotFoundException]
      #
      attr_reader :data
    end

    class PipelineVersionNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PipelineVersionNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PipelineVersionNotFoundException]
      #
      attr_reader :data
    end

    class RequestFailedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RequestFailedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RequestFailedException]
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

    class StageNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StageNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StageNotFoundException]
      #
      attr_reader :data
    end

    class StageNotRetryableException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StageNotRetryableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StageNotRetryableException]
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

    class WebhookNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WebhookNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WebhookNotFoundException]
      #
      attr_reader :data
    end

  end
end
