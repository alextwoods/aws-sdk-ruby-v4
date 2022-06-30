# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DocDB
  module Waiters

    class DBInstanceAvailable
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
            operation_name: :describe_db_instances,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"db_instances\"[].\"db_instance_status\"",
                    comparator: "allStringEquals",
                    expected: 'available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"db_instances\"[].\"db_instance_status\"",
                    comparator: "anyStringEquals",
                    expected: 'deleted'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"db_instances\"[].\"db_instance_status\"",
                    comparator: "anyStringEquals",
                    expected: 'deleting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"db_instances\"[].\"db_instance_status\"",
                    comparator: "anyStringEquals",
                    expected: 'failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"db_instances\"[].\"db_instance_status\"",
                    comparator: "anyStringEquals",
                    expected: 'incompatible-restore'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"db_instances\"[].\"db_instance_status\"",
                    comparator: "anyStringEquals",
                    expected: 'incompatible-parameters'
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
      #   (see Client#describe_db_instances)
      #
      # @param [Hash] options
      #   (see Client#describe_db_instances)
      #
      # @return [Types::DescribeDBInstances]
      #   (see Client#describe_db_instances)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class DBInstanceDeleted
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
            operation_name: :describe_db_instances,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"db_instances\"[].\"db_instance_status\"",
                    comparator: "allStringEquals",
                    expected: 'deleted'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'DBInstanceNotFound'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"db_instances\"[].\"db_instance_status\"",
                    comparator: "anyStringEquals",
                    expected: 'creating'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"db_instances\"[].\"db_instance_status\"",
                    comparator: "anyStringEquals",
                    expected: 'modifying'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"db_instances\"[].\"db_instance_status\"",
                    comparator: "anyStringEquals",
                    expected: 'rebooting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"db_instances\"[].\"db_instance_status\"",
                    comparator: "anyStringEquals",
                    expected: 'resetting-master-credentials'
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
      #   (see Client#describe_db_instances)
      #
      # @param [Hash] options
      #   (see Client#describe_db_instances)
      #
      # @return [Types::DescribeDBInstances]
      #   (see Client#describe_db_instances)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
