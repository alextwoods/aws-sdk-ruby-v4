# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudControl
  module Waiters

    # Wait until resource operation request is successful
    #
    class ResourceRequestSuccess
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
            operation_name: :get_resource_request_status,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"progress_event\".\"operation_status\"",
                    comparator: "stringEquals",
                    expected: 'SUCCESS'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"progress_event\".\"operation_status\"",
                    comparator: "stringEquals",
                    expected: 'FAILED'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"progress_event\".\"operation_status\"",
                    comparator: "stringEquals",
                    expected: 'CANCEL_COMPLETE'
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
      #   (see Client#get_resource_request_status)
      #
      # @param [Hash] options
      #   (see Client#get_resource_request_status)
      #
      # @return [Types::GetResourceRequestStatus]
      #   (see Client#get_resource_request_status)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
