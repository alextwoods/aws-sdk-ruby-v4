# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::OpsWorks
  module Waiters

    class AppExists
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (1)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 1 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_apps,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  success: true
                }
              },
              {
                state: 'failure',
                matcher: {
                  success: false
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_apps)
      #
      # @param [Hash] options
      #   (see Client#describe_apps)
      #
      # @return [Types::DescribeApps]
      #   (see Client#describe_apps)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a deployment has completed successfully.
    #
    class DeploymentSuccessful
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
            operation_name: :describe_deployments,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"deployments\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'successful'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"deployments\"[].\"status\"",
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
      #   (see Client#describe_deployments)
      #
      # @param [Hash] options
      #   (see Client#describe_deployments)
      #
      # @return [Types::DescribeDeployments]
      #   (see Client#describe_deployments)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until OpsWorks instance is online.
    #
    class InstanceOnline
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
            operation_name: :describe_instances,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'online'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'setup_failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'shutting_down'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'start_failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'stopped'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'stopping'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'terminating'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'terminated'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'stop_failed'
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
      #   (see Client#describe_instances)
      #
      # @param [Hash] options
      #   (see Client#describe_instances)
      #
      # @return [Types::DescribeInstances]
      #   (see Client#describe_instances)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until OpsWorks instance is registered.
    #
    class InstanceRegistered
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
            operation_name: :describe_instances,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'registered'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'setup_failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'shutting_down'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'stopped'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'stopping'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'terminating'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'terminated'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'stop_failed'
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
      #   (see Client#describe_instances)
      #
      # @param [Hash] options
      #   (see Client#describe_instances)
      #
      # @return [Types::DescribeInstances]
      #   (see Client#describe_instances)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until OpsWorks instance is stopped.
    #
    class InstanceStopped
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
            operation_name: :describe_instances,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'stopped'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'booting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'pending'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'rebooting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'requested'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'running_setup'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'setup_failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'start_failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'stop_failed'
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
      #   (see Client#describe_instances)
      #
      # @param [Hash] options
      #   (see Client#describe_instances)
      #
      # @return [Types::DescribeInstances]
      #   (see Client#describe_instances)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until OpsWorks instance is terminated.
    #
    class InstanceTerminated
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
            operation_name: :describe_instances,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'terminated'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'ResourceNotFoundException'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'booting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'online'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'pending'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'rebooting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'requested'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'running_setup'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'setup_failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"instances\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'start_failed'
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
      #   (see Client#describe_instances)
      #
      # @param [Hash] options
      #   (see Client#describe_instances)
      #
      # @return [Types::DescribeInstances]
      #   (see Client#describe_instances)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
