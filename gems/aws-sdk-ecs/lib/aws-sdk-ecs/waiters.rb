# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECS
  module Waiters

    class ServicesInactive
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (15)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 15 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_services,
            acceptors: [
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"failures\"[].\"reason\"",
                    comparator: "anyStringEquals",
                    expected: 'MISSING'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"services\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'INACTIVE'
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
      #   (see Client#describe_services)
      #
      # @param [Hash] options
      #   (see Client#describe_services)
      #
      # @return [Types::DescribeServices]
      #   (see Client#describe_services)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class TasksRunning
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (6)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 6 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_tasks,
            acceptors: [
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"tasks\"[].\"last_status\"",
                    comparator: "anyStringEquals",
                    expected: 'STOPPED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"failures\"[].\"reason\"",
                    comparator: "anyStringEquals",
                    expected: 'MISSING'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"tasks\"[].\"last_status\"",
                    comparator: "allStringEquals",
                    expected: 'RUNNING'
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
      #   (see Client#describe_tasks)
      #
      # @param [Hash] options
      #   (see Client#describe_tasks)
      #
      # @return [Types::DescribeTasks]
      #   (see Client#describe_tasks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class TasksStopped
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (6)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 6 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_tasks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"tasks\"[].\"last_status\"",
                    comparator: "allStringEquals",
                    expected: 'STOPPED'
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
      #   (see Client#describe_tasks)
      #
      # @param [Hash] options
      #   (see Client#describe_tasks)
      #
      # @return [Types::DescribeTasks]
      #   (see Client#describe_tasks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
