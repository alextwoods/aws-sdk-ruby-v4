# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSM
  module Waiters

    class CommandExecuted
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
            operation_name: :get_command_invocation,
            acceptors: [
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"status\"",
                    comparator: "stringEquals",
                    expected: 'Pending'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"status\"",
                    comparator: "stringEquals",
                    expected: 'InProgress'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"status\"",
                    comparator: "stringEquals",
                    expected: 'Delayed'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"status\"",
                    comparator: "stringEquals",
                    expected: 'Success'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"status\"",
                    comparator: "stringEquals",
                    expected: 'Cancelled'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"status\"",
                    comparator: "stringEquals",
                    expected: 'TimedOut'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"status\"",
                    comparator: "stringEquals",
                    expected: 'Cancelling'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InvocationDoesNotExist'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_command_invocation)
      #
      # @param [Hash] options
      #   (see Client#get_command_invocation)
      #
      # @return [Types::GetCommandInvocation]
      #   (see Client#get_command_invocation)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
