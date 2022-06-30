# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Amp
  module Waiters

    # Wait until a workspace reaches ACTIVE status
    #
    class WorkspaceActive
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (2)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 2 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_workspace,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"workspace\".\"status\".\"status_code\"",
                    comparator: "stringEquals",
                    expected: 'ACTIVE'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"workspace\".\"status\".\"status_code\"",
                    comparator: "stringEquals",
                    expected: 'UPDATING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"workspace\".\"status\".\"status_code\"",
                    comparator: "stringEquals",
                    expected: 'CREATING'
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
      #   (see Client#describe_workspace)
      #
      # @param [Hash] options
      #   (see Client#describe_workspace)
      #
      # @return [Types::DescribeWorkspace]
      #   (see Client#describe_workspace)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a workspace reaches DELETED status
    #
    class WorkspaceDeleted
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (2)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 2 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_workspace,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  errorType: 'ResourceNotFoundException'
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"workspace\".\"status\".\"status_code\"",
                    comparator: "stringEquals",
                    expected: 'DELETING'
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
      #   (see Client#describe_workspace)
      #
      # @param [Hash] options
      #   (see Client#describe_workspace)
      #
      # @return [Types::DescribeWorkspace]
      #   (see Client#describe_workspace)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
