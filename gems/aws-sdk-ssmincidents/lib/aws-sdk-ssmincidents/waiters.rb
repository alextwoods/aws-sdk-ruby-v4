# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSMIncidents
  module Waiters

    # Wait for a replication set to become ACTIVE
    #
    class WaitForReplicationSetActive
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
      # @option options [Integer] :max_delay (30)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 30 || options[:min_delay],
          max_delay: 30 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_replication_set,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"replication_set\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'ACTIVE'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"replication_set\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'CREATING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"replication_set\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'UPDATING'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_set\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'FAILED'
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
      #   (see Client#get_replication_set)
      #
      # @param [Hash] options
      #   (see Client#get_replication_set)
      #
      # @return [Types::GetReplicationSet]
      #   (see Client#get_replication_set)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait for a replication set to be deleted
    #
    class WaitForReplicationSetDeleted
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
      # @option options [Integer] :max_delay (30)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 30 || options[:min_delay],
          max_delay: 30 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :get_replication_set,
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
                    path: "\"replication_set\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'DELETING'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_set\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'FAILED'
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
      #   (see Client#get_replication_set)
      #
      # @param [Hash] options
      #   (see Client#get_replication_set)
      #
      # @return [Types::GetReplicationSet]
      #   (see Client#get_replication_set)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
