# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexModelsV2
  module Waiters

    # Wait until a bot is available
    #
    class BotAvailable
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
            operation_name: :describe_bot,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"bot_status\"",
                    comparator: "stringEquals",
                    expected: 'Available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_status\"",
                    comparator: "stringEquals",
                    expected: 'Deleting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_status\"",
                    comparator: "stringEquals",
                    expected: 'Inactive'
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
      #   (see Client#describe_bot)
      #
      # @param [Hash] options
      #   (see Client#describe_bot)
      #
      # @return [Types::DescribeBot]
      #   (see Client#describe_bot)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a bot alias is available
    #
    class BotAliasAvailable
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
            operation_name: :describe_bot_alias,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"bot_alias_status\"",
                    comparator: "stringEquals",
                    expected: 'Available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_alias_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_alias_status\"",
                    comparator: "stringEquals",
                    expected: 'Deleting'
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
      #   (see Client#describe_bot_alias)
      #
      # @param [Hash] options
      #   (see Client#describe_bot_alias)
      #
      # @return [Types::DescribeBotAlias]
      #   (see Client#describe_bot_alias)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a bot locale is built
    #
    class BotLocaleBuilt
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
            operation_name: :describe_bot_locale,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"bot_locale_status\"",
                    comparator: "stringEquals",
                    expected: 'Built'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_locale_status\"",
                    comparator: "stringEquals",
                    expected: 'Deleting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_locale_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_locale_status\"",
                    comparator: "stringEquals",
                    expected: 'NotBuilt'
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
      #   (see Client#describe_bot_locale)
      #
      # @param [Hash] options
      #   (see Client#describe_bot_locale)
      #
      # @return [Types::DescribeBotLocale]
      #   (see Client#describe_bot_locale)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait unit a bot locale is created
    #
    class BotLocaleCreated
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
            operation_name: :describe_bot_locale,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"bot_locale_status\"",
                    comparator: "stringEquals",
                    expected: 'Built'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"bot_locale_status\"",
                    comparator: "stringEquals",
                    expected: 'ReadyExpressTesting'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"bot_locale_status\"",
                    comparator: "stringEquals",
                    expected: 'NotBuilt'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_locale_status\"",
                    comparator: "stringEquals",
                    expected: 'Deleting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_locale_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
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
      #   (see Client#describe_bot_locale)
      #
      # @param [Hash] options
      #   (see Client#describe_bot_locale)
      #
      # @return [Types::DescribeBotLocale]
      #   (see Client#describe_bot_locale)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a bot locale build is ready for express testing
    #
    class BotLocaleExpressTestingAvailable
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
            operation_name: :describe_bot_locale,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"bot_locale_status\"",
                    comparator: "stringEquals",
                    expected: 'Built'
                  }
                }
              },
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"bot_locale_status\"",
                    comparator: "stringEquals",
                    expected: 'ReadyExpressTesting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_locale_status\"",
                    comparator: "stringEquals",
                    expected: 'Deleting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_locale_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_locale_status\"",
                    comparator: "stringEquals",
                    expected: 'NotBuilt'
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
      #   (see Client#describe_bot_locale)
      #
      # @param [Hash] options
      #   (see Client#describe_bot_locale)
      #
      # @return [Types::DescribeBotLocale]
      #   (see Client#describe_bot_locale)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a bot version is available
    #
    class BotVersionAvailable
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
            operation_name: :describe_bot_version,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"bot_status\"",
                    comparator: "stringEquals",
                    expected: 'Available'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_status\"",
                    comparator: "stringEquals",
                    expected: 'Deleting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"bot_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
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
      #   (see Client#describe_bot_version)
      #
      # @param [Hash] options
      #   (see Client#describe_bot_version)
      #
      # @return [Types::DescribeBotVersion]
      #   (see Client#describe_bot_version)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a bot has been exported
    #
    class BotExportCompleted
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
            operation_name: :describe_export,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"export_status\"",
                    comparator: "stringEquals",
                    expected: 'Completed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"export_status\"",
                    comparator: "stringEquals",
                    expected: 'Deleting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"export_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
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
      #   (see Client#describe_export)
      #
      # @param [Hash] options
      #   (see Client#describe_export)
      #
      # @return [Types::DescribeExport]
      #   (see Client#describe_export)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a bot has been imported
    #
    class BotImportCompleted
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
            operation_name: :describe_import,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"import_status\"",
                    comparator: "stringEquals",
                    expected: 'Completed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"import_status\"",
                    comparator: "stringEquals",
                    expected: 'Deleting'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"import_status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
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
      #   (see Client#describe_import)
      #
      # @param [Hash] options
      #   (see Client#describe_import)
      #
      # @return [Types::DescribeImport]
      #   (see Client#describe_import)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
