# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ECR
  module Waiters

    # Wait until an image scan is complete and findings can be accessed
    #
    class ImageScanComplete
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
            operation_name: :describe_image_scan_findings,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"image_scan_status\".\"status\"",
                    comparator: "stringEquals",
                    expected: 'COMPLETE'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"image_scan_status\".\"status\"",
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
      #   (see Client#describe_image_scan_findings)
      #
      # @param [Hash] options
      #   (see Client#describe_image_scan_findings)
      #
      # @return [Types::DescribeImageScanFindings]
      #   (see Client#describe_image_scan_findings)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a lifecycle policy preview request is complete and results can be accessed
    #
    class LifecyclePolicyPreviewComplete
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
            operation_name: :get_lifecycle_policy_preview,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"status\"",
                    comparator: "stringEquals",
                    expected: 'COMPLETE'
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
              }
            ]
          )
        }.merge(options))
        @tags = []
      end

      attr_reader :tags

      # @param [Hash] params
      #   (see Client#get_lifecycle_policy_preview)
      #
      # @param [Hash] options
      #   (see Client#get_lifecycle_policy_preview)
      #
      # @return [Types::GetLifecyclePolicyPreview]
      #   (see Client#get_lifecycle_policy_preview)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
