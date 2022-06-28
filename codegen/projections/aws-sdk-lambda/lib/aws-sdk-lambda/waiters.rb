# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Lambda
  module Waiters

    # Waits for the function's State to be Active. This waiter uses GetFunction API. This should be used after new function creation.
    #
    class FunctionActiveV2
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
            operation_name: :get_function,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"configuration\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'Active'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"configuration\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"configuration\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'Pending'
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
      #   (see Client#get_function)
      #
      # @param [Hash] options
      #   (see Client#get_function)
      #
      # @return [Types::GetFunction]
      #   (see Client#get_function)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class FunctionExists
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
            operation_name: :get_function,
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
      #   (see Client#get_function)
      #
      # @param [Hash] options
      #   (see Client#get_function)
      #
      # @return [Types::GetFunction]
      #   (see Client#get_function)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Waits for the function's LastUpdateStatus to be Successful. This waiter uses GetFunction API. This should be used after function updates.
    #
    class FunctionUpdatedV2
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
            operation_name: :get_function,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"configuration\".\"last_update_status\"",
                    comparator: "stringEquals",
                    expected: 'Successful'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"configuration\".\"last_update_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"configuration\".\"last_update_status\"",
                    comparator: "stringEquals",
                    expected: 'InProgress'
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
      #   (see Client#get_function)
      #
      # @param [Hash] options
      #   (see Client#get_function)
      #
      # @return [Types::GetFunction]
      #   (see Client#get_function)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Waits for the function's State to be Active. This waiter uses GetFunctionConfiguration API. This should be used after new function creation.
    #
    class FunctionActive
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
            operation_name: :get_function_configuration,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'Active'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'Pending'
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
      #   (see Client#get_function_configuration)
      #
      # @param [Hash] options
      #   (see Client#get_function_configuration)
      #
      # @return [Types::GetFunctionConfiguration]
      #   (see Client#get_function_configuration)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Waits for the function's LastUpdateStatus to be Successful. This waiter uses GetFunctionConfiguration API. This should be used after function updates.
    #
    class FunctionUpdated
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
            operation_name: :get_function_configuration,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"last_update_status\"",
                    comparator: "stringEquals",
                    expected: 'Successful'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"last_update_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"last_update_status\"",
                    comparator: "stringEquals",
                    expected: 'InProgress'
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
      #   (see Client#get_function_configuration)
      #
      # @param [Hash] options
      #   (see Client#get_function_configuration)
      #
      # @return [Types::GetFunctionConfiguration]
      #   (see Client#get_function_configuration)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
