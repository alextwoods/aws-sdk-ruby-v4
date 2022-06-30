# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EMR
  module Waiters

    class ClusterRunning
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
            operation_name: :describe_cluster,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'RUNNING'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'WAITING'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'TERMINATING'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'TERMINATED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'TERMINATED_WITH_ERRORS'
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
      #   (see Client#describe_cluster)
      #
      # @param [Hash] options
      #   (see Client#describe_cluster)
      #
      # @return [Types::DescribeCluster]
      #   (see Client#describe_cluster)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ClusterTerminated
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
            operation_name: :describe_cluster,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'TERMINATED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'TERMINATED_WITH_ERRORS'
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
      #   (see Client#describe_cluster)
      #
      # @param [Hash] options
      #   (see Client#describe_cluster)
      #
      # @return [Types::DescribeCluster]
      #   (see Client#describe_cluster)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class StepComplete
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
            operation_name: :describe_step,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"step\".\"status\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'COMPLETED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"step\".\"status\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"step\".\"status\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'CANCELLED'
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
      #   (see Client#describe_step)
      #
      # @param [Hash] options
      #   (see Client#describe_step)
      #
      # @return [Types::DescribeStep]
      #   (see Client#describe_step)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
