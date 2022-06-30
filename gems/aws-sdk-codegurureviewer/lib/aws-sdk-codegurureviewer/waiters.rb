# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeGuruReviewer
  module Waiters

    # Wait until a code review is complete.
    #
    class CodeReviewCompleted
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
            operation_name: :describe_code_review,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"code_review\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'Completed'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"code_review\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"code_review\".\"state\"",
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
      #   (see Client#describe_code_review)
      #
      # @param [Hash] options
      #   (see Client#describe_code_review)
      #
      # @return [Types::DescribeCodeReview]
      #   (see Client#describe_code_review)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

    # Wait until a repository association is complete.
    #
    class RepositoryAssociationSucceeded
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
            operation_name: :describe_repository_association,
            acceptors: [
              {
                state: 'success',
                matcher: {
                  output: {
                    path: "\"repository_association\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'Associated'
                  }
                }
              },
              {
                state: 'failure',
                matcher: {
                  output: {
                    path: "\"repository_association\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'Failed'
                  }
                }
              },
              {
                state: 'retry',
                matcher: {
                  output: {
                    path: "\"repository_association\".\"state\"",
                    comparator: "stringEquals",
                    expected: 'Associating'
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
      #   (see Client#describe_repository_association)
      #
      # @param [Hash] options
      #   (see Client#describe_repository_association)
      #
      # @return [Types::DescribeRepositoryAssociation]
      #   (see Client#describe_repository_association)
      #
      def wait(params = {}, options = {})
        @waiter.wait(@client, params, options)
      end
    end

  end
end
