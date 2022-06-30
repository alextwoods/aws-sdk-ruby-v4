# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MachineLearning
  module Waiters

    class BatchPredictionAvailable
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
            operation_name: :describe_batch_predictions,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"results\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'COMPLETED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"results\"[].\"status\"",
                    comparator: "anyStringEquals",
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
      #   (see Client#describe_batch_predictions)
      #
      # @param [Hash] options
      #   (see Client#describe_batch_predictions)
      #
      # @return [Types::DescribeBatchPredictions]
      #   (see Client#describe_batch_predictions)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class DataSourceAvailable
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
            operation_name: :describe_data_sources,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"results\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'COMPLETED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"results\"[].\"status\"",
                    comparator: "anyStringEquals",
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
      #   (see Client#describe_data_sources)
      #
      # @param [Hash] options
      #   (see Client#describe_data_sources)
      #
      # @return [Types::DescribeDataSources]
      #   (see Client#describe_data_sources)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class EvaluationAvailable
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
            operation_name: :describe_evaluations,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"results\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'COMPLETED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"results\"[].\"status\"",
                    comparator: "anyStringEquals",
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
      #   (see Client#describe_evaluations)
      #
      # @param [Hash] options
      #   (see Client#describe_evaluations)
      #
      # @return [Types::DescribeEvaluations]
      #   (see Client#describe_evaluations)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    class MLModelAvailable
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
            operation_name: :describe_ml_models,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"results\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'COMPLETED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"results\"[].\"status\"",
                    comparator: "anyStringEquals",
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
      #   (see Client#describe_ml_models)
      #
      # @param [Hash] options
      #   (see Client#describe_ml_models)
      #
      # @return [Types::DescribeMLModels]
      #   (see Client#describe_ml_models)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
