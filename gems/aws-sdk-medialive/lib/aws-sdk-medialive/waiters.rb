# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MediaLive
  module Waiters

    # Wait until a channel has been created
    #
    class ChannelCreated
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (3)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 3 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_channel,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'IDLE'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'CREATING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerErrorException'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED'
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
      #   (see Client#describe_channel)
      #
      # @param [Hash] options
      #   (see Client#describe_channel)
      #
      # @return [Types::DescribeChannel]
      #   (see Client#describe_channel)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a channel has been deleted
    #
    class ChannelDeleted
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
            operation_name: :describe_channel,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'DELETED'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'DELETING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerErrorException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_channel)
      #
      # @param [Hash] options
      #   (see Client#describe_channel)
      #
      # @return [Types::DescribeChannel]
      #   (see Client#describe_channel)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a channel is running
    #
    class ChannelRunning
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
            operation_name: :describe_channel,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'RUNNING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'STARTING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerErrorException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_channel)
      #
      # @param [Hash] options
      #   (see Client#describe_channel)
      #
      # @return [Types::DescribeChannel]
      #   (see Client#describe_channel)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a channel has is stopped
    #
    class ChannelStopped
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
            operation_name: :describe_channel,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'IDLE'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'STOPPING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerErrorException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_channel)
      #
      # @param [Hash] options
      #   (see Client#describe_channel)
      #
      # @return [Types::DescribeChannel]
      #   (see Client#describe_channel)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until an input has been attached
    #
    class InputAttached
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
            operation_name: :describe_input,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'ATTACHED'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'DETACHED'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerErrorException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_input)
      #
      # @param [Hash] options
      #   (see Client#describe_input)
      #
      # @return [Types::DescribeInput]
      #   (see Client#describe_input)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until an input has been deleted
    #
    class InputDeleted
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
            operation_name: :describe_input,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'DELETED'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'DELETING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerErrorException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_input)
      #
      # @param [Hash] options
      #   (see Client#describe_input)
      #
      # @return [Types::DescribeInput]
      #   (see Client#describe_input)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until an input has been detached
    #
    class InputDetached
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
            operation_name: :describe_input,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'DETACHED'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'CREATING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'ATTACHED'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerErrorException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_input)
      #
      # @param [Hash] options
      #   (see Client#describe_input)
      #
      # @return [Types::DescribeInput]
      #   (see Client#describe_input)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a multiplex has been created
    #
    class MultiplexCreated
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (3)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 3 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_multiplex,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'IDLE'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'CREATING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerErrorException'
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'CREATE_FAILED'
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
      #   (see Client#describe_multiplex)
      #
      # @param [Hash] options
      #   (see Client#describe_multiplex)
      #
      # @return [Types::DescribeMultiplex]
      #   (see Client#describe_multiplex)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a multiplex has been deleted
    #
    class MultiplexDeleted
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
            operation_name: :describe_multiplex,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'DELETED'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'DELETING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerErrorException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_multiplex)
      #
      # @param [Hash] options
      #   (see Client#describe_multiplex)
      #
      # @return [Types::DescribeMultiplex]
      #   (see Client#describe_multiplex)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a multiplex is running
    #
    class MultiplexRunning
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
            operation_name: :describe_multiplex,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'RUNNING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'STARTING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerErrorException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_multiplex)
      #
      # @param [Hash] options
      #   (see Client#describe_multiplex)
      #
      # @return [Types::DescribeMultiplex]
      #   (see Client#describe_multiplex)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a multiplex has is stopped
    #
    class MultiplexStopped
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
            operation_name: :describe_multiplex,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'IDLE'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"state\"",
                    comparator: "stringEquals",
                    expected: 'STOPPING'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  errorType: 'InternalServerErrorException'
                }
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#describe_multiplex)
      #
      # @param [Hash] options
      #   (see Client#describe_multiplex)
      #
      # @return [Types::DescribeMultiplex]
      #   (see Client#describe_multiplex)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
