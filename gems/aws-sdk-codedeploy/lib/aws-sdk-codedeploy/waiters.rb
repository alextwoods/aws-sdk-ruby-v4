# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeDeploy
  module Waiters

    class DeploymentSuccessful
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
            operation_name: :get_deployment,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"deployment_info\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'Succeeded'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"deployment_info\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"deployment_info\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'Stopped'
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
      #   (see Client#get_deployment)
      #
      # @param [Hash] options
      #   (see Client#get_deployment)
      #
      # @return [Types::GetDeployment]
      #   (see Client#get_deployment)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
