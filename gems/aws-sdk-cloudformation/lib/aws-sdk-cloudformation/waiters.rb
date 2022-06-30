# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudFormation
  module Waiters

    # Wait until change set status is CREATE_COMPLETE.
    #
    class ChangeSetCreateComplete
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
            operation_name: :describe_change_set,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"status\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_COMPLETE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"status\"",
                    comparator: "stringEquals",
                    expected: 'FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'ValidationError'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_change_set)
      #
      # @param [Hash] options
      #   (see Client#describe_change_set)
      #
      # @return [Types::DescribeChangeSet]
      #   (see Client#describe_change_set)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until stack status is CREATE_COMPLETE.
    #
    class StackCreateComplete
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
            operation_name: :describe_stacks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "allStringEquals",
                    expected: 'CREATE_COMPLETE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'CREATE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'DELETE_COMPLETE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'DELETE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'ROLLBACK_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'ROLLBACK_COMPLETE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'ValidationError'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_stacks)
      #
      # @param [Hash] options
      #   (see Client#describe_stacks)
      #
      # @return [Types::DescribeStacks]
      #   (see Client#describe_stacks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until stack status is DELETE_COMPLETE.
    #
    class StackDeleteComplete
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
            operation_name: :describe_stacks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "allStringEquals",
                    expected: 'DELETE_COMPLETE'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  errorType: 'ValidationError'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'DELETE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'CREATE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'ROLLBACK_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'UPDATE_ROLLBACK_IN_PROGRESS'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'UPDATE_ROLLBACK_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'UPDATE_ROLLBACK_COMPLETE'
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
      #   (see Client#describe_stacks)
      #
      # @param [Hash] options
      #   (see Client#describe_stacks)
      #
      # @return [Types::DescribeStacks]
      #   (see Client#describe_stacks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class StackExists
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
            operation_name: :describe_stacks,
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
                  errorType: 'ValidationError'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_stacks)
      #
      # @param [Hash] options
      #   (see Client#describe_stacks)
      #
      # @return [Types::DescribeStacks]
      #   (see Client#describe_stacks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until stack status is IMPORT_COMPLETE.
    #
    class StackImportComplete
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
            operation_name: :describe_stacks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "allStringEquals",
                    expected: 'IMPORT_COMPLETE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'ROLLBACK_COMPLETE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'ROLLBACK_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'IMPORT_ROLLBACK_IN_PROGRESS'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'IMPORT_ROLLBACK_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'IMPORT_ROLLBACK_COMPLETE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'ValidationError'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_stacks)
      #
      # @param [Hash] options
      #   (see Client#describe_stacks)
      #
      # @return [Types::DescribeStacks]
      #   (see Client#describe_stacks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until stack status is UPDATE_ROLLBACK_COMPLETE.
    #
    class StackRollbackComplete
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
            operation_name: :describe_stacks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "allStringEquals",
                    expected: 'UPDATE_ROLLBACK_COMPLETE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'UPDATE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'UPDATE_ROLLBACK_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'DELETE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'ValidationError'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_stacks)
      #
      # @param [Hash] options
      #   (see Client#describe_stacks)
      #
      # @return [Types::DescribeStacks]
      #   (see Client#describe_stacks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until stack status is UPDATE_COMPLETE.
    #
    class StackUpdateComplete
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
            operation_name: :describe_stacks,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "allStringEquals",
                    expected: 'UPDATE_COMPLETE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'UPDATE_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'UPDATE_ROLLBACK_FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"stacks\"[].\"stack_status\"",
                    comparator: "anyStringEquals",
                    expected: 'UPDATE_ROLLBACK_COMPLETE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  errorType: 'ValidationError'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_stacks)
      #
      # @param [Hash] options
      #   (see Client#describe_stacks)
      #
      # @return [Types::DescribeStacks]
      #   (see Client#describe_stacks)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until type registration is COMPLETE.
    #
    class TypeRegistrationComplete
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
            operation_name: :describe_type_registration,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"progress_status\"",
                    comparator: "stringEquals",
                    expected: 'COMPLETE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"progress_status\"",
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
      #   (see Client#describe_type_registration)
      #
      # @param [Hash] options
      #   (see Client#describe_type_registration)
      #
      # @return [Types::DescribeTypeRegistration]
      #   (see Client#describe_type_registration)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
