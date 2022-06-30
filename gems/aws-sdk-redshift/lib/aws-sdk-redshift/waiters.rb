# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Redshift
  module Waiters

    class ClusterAvailable
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (60)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 60 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_clusters,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"clusters\"[].\"cluster_status\"",
                    comparator: "allStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"clusters\"[].\"cluster_status\"",
                    comparator: "anyStringEquals",
                    expected: 'deleting'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'ClusterNotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_clusters)
      #
      # @param [Hash] options
      #   (see Client#describe_clusters)
      #
      # @return [Types::DescribeClusters]
      #   (see Client#describe_clusters)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ClusterDeleted
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (60)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 60 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_clusters,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  errorType: 'ClusterNotFound'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"clusters\"[].\"cluster_status\"",
                    comparator: "anyStringEquals",
                    expected: 'creating'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"clusters\"[].\"cluster_status\"",
                    comparator: "anyStringEquals",
                    expected: 'modifying'
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
      #   (see Client#describe_clusters)
      #
      # @param [Hash] options
      #   (see Client#describe_clusters)
      #
      # @return [Types::DescribeClusters]
      #   (see Client#describe_clusters)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ClusterRestored
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (60)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 60 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_clusters,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"clusters\"[].\"restore_status\".\"status\"",
                    comparator: "allStringEquals",
                    expected: 'completed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"clusters\"[].\"cluster_status\"",
                    comparator: "anyStringEquals",
                    expected: 'deleting'
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
      #   (see Client#describe_clusters)
      #
      # @param [Hash] options
      #   (see Client#describe_clusters)
      #
      # @return [Types::DescribeClusters]
      #   (see Client#describe_clusters)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class SnapshotAvailable
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
            operation_name: :describe_cluster_snapshots,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"snapshots\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"snapshots\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"snapshots\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'deleted'
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
      #   (see Client#describe_cluster_snapshots)
      #
      # @param [Hash] options
      #   (see Client#describe_cluster_snapshots)
      #
      # @return [Types::DescribeClusterSnapshots]
      #   (see Client#describe_cluster_snapshots)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
