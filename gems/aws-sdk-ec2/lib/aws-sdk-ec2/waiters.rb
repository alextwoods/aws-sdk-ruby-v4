# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EC2
  module Waiters

    class BundleTaskComplete
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
            operation_name: :describe_bundle_tasks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"bundle_tasks\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'complete'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bundle_tasks\"[].\"state\"",
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
      #   (see Client#describe_bundle_tasks)
      #
      # @param [Hash] options
      #   (see Client#describe_bundle_tasks)
      #
      # @return [Types::DescribeBundleTasks]
      #   (see Client#describe_bundle_tasks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ConversionTaskCancelled
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
            operation_name: :describe_conversion_tasks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"conversion_tasks\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'cancelled'
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
      #   (see Client#describe_conversion_tasks)
      #
      # @param [Hash] options
      #   (see Client#describe_conversion_tasks)
      #
      # @return [Types::DescribeConversionTasks]
      #   (see Client#describe_conversion_tasks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ConversionTaskCompleted
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
            operation_name: :describe_conversion_tasks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"conversion_tasks\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'completed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"conversion_tasks\"[].\"state\"",
                    comparator: "anyStringEquals",
                    expected: 'cancelled'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"conversion_tasks\"[].\"state\"",
                    comparator: "anyStringEquals",
                    expected: 'cancelling'
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
      #   (see Client#describe_conversion_tasks)
      #
      # @param [Hash] options
      #   (see Client#describe_conversion_tasks)
      #
      # @return [Types::DescribeConversionTasks]
      #   (see Client#describe_conversion_tasks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ConversionTaskDeleted
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
            operation_name: :describe_conversion_tasks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"conversion_tasks\"[].\"state\"",
                    comparator: "allStringEquals",
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
      #   (see Client#describe_conversion_tasks)
      #
      # @param [Hash] options
      #   (see Client#describe_conversion_tasks)
      #
      # @return [Types::DescribeConversionTasks]
      #   (see Client#describe_conversion_tasks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class CustomerGatewayAvailable
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
            operation_name: :describe_customer_gateways,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"customer_gateways\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"customer_gateways\"[].\"state\"",
                    comparator: "anyStringEquals",
                    expected: 'deleted'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"customer_gateways\"[].\"state\"",
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
      #   (see Client#describe_customer_gateways)
      #
      # @param [Hash] options
      #   (see Client#describe_customer_gateways)
      #
      # @return [Types::DescribeCustomerGateways]
      #   (see Client#describe_customer_gateways)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ExportTaskCancelled
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
            operation_name: :describe_export_tasks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"export_tasks\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'cancelled'
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
      #   (see Client#describe_export_tasks)
      #
      # @param [Hash] options
      #   (see Client#describe_export_tasks)
      #
      # @return [Types::DescribeExportTasks]
      #   (see Client#describe_export_tasks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ExportTaskCompleted
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
            operation_name: :describe_export_tasks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"export_tasks\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'completed'
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
      #   (see Client#describe_export_tasks)
      #
      # @param [Hash] options
      #   (see Client#describe_export_tasks)
      #
      # @return [Types::DescribeExportTasks]
      #   (see Client#describe_export_tasks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ImageAvailable
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
            operation_name: :describe_images,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"images\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"images\"[].\"state\"",
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
      #   (see Client#describe_images)
      #
      # @param [Hash] options
      #   (see Client#describe_images)
      #
      # @return [Types::DescribeImages]
      #   (see Client#describe_images)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ImageExists
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
            operation_name: :describe_images,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "length(\"images\"[]) > `0.0`",
                    comparator: "booleanEquals",
                    expected: 'true'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InvalidAMIID.NotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_images)
      #
      # @param [Hash] options
      #   (see Client#describe_images)
      #
      # @return [Types::DescribeImages]
      #   (see Client#describe_images)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class InstanceExists
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
            operation_name: :describe_instances,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "length(\"reservations\"[]) > `0.0`",
                    comparator: "booleanEquals",
                    expected: 'true'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InvalidInstanceID.NotFound'
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

    class InstanceRunning
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
                    path: "\"reservations\"[].\"instances\"[].\"state\".\"name\"",
                    comparator: "allStringEquals",
                    expected: 'running'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"reservations\"[].\"instances\"[].\"state\".\"name\"",
                    comparator: "anyStringEquals",
                    expected: 'shutting-down'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"reservations\"[].\"instances\"[].\"state\".\"name\"",
                    comparator: "anyStringEquals",
                    expected: 'terminated'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"reservations\"[].\"instances\"[].\"state\".\"name\"",
                    comparator: "anyStringEquals",
                    expected: 'stopping'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InvalidInstanceID.NotFound'
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
                    path: "\"reservations\"[].\"instances\"[].\"state\".\"name\"",
                    comparator: "allStringEquals",
                    expected: 'stopped'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"reservations\"[].\"instances\"[].\"state\".\"name\"",
                    comparator: "anyStringEquals",
                    expected: 'pending'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"reservations\"[].\"instances\"[].\"state\".\"name\"",
                    comparator: "anyStringEquals",
                    expected: 'terminated'
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
                    path: "\"reservations\"[].\"instances\"[].\"state\".\"name\"",
                    comparator: "allStringEquals",
                    expected: 'terminated'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"reservations\"[].\"instances\"[].\"state\".\"name\"",
                    comparator: "anyStringEquals",
                    expected: 'pending'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"reservations\"[].\"instances\"[].\"state\".\"name\"",
                    comparator: "anyStringEquals",
                    expected: 'stopping'
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

    class InstanceStatusOk
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
            operation_name: :describe_instance_status,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"instance_statuses\"[].\"instance_status\".\"status\"",
                    comparator: "allStringEquals",
                    expected: 'ok'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InvalidInstanceID.NotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_instance_status)
      #
      # @param [Hash] options
      #   (see Client#describe_instance_status)
      #
      # @return [Types::DescribeInstanceStatus]
      #   (see Client#describe_instance_status)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class SystemStatusOk
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
            operation_name: :describe_instance_status,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"instance_statuses\"[].\"system_status\".\"status\"",
                    comparator: "allStringEquals",
                    expected: 'ok'
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
      #   (see Client#describe_instance_status)
      #
      # @param [Hash] options
      #   (see Client#describe_instance_status)
      #
      # @return [Types::DescribeInstanceStatus]
      #   (see Client#describe_instance_status)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class InternetGatewayExists
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
            operation_name: :describe_internet_gateways,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "length(\"internet_gateways\"[].\"internet_gateway_id\") > `0.0`",
                    comparator: "booleanEquals",
                    expected: 'true'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InvalidInternetGateway.NotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_internet_gateways)
      #
      # @param [Hash] options
      #   (see Client#describe_internet_gateways)
      #
      # @return [Types::DescribeInternetGateways]
      #   (see Client#describe_internet_gateways)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class KeyPairExists
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
            operation_name: :describe_key_pairs,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "length(\"key_pairs\"[].\"key_name\") > `0.0`",
                    comparator: "booleanEquals",
                    expected: 'true'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InvalidKeyPair.NotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_key_pairs)
      #
      # @param [Hash] options
      #   (see Client#describe_key_pairs)
      #
      # @return [Types::DescribeKeyPairs]
      #   (see Client#describe_key_pairs)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class NatGatewayAvailable
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
            operation_name: :describe_nat_gateways,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"nat_gateways\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"nat_gateways\"[].\"state\"",
                    comparator: "anyStringEquals",
                    expected: 'failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"nat_gateways\"[].\"state\"",
                    comparator: "anyStringEquals",
                    expected: 'deleting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"nat_gateways\"[].\"state\"",
                    comparator: "anyStringEquals",
                    expected: 'deleted'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'NatGatewayNotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_nat_gateways)
      #
      # @param [Hash] options
      #   (see Client#describe_nat_gateways)
      #
      # @return [Types::DescribeNatGateways]
      #   (see Client#describe_nat_gateways)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class NatGatewayDeleted
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
            operation_name: :describe_nat_gateways,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"nat_gateways\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'deleted'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'NatGatewayNotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_nat_gateways)
      #
      # @param [Hash] options
      #   (see Client#describe_nat_gateways)
      #
      # @return [Types::DescribeNatGateways]
      #   (see Client#describe_nat_gateways)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class NetworkInterfaceAvailable
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (20)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 20 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_network_interfaces,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"network_interfaces\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'InvalidNetworkInterfaceID.NotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_network_interfaces)
      #
      # @param [Hash] options
      #   (see Client#describe_network_interfaces)
      #
      # @return [Types::DescribeNetworkInterfaces]
      #   (see Client#describe_network_interfaces)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class SecurityGroupExists
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
            operation_name: :describe_security_groups,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "length(\"security_groups\"[].\"group_id\") > `0.0`",
                    comparator: "booleanEquals",
                    expected: 'true'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InvalidGroup.NotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_security_groups)
      #
      # @param [Hash] options
      #   (see Client#describe_security_groups)
      #
      # @return [Types::DescribeSecurityGroups]
      #   (see Client#describe_security_groups)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class SnapshotCompleted
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
            operation_name: :describe_snapshots,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"snapshots\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'completed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"snapshots\"[].\"state\"",
                    comparator: "anyStringEquals",
                    expected: 'error'
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
      #   (see Client#describe_snapshots)
      #
      # @param [Hash] options
      #   (see Client#describe_snapshots)
      #
      # @return [Types::DescribeSnapshots]
      #   (see Client#describe_snapshots)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class SpotInstanceRequestFulfilled
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
            operation_name: :describe_spot_instance_requests,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"spot_instance_requests\"[].\"status\".\"code\"",
                    comparator: "allStringEquals",
                    expected: 'fulfilled'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"spot_instance_requests\"[].\"status\".\"code\"",
                    comparator: "allStringEquals",
                    expected: 'request-canceled-and-instance-running'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"spot_instance_requests\"[].\"status\".\"code\"",
                    comparator: "anyStringEquals",
                    expected: 'schedule-expired'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"spot_instance_requests\"[].\"status\".\"code\"",
                    comparator: "anyStringEquals",
                    expected: 'canceled-before-fulfillment'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"spot_instance_requests\"[].\"status\".\"code\"",
                    comparator: "anyStringEquals",
                    expected: 'bad-parameters'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"spot_instance_requests\"[].\"status\".\"code\"",
                    comparator: "anyStringEquals",
                    expected: 'system-error'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InvalidSpotInstanceRequestID.NotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_spot_instance_requests)
      #
      # @param [Hash] options
      #   (see Client#describe_spot_instance_requests)
      #
      # @return [Types::DescribeSpotInstanceRequests]
      #   (see Client#describe_spot_instance_requests)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class SubnetAvailable
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
            operation_name: :describe_subnets,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"subnets\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'available'
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
      #   (see Client#describe_subnets)
      #
      # @param [Hash] options
      #   (see Client#describe_subnets)
      #
      # @return [Types::DescribeSubnets]
      #   (see Client#describe_subnets)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class VolumeAvailable
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
            operation_name: :describe_volumes,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"volumes\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"volumes\"[].\"state\"",
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
      #   (see Client#describe_volumes)
      #
      # @param [Hash] options
      #   (see Client#describe_volumes)
      #
      # @return [Types::DescribeVolumes]
      #   (see Client#describe_volumes)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class VolumeDeleted
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
            operation_name: :describe_volumes,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"volumes\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'deleted'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'InvalidVolume.NotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_volumes)
      #
      # @param [Hash] options
      #   (see Client#describe_volumes)
      #
      # @return [Types::DescribeVolumes]
      #   (see Client#describe_volumes)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class VolumeInUse
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
            operation_name: :describe_volumes,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"volumes\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'in-use'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"volumes\"[].\"state\"",
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
      #   (see Client#describe_volumes)
      #
      # @param [Hash] options
      #   (see Client#describe_volumes)
      #
      # @return [Types::DescribeVolumes]
      #   (see Client#describe_volumes)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class VpcPeeringConnectionDeleted
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
            operation_name: :describe_vpc_peering_connections,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"vpc_peering_connections\"[].\"status\".\"code\"",
                    comparator: "allStringEquals",
                    expected: 'deleted'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'InvalidVpcPeeringConnectionID.NotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_vpc_peering_connections)
      #
      # @param [Hash] options
      #   (see Client#describe_vpc_peering_connections)
      #
      # @return [Types::DescribeVpcPeeringConnections]
      #   (see Client#describe_vpc_peering_connections)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class VpcPeeringConnectionExists
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
            operation_name: :describe_vpc_peering_connections,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  success: true
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InvalidVpcPeeringConnectionID.NotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_vpc_peering_connections)
      #
      # @param [Hash] options
      #   (see Client#describe_vpc_peering_connections)
      #
      # @return [Types::DescribeVpcPeeringConnections]
      #   (see Client#describe_vpc_peering_connections)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class VpcAvailable
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
            operation_name: :describe_vpcs,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"vpcs\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'available'
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
      #   (see Client#describe_vpcs)
      #
      # @param [Hash] options
      #   (see Client#describe_vpcs)
      #
      # @return [Types::DescribeVpcs]
      #   (see Client#describe_vpcs)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class VpcExists
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
            operation_name: :describe_vpcs,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  success: true
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InvalidVpcID.NotFound'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_vpcs)
      #
      # @param [Hash] options
      #   (see Client#describe_vpcs)
      #
      # @return [Types::DescribeVpcs]
      #   (see Client#describe_vpcs)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class VpnConnectionAvailable
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
            operation_name: :describe_vpn_connections,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"vpn_connections\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"vpn_connections\"[].\"state\"",
                    comparator: "anyStringEquals",
                    expected: 'deleting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"vpn_connections\"[].\"state\"",
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
      #   (see Client#describe_vpn_connections)
      #
      # @param [Hash] options
      #   (see Client#describe_vpn_connections)
      #
      # @return [Types::DescribeVpnConnections]
      #   (see Client#describe_vpn_connections)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class VpnConnectionDeleted
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
            operation_name: :describe_vpn_connections,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"vpn_connections\"[].\"state\"",
                    comparator: "allStringEquals",
                    expected: 'deleted'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"vpn_connections\"[].\"state\"",
                    comparator: "anyStringEquals",
                    expected: 'pending'
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
      #   (see Client#describe_vpn_connections)
      #
      # @param [Hash] options
      #   (see Client#describe_vpn_connections)
      #
      # @return [Types::DescribeVpnConnections]
      #   (see Client#describe_vpn_connections)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class PasswordDataAvailable
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
            operation_name: :get_password_data,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "length(\"password_data\") > `0.0`",
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

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_password_data)
      #
      # @param [Hash] options
      #   (see Client#get_password_data)
      #
      # @return [Types::GetPasswordData]
      #   (see Client#get_password_data)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end