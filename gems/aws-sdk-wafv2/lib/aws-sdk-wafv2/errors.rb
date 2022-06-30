# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WAFV2
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

    class WAFAssociatedItemException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFAssociatedItemException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFAssociatedItemException]
      #
      attr_reader :data
    end

    class WAFConfigurationWarningException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFConfigurationWarningException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFConfigurationWarningException]
      #
      attr_reader :data
    end

    class WAFDuplicateItemException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFDuplicateItemException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFDuplicateItemException]
      #
      attr_reader :data
    end

    class WAFExpiredManagedRuleGroupVersionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFExpiredManagedRuleGroupVersionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFExpiredManagedRuleGroupVersionException]
      #
      attr_reader :data
    end

    class WAFInternalErrorException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFInternalErrorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFInternalErrorException]
      #
      attr_reader :data
    end

    class WAFInvalidOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFInvalidOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFInvalidOperationException]
      #
      attr_reader :data
    end

    class WAFInvalidParameterException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFInvalidParameterException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFInvalidParameterException]
      #
      attr_reader :data
    end

    class WAFInvalidPermissionPolicyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFInvalidPermissionPolicyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFInvalidPermissionPolicyException]
      #
      attr_reader :data
    end

    class WAFInvalidResourceException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFInvalidResourceException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFInvalidResourceException]
      #
      attr_reader :data
    end

    class WAFLimitsExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFLimitsExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFLimitsExceededException]
      #
      attr_reader :data
    end

    class WAFLogDestinationPermissionIssueException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFLogDestinationPermissionIssueException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFLogDestinationPermissionIssueException]
      #
      attr_reader :data
    end

    class WAFNonexistentItemException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFNonexistentItemException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFNonexistentItemException]
      #
      attr_reader :data
    end

    class WAFOptimisticLockException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFOptimisticLockException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFOptimisticLockException]
      #
      attr_reader :data
    end

    class WAFServiceLinkedRoleErrorException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFServiceLinkedRoleErrorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFServiceLinkedRoleErrorException]
      #
      attr_reader :data
    end

    class WAFSubscriptionNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFSubscriptionNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFSubscriptionNotFoundException]
      #
      attr_reader :data
    end

    class WAFTagOperationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFTagOperationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFTagOperationException]
      #
      attr_reader :data
    end

    class WAFTagOperationInternalErrorException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFTagOperationInternalErrorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFTagOperationInternalErrorException]
      #
      attr_reader :data
    end

    class WAFUnavailableEntityException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::WAFUnavailableEntityException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::WAFUnavailableEntityException]
      #
      attr_reader :data
    end

  end
end
