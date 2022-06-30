# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AutoScaling
  module Waiters

    class GroupExists
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (5)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 5 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_auto_scaling_groups,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "length(\"auto_scaling_groups\") > `0.0`",
                    comparator: "booleanEquals",
                    expected: 'true'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "length(\"auto_scaling_groups\") > `0.0`",
                    comparator: "booleanEquals",
                    expected: 'false'
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
      #   (see Client#describe_auto_scaling_groups)
      #
      # @param [Hash] options
      #   (see Client#describe_auto_scaling_groups)
      #
      # @return [Types::DescribeAutoScalingGroups]
      #   (see Client#describe_auto_scaling_groups)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class GroupInService
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
            operation_name: :describe_auto_scaling_groups,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "contains(\"auto_scaling_groups\"[].[length(\"instances\"[?\"lifecycle_state\" == `\"InService\"`]) >= \"min_size\"][], `false`)",
                    comparator: "booleanEquals",
                    expected: 'false'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "contains(\"auto_scaling_groups\"[].[length(\"instances\"[?\"lifecycle_state\" == `\"InService\"`]) >= \"min_size\"][], `false`)",
                    comparator: "booleanEquals",
                    expected: 'true'
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
      #   (see Client#describe_auto_scaling_groups)
      #
      # @param [Hash] options
      #   (see Client#describe_auto_scaling_groups)
      #
      # @return [Types::DescribeAutoScalingGroups]
      #   (see Client#describe_auto_scaling_groups)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class GroupNotExists
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
            operation_name: :describe_auto_scaling_groups,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "length(\"auto_scaling_groups\") > `0.0`",
                    comparator: "booleanEquals",
                    expected: 'false'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "length(\"auto_scaling_groups\") > `0.0`",
                    comparator: "booleanEquals",
                    expected: 'true'
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
      #   (see Client#describe_auto_scaling_groups)
      #
      # @param [Hash] options
      #   (see Client#describe_auto_scaling_groups)
      #
      # @return [Types::DescribeAutoScalingGroups]
      #   (see Client#describe_auto_scaling_groups)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
