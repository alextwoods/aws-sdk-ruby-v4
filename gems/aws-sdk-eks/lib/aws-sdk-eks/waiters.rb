# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EKS
  module Waiters

    class AddonActive
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (10)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 10 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_addon,
            acceptors: [
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"addon\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"addon\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'DEGRADED'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"addon\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'ACTIVE'
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
      #   (see Client#describe_addon)
      #
      # @param [Hash] options
      #   (see Client#describe_addon)
      #
      # @return [Types::DescribeAddon]
      #   (see Client#describe_addon)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class AddonDeleted
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (10)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 10 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_addon,
            acceptors: [
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"addon\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'DELETE_FAILED'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'ResourceNotFoundException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_addon)
      #
      # @param [Hash] options
      #   (see Client#describe_addon)
      #
      # @return [Types::DescribeAddon]
      #   (see Client#describe_addon)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class ClusterActive
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
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 30 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_cluster,
            acceptors: [
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'DELETING'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'FAILED'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'ACTIVE'
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

    class ClusterDeleted
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
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 30 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_cluster,
            acceptors: [
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'ACTIVE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'CREATING'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"cluster\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'PENDING'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'ResourceNotFoundException'
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

    class FargateProfileActive
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (10)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 10 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_fargate_profile,
            acceptors: [
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"fargate_profile\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"fargate_profile\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'ACTIVE'
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
      #   (see Client#describe_fargate_profile)
      #
      # @param [Hash] options
      #   (see Client#describe_fargate_profile)
      #
      # @return [Types::DescribeFargateProfile]
      #   (see Client#describe_fargate_profile)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class FargateProfileDeleted
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
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 30 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_fargate_profile,
            acceptors: [
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"fargate_profile\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'DELETE_FAILED'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'ResourceNotFoundException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_fargate_profile)
      #
      # @param [Hash] options
      #   (see Client#describe_fargate_profile)
      #
      # @return [Types::DescribeFargateProfile]
      #   (see Client#describe_fargate_profile)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class NodegroupActive
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
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 30 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_nodegroup,
            acceptors: [
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"nodegroup\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"nodegroup\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'ACTIVE'
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
      #   (see Client#describe_nodegroup)
      #
      # @param [Hash] options
      #   (see Client#describe_nodegroup)
      #
      # @return [Types::DescribeNodegroup]
      #   (see Client#describe_nodegroup)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class NodegroupDeleted
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
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 30 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_nodegroup,
            acceptors: [
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"nodegroup\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'DELETE_FAILED'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'ResourceNotFoundException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_nodegroup)
      #
      # @param [Hash] options
      #   (see Client#describe_nodegroup)
      #
      # @return [Types::DescribeNodegroup]
      #   (see Client#describe_nodegroup)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
