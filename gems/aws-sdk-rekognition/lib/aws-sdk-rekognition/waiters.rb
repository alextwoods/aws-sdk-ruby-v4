# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Rekognition
  module Waiters

    # Wait until the ProjectVersion is running.
    #
    class ProjectVersionRunning
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
            operation_name: :describe_project_versions,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"project_version_descriptions\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'RUNNING'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"project_version_descriptions\"[].\"status\"",
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
      #   (see Client#describe_project_versions)
      #
      # @param [Hash] options
      #   (see Client#describe_project_versions)
      #
      # @return [Types::DescribeProjectVersions]
      #   (see Client#describe_project_versions)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until the ProjectVersion training completes.
    #
    class ProjectVersionTrainingCompleted
      # @param [Client] client
      #
      # @param [Hash] options
      #
      # @option options [required, Integer] :max_wait_time
      #   The maximum time in seconds to wait before the waiter gives up.
      #
      # @option options [Integer] :min_delay (120)
      #   The minimum time in seconds to delay polling attempts.
      #
      # @option options [Integer] :max_delay (120)
      #   The maximum time in seconds to delay polling attempts.
      #
      def initialize(client, options = {})
        @client = client
        @waiter = Hearth::Waiters::Waiter.new({
          max_wait_time: options[:max_wait_time],
          min_delay: 120 || options[:min_delay],
          max_delay: 120 || options[:max_delay],
          poller: Hearth::Waiters::Poller.new(
            operation_name: :describe_project_versions,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"project_version_descriptions\"[].\"status\"",
                    comparator: "allStringEquals",
                    expected: 'TRAINING_COMPLETED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"project_version_descriptions\"[].\"status\"",
                    comparator: "anyStringEquals",
                    expected: 'TRAINING_FAILED'
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
      #   (see Client#describe_project_versions)
      #
      # @param [Hash] options
      #   (see Client#describe_project_versions)
      #
      # @return [Types::DescribeProjectVersions]
      #   (see Client#describe_project_versions)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
