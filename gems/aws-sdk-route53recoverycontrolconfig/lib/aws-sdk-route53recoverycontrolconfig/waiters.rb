# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53RecoveryControlConfig
  module Waiters

    # Wait until a cluster is created
    #
    class ClusterCreated
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
            operation_name: :describe_cluster,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'DEPLOYED'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'PENDING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_cluster)
      #
      # @param [Hash] options
      #   (see Client#describe_cluster)
      #
      # @return [Types::DescribeCluster]
      #   (see Client#describe_cluster)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait for a cluster to be deleted
    #
    class ClusterDeleted
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
            operation_name: :describe_cluster,
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
                    path: "\"cluster\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'PENDING_DELETION'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_cluster)
      #
      # @param [Hash] options
      #   (see Client#describe_cluster)
      #
      # @return [Types::DescribeCluster]
      #   (see Client#describe_cluster)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a control panel is created
    #
    class ControlPanelCreated
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
            operation_name: :describe_control_panel,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"control_panel\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'DEPLOYED'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"control_panel\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'PENDING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_control_panel)
      #
      # @param [Hash] options
      #   (see Client#describe_control_panel)
      #
      # @return [Types::DescribeControlPanel]
      #   (see Client#describe_control_panel)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a control panel is deleted
    #
    class ControlPanelDeleted
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
            operation_name: :describe_control_panel,
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
                    path: "\"control_panel\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'PENDING_DELETION'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_control_panel)
      #
      # @param [Hash] options
      #   (see Client#describe_control_panel)
      #
      # @return [Types::DescribeControlPanel]
      #   (see Client#describe_control_panel)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a routing control is created
    #
    class RoutingControlCreated
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
            operation_name: :describe_routing_control,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"routing_control\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'DEPLOYED'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"routing_control\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'PENDING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_routing_control)
      #
      # @param [Hash] options
      #   (see Client#describe_routing_control)
      #
      # @return [Types::DescribeRoutingControl]
      #   (see Client#describe_routing_control)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait for a routing control to be deleted
    #
    class RoutingControlDeleted
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
            operation_name: :describe_routing_control,
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
                    path: "\"routing_control\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'PENDING_DELETION'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_routing_control)
      #
      # @param [Hash] options
      #   (see Client#describe_routing_control)
      #
      # @return [Types::DescribeRoutingControl]
      #   (see Client#describe_routing_control)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
