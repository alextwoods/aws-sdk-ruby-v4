# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticBeanstalk
  module Waiters

    class EnvironmentExists
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
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 20 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_environments,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"environments\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'Ready'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"environments\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'Launching'
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
      #   (see Client#describe_environments)
      #
      # @param [Hash] options
      #   (see Client#describe_environments)
      #
      # @return [Types::DescribeEnvironments]
      #   (see Client#describe_environments)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class EnvironmentTerminated
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
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 20 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_environments,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"environments\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'Terminated'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"environments\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'Terminating'
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
      #   (see Client#describe_environments)
      #
      # @param [Hash] options
      #   (see Client#describe_environments)
      #
      # @return [Types::DescribeEnvironments]
      #   (see Client#describe_environments)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class EnvironmentUpdated
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
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 20 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_environments,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"environments\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'Ready'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"environments\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'Updating'
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
      #   (see Client#describe_environments)
      #
      # @param [Hash] options
      #   (see Client#describe_environments)
      #
      # @return [Types::DescribeEnvironments]
      #   (see Client#describe_environments)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
