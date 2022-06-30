# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DatabaseMigrationService
  module Waiters

    # Wait until testing connection succeeds.
    #
    class TestConnectionSucceeds
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
            operation_name: :describe_connections,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"connections\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'successful'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"connections\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'failed'
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
      #   (see Client#describe_connections)
      #
      # @param [Hash] options
      #   (see Client#describe_connections)
      #
      # @return [Types::DescribeConnections]
      #   (see Client#describe_connections)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until testing endpoint is deleted.
    #
    class EndpointDeleted
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
            operation_name: :describe_endpoints,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  errorType: 'ResourceNotFoundFault'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"endpoints\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'active'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"endpoints\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'creating'
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
      #   (see Client#describe_endpoints)
      #
      # @param [Hash] options
      #   (see Client#describe_endpoints)
      #
      # @return [Types::DescribeEndpoints]
      #   (see Client#describe_endpoints)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until DMS replication instance is available.
    #
    class ReplicationInstanceAvailable
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
            operation_name: :describe_replication_instances,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"replication_instances\"[].\"replication_instance_status\"",
                    comparator: "allStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_instances\"[].\"replication_instance_status\"",
                    comparator: "anyStringEquals",
                    expected: 'deleting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_instances\"[].\"replication_instance_status\"",
                    comparator: "anyStringEquals",
                    expected: 'incompatible-credentials'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_instances\"[].\"replication_instance_status\"",
                    comparator: "anyStringEquals",
                    expected: 'incompatible-network'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_instances\"[].\"replication_instance_status\"",
                    comparator: "anyStringEquals",
                    expected: 'inaccessible-encryption-credentials'
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
      #   (see Client#describe_replication_instances)
      #
      # @param [Hash] options
      #   (see Client#describe_replication_instances)
      #
      # @return [Types::DescribeReplicationInstances]
      #   (see Client#describe_replication_instances)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until DMS replication instance is deleted.
    #
    class ReplicationInstanceDeleted
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
            operation_name: :describe_replication_instances,
            acceptors: [
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_instances\"[].\"replication_instance_status\"",
                    comparator: "anyStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'ResourceNotFoundFault'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_replication_instances)
      #
      # @param [Hash] options
      #   (see Client#describe_replication_instances)
      #
      # @return [Types::DescribeReplicationInstances]
      #   (see Client#describe_replication_instances)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until DMS replication task is deleted.
    #
    class ReplicationTaskDeleted
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
            operation_name: :describe_replication_tasks,
            acceptors: [
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'ready'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'creating'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'stopped'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'running'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'failed'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'ResourceNotFoundFault'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_replication_tasks)
      #
      # @param [Hash] options
      #   (see Client#describe_replication_tasks)
      #
      # @return [Types::DescribeReplicationTasks]
      #   (see Client#describe_replication_tasks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until DMS replication task is ready.
    #
    class ReplicationTaskReady
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
            operation_name: :describe_replication_tasks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'ready'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'starting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'running'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'stopping'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'stopped'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'modifying'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'testing'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
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
      #   (see Client#describe_replication_tasks)
      #
      # @param [Hash] options
      #   (see Client#describe_replication_tasks)
      #
      # @return [Types::DescribeReplicationTasks]
      #   (see Client#describe_replication_tasks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until DMS replication task is running.
    #
    class ReplicationTaskRunning
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
            operation_name: :describe_replication_tasks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'running'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'ready'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'creating'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'stopping'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'stopped'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'modifying'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'testing'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
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
      #   (see Client#describe_replication_tasks)
      #
      # @param [Hash] options
      #   (see Client#describe_replication_tasks)
      #
      # @return [Types::DescribeReplicationTasks]
      #   (see Client#describe_replication_tasks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until DMS replication task is stopped.
    #
    class ReplicationTaskStopped
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
            operation_name: :describe_replication_tasks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'stopped'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'ready'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'creating'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'starting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'modifying'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'testing'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"replication_tasks\"[].\"status\"",
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
      #   (see Client#describe_replication_tasks)
      #
      # @param [Hash] options
      #   (see Client#describe_replication_tasks)
      #
      # @return [Types::DescribeReplicationTasks]
      #   (see Client#describe_replication_tasks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
