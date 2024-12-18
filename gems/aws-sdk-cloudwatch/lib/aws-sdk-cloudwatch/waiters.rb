# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatch
  module Waiters

    class AlarmExists
      # @param [Client] client
      # @param [Hash] options
      #   Waiter options
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      # @option options [Integer] :min_delay (5)
      #   The minimum time in seconds to delay polling attempts.
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_alarms,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "length(\"metric_alarms\"[]) > `0.0`",
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

      # @return [Array<String>]
      attr_reader :tags

      # @param (see Client#describe_alarms)
      # @return [true]
      # @raise [Hearth::Waiters::FailureStateError]
      # @raise [Hearth::Waiters::MaxWaitTimeExceededError]
      # @raise [Hearth::Waiters::UnexpectedError]
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class CompositeAlarmExists
      # @param [Client] client
      # @param [Hash] options
      #   Waiter options
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      # @option options [Integer] :min_delay (5)
      #   The minimum time in seconds to delay polling attempts.
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: options[:min_delay] || 5,
          max_delay: options[:max_delay] || 120,
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_alarms,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "length(\"composite_alarms\"[]) > `0.0`",
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

      # @return [Array<String>]
      attr_reader :tags

      # @param (see Client#describe_alarms)
      # @return [true]
      # @raise [Hearth::Waiters::FailureStateError]
      # @raise [Hearth::Waiters::MaxWaitTimeExceededError]
      # @raise [Hearth::Waiters::UnexpectedError]
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
