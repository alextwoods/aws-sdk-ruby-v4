# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Transfer
  module Waiters

    class ServerOffline
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (30)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 30 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_server,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"server\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'OFFLINE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"server\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'STOP_FAILED'
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
      #   (see Client#describe_server)
      #
      # @param [Hash] options
      #   (see Client#describe_server)
      #
      # @return [Types::DescribeServer]
      #   (see Client#describe_server)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ServerOnline
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (30)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 30 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_server,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"server\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'ONLINE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"server\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'START_FAILED'
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
      #   (see Client#describe_server)
      #
      # @param [Hash] options
      #   (see Client#describe_server)
      #
      # @return [Types::DescribeServer]
      #   (see Client#describe_server)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
