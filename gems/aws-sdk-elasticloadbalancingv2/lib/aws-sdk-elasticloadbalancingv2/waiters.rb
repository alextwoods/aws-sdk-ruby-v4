# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElasticLoadBalancingV2
  module Waiters

    class LoadBalancerAvailable
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
            operation_name: :describe_load_balancers,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"load_balancers\"[].\"state\".\"code\"",
                    comparator: "allStringEquals",
                    expected: 'active'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"load_balancers\"[].\"state\".\"code\"",
                    comparator: "anyStringEquals",
                    expected: 'provisioning'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'LoadBalancerNotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_load_balancers)
      #
      # @param [Hash] options
      #   (see Client#describe_load_balancers)
      #
      # @return [Types::DescribeLoadBalancers]
      #   (see Client#describe_load_balancers)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class LoadBalancerExists
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
            operation_name: :describe_load_balancers,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  success: true
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'LoadBalancerNotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_load_balancers)
      #
      # @param [Hash] options
      #   (see Client#describe_load_balancers)
      #
      # @return [Types::DescribeLoadBalancers]
      #   (see Client#describe_load_balancers)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class LoadBalancersDeleted
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
            operation_name: :describe_load_balancers,
            acceptors: [
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"load_balancers\"[].\"state\".\"code\"",
                    comparator: "allStringEquals",
                    expected: 'active'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'LoadBalancerNotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_load_balancers)
      #
      # @param [Hash] options
      #   (see Client#describe_load_balancers)
      #
      # @return [Types::DescribeLoadBalancers]
      #   (see Client#describe_load_balancers)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class TargetDeregistered
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
            operation_name: :describe_target_health,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  errorType: 'InvalidTarget'
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"target_health_descriptions\"[].\"target_health\".\"state\"",
                    comparator: "allStringEquals",
                    expected: 'unused'
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
      #   (see Client#describe_target_health)
      #
      # @param [Hash] options
      #   (see Client#describe_target_health)
      #
      # @return [Types::DescribeTargetHealth]
      #   (see Client#describe_target_health)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class TargetInService
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
            operation_name: :describe_target_health,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"target_health_descriptions\"[].\"target_health\".\"state\"",
                    comparator: "allStringEquals",
                    expected: 'healthy'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InvalidInstance'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_target_health)
      #
      # @param [Hash] options
      #   (see Client#describe_target_health)
      #
      # @return [Types::DescribeTargetHealth]
      #   (see Client#describe_target_health)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
