# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppStream
  module Waiters

    class FleetStarted
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
            operation_name: :describe_fleets,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"fleets\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'ACTIVE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"fleets\"[].\"state\"",
                    comparator: "anyStringEquals",
                    expected: 'PENDING_DEACTIVATE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"fleets\"[].\"state\"",
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
      #   (see Client#describe_fleets)
      #
      # @param [Hash] options
      #   (see Client#describe_fleets)
      #
      # @return [Types::DescribeFleets]
      #   (see Client#describe_fleets)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class FleetStopped
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
            operation_name: :describe_fleets,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"fleets\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'INACTIVE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"fleets\"[].\"state\"",
                    comparator: "anyStringEquals",
                    expected: 'PENDING_ACTIVATE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"fleets\"[].\"state\"",
                    comparator: "anyStringEquals",
                    expected: 'ACTIVE'
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
      #   (see Client#describe_fleets)
      #
      # @param [Hash] options
      #   (see Client#describe_fleets)
      #
      # @return [Types::DescribeFleets]
      #   (see Client#describe_fleets)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
