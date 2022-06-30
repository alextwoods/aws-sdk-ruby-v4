# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaConnect
  module Waiters

    # Wait until a flow is active
    #
    class FlowActive
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (3)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 3 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_flow,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"flow\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'ACTIVE'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"flow\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'STARTING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"flow\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'UPDATING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerErrorException'
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'ServiceUnavailableException'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"flow\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'ERROR'
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
      #   (see Client#describe_flow)
      #
      # @param [Hash] options
      #   (see Client#describe_flow)
      #
      # @return [Types::DescribeFlow]
      #   (see Client#describe_flow)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a flow is deleted
    #
    class FlowDeleted
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (3)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 3 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_flow,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  errorType: 'NotFoundException'
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"flow\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'DELETING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerErrorException'
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'ServiceUnavailableException'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"flow\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'ERROR'
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
      #   (see Client#describe_flow)
      #
      # @param [Hash] options
      #   (see Client#describe_flow)
      #
      # @return [Types::DescribeFlow]
      #   (see Client#describe_flow)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a flow is in standby mode
    #
    class FlowStandby
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (3)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 3 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_flow,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"flow\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'STANDBY'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"flow\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'STOPPING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerErrorException'
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'ServiceUnavailableException'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"flow\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'ERROR'
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
      #   (see Client#describe_flow)
      #
      # @param [Hash] options
      #   (see Client#describe_flow)
      #
      # @return [Types::DescribeFlow]
      #   (see Client#describe_flow)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
