# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Cloudfront
  module Waiters

    # Wait until a distribution is deployed.
    #
    class DistributionDeployed
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (60)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Seahorse::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 60 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Seahorse::Waiters::Poller.new(
            operation_name: :get_distribution,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "distribution.status",
                    comparator: "stringEquals",
                    expected: 'Deployed'
                  }
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_distribution)
      #
      # @param [Hash] options
      #   (see Client#get_distribution)
      #
      # @return [Types::GetDistribution]
      #   (see Client#get_distribution)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until an invalidation has completed.
    #
    class InvalidationCompleted
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (20)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Seahorse::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 20 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Seahorse::Waiters::Poller.new(
            operation_name: :get_invalidation,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "invalidation.status",
                    comparator: "stringEquals",
                    expected: 'Completed'
                  }
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_invalidation)
      #
      # @param [Hash] options
      #   (see Client#get_invalidation)
      #
      # @return [Types::GetInvalidation]
      #   (see Client#get_invalidation)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a streaming distribution is deployed.
    #
    class StreamingDistributionDeployed
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (60)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Seahorse::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 60 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Seahorse::Waiters::Poller.new(
            operation_name: :get_streaming_distribution,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "streaming_distribution.status",
                    comparator: "stringEquals",
                    expected: 'Deployed'
                  }
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_streaming_distribution)
      #
      # @param [Hash] options
      #   (see Client#get_streaming_distribution)
      #
      # @return [Types::GetStreamingDistribution]
      #   (see Client#get_streaming_distribution)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
