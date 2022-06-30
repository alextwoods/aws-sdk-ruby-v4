# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ElastiCache
  module Waiters

    # Wait until ElastiCache cluster is available.
    #
    class CacheClusterAvailable
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
            operation_name: :describe_cache_clusters,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"cache_clusters\"[].\"cache_cluster_status\"",
                    comparator: "allStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cache_clusters\"[].\"cache_cluster_status\"",
                    comparator: "anyStringEquals",
                    expected: 'deleted'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cache_clusters\"[].\"cache_cluster_status\"",
                    comparator: "anyStringEquals",
                    expected: 'deleting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cache_clusters\"[].\"cache_cluster_status\"",
                    comparator: "anyStringEquals",
                    expected: 'incompatible-network'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cache_clusters\"[].\"cache_cluster_status\"",
                    comparator: "anyStringEquals",
                    expected: 'restore-failed'
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
      #   (see Client#describe_cache_clusters)
      #
      # @param [Hash] options
      #   (see Client#describe_cache_clusters)
      #
      # @return [Types::DescribeCacheClusters]
      #   (see Client#describe_cache_clusters)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until ElastiCache cluster is deleted.
    #
    class CacheClusterDeleted
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
            operation_name: :describe_cache_clusters,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"cache_clusters\"[].\"cache_cluster_status\"",
                    comparator: "allStringEquals",
                    expected: 'deleted'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'CacheClusterNotFound'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cache_clusters\"[].\"cache_cluster_status\"",
                    comparator: "anyStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cache_clusters\"[].\"cache_cluster_status\"",
                    comparator: "anyStringEquals",
                    expected: 'creating'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cache_clusters\"[].\"cache_cluster_status\"",
                    comparator: "anyStringEquals",
                    expected: 'incompatible-network'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cache_clusters\"[].\"cache_cluster_status\"",
                    comparator: "anyStringEquals",
                    expected: 'modifying'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cache_clusters\"[].\"cache_cluster_status\"",
                    comparator: "anyStringEquals",
                    expected: 'restore-failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cache_clusters\"[].\"cache_cluster_status\"",
                    comparator: "anyStringEquals",
                    expected: 'snapshotting'
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
      #   (see Client#describe_cache_clusters)
      #
      # @param [Hash] options
      #   (see Client#describe_cache_clusters)
      #
      # @return [Types::DescribeCacheClusters]
      #   (see Client#describe_cache_clusters)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until ElastiCache replication group is available.
    #
    class ReplicationGroupAvailable
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
            operation_name: :describe_replication_groups,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"replication_groups\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_groups\"[].\"status\"",
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
      #   (see Client#describe_replication_groups)
      #
      # @param [Hash] options
      #   (see Client#describe_replication_groups)
      #
      # @return [Types::DescribeReplicationGroups]
      #   (see Client#describe_replication_groups)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until ElastiCache replication group is deleted.
    #
    class ReplicationGroupDeleted
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
            operation_name: :describe_replication_groups,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"replication_groups\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'deleted'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_groups\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'ReplicationGroupNotFoundFault'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_replication_groups)
      #
      # @param [Hash] options
      #   (see Client#describe_replication_groups)
      #
      # @return [Types::DescribeReplicationGroups]
      #   (see Client#describe_replication_groups)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
