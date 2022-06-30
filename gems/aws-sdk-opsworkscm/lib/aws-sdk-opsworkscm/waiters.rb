# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::OpsWorksCM
  module Waiters

    # Wait until node is associated or disassociated.
    #
    class NodeAssociated
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
            operation_name: :describe_node_association_status,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"node_association_status\"",
                    comparator: "stringEquals",
                    expected: 'SUCCESS'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"node_association_status\"",
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
      #   (see Client#describe_node_association_status)
      #
      # @param [Hash] options
      #   (see Client#describe_node_association_status)
      #
      # @return [Types::DescribeNodeAssociationStatus]
      #   (see Client#describe_node_association_status)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
