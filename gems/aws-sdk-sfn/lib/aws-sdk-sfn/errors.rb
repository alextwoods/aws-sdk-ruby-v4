# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SFN
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

    class ActivityDoesNotExist < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ActivityDoesNotExist.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ActivityDoesNotExist]
      #
      attr_reader :data
    end

    class ActivityLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ActivityLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ActivityLimitExceeded]
      #
      attr_reader :data
    end

    class ActivityWorkerLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ActivityWorkerLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ActivityWorkerLimitExceeded]
      #
      attr_reader :data
    end

    class ExecutionAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ExecutionAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ExecutionAlreadyExists]
      #
      attr_reader :data
    end

    class ExecutionDoesNotExist < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ExecutionDoesNotExist.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ExecutionDoesNotExist]
      #
      attr_reader :data
    end

    class ExecutionLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ExecutionLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ExecutionLimitExceeded]
      #
      attr_reader :data
    end

    class InvalidArn < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidArn.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidArn]
      #
      attr_reader :data
    end

    class InvalidDefinition < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDefinition.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDefinition]
      #
      attr_reader :data
    end

    class InvalidExecutionInput < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidExecutionInput.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidExecutionInput]
      #
      attr_reader :data
    end

    class InvalidLoggingConfiguration < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidLoggingConfiguration.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidLoggingConfiguration]
      #
      attr_reader :data
    end

    class InvalidName < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidName.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidName]
      #
      attr_reader :data
    end

    class InvalidOutput < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOutput.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOutput]
      #
      attr_reader :data
    end

    class InvalidToken < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidToken.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidToken]
      #
      attr_reader :data
    end

    class InvalidTracingConfiguration < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTracingConfiguration.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTracingConfiguration]
      #
      attr_reader :data
    end

    class MissingRequiredParameter < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MissingRequiredParameter.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MissingRequiredParameter]
      #
      attr_reader :data
    end

    class ResourceNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceNotFound]
      #
      attr_reader :data
    end

    class StateMachineAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StateMachineAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StateMachineAlreadyExists]
      #
      attr_reader :data
    end

    class StateMachineDeleting < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StateMachineDeleting.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StateMachineDeleting]
      #
      attr_reader :data
    end

    class StateMachineDoesNotExist < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StateMachineDoesNotExist.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StateMachineDoesNotExist]
      #
      attr_reader :data
    end

    class StateMachineLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StateMachineLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StateMachineLimitExceeded]
      #
      attr_reader :data
    end

    class StateMachineTypeNotSupported < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StateMachineTypeNotSupported.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StateMachineTypeNotSupported]
      #
      attr_reader :data
    end

    class TaskDoesNotExist < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TaskDoesNotExist.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TaskDoesNotExist]
      #
      attr_reader :data
    end

    class TaskTimedOut < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TaskTimedOut.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TaskTimedOut]
      #
      attr_reader :data
    end

    class TooManyTags < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyTags.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyTags]
      #
      attr_reader :data
    end

  end
end
