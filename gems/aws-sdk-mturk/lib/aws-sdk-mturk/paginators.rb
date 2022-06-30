# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MTurk
  module Paginators

    class ListAssignmentsForHIT
      # @param [Client] client
      # @param [Hash] params (see Client#list_assignments_for_hit)
      # @param [Hash] options (see Client#list_assignments_for_hit)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_assignments_for_hit operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_assignments_for_hit(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_assignments_for_hit(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListBonusPayments
      # @param [Client] client
      # @param [Hash] params (see Client#list_bonus_payments)
      # @param [Hash] options (see Client#list_bonus_payments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_bonus_payments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_bonus_payments(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_bonus_payments(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListHITs
      # @param [Client] client
      # @param [Hash] params (see Client#list_hi_ts)
      # @param [Hash] options (see Client#list_hi_ts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_hi_ts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_hi_ts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_hi_ts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListHITsForQualificationType
      # @param [Client] client
      # @param [Hash] params (see Client#list_hi_ts_for_qualification_type)
      # @param [Hash] options (see Client#list_hi_ts_for_qualification_type)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_hi_ts_for_qualification_type operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_hi_ts_for_qualification_type(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_hi_ts_for_qualification_type(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListQualificationRequests
      # @param [Client] client
      # @param [Hash] params (see Client#list_qualification_requests)
      # @param [Hash] options (see Client#list_qualification_requests)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_qualification_requests operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_qualification_requests(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_qualification_requests(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListQualificationTypes
      # @param [Client] client
      # @param [Hash] params (see Client#list_qualification_types)
      # @param [Hash] options (see Client#list_qualification_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_qualification_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_qualification_types(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_qualification_types(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListReviewableHITs
      # @param [Client] client
      # @param [Hash] params (see Client#list_reviewable_hi_ts)
      # @param [Hash] options (see Client#list_reviewable_hi_ts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_reviewable_hi_ts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_reviewable_hi_ts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_reviewable_hi_ts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListReviewPolicyResultsForHIT
      # @param [Client] client
      # @param [Hash] params (see Client#list_review_policy_results_for_hit)
      # @param [Hash] options (see Client#list_review_policy_results_for_hit)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_review_policy_results_for_hit operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_review_policy_results_for_hit(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_review_policy_results_for_hit(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListWorkerBlocks
      # @param [Client] client
      # @param [Hash] params (see Client#list_worker_blocks)
      # @param [Hash] options (see Client#list_worker_blocks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_worker_blocks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_worker_blocks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_worker_blocks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListWorkersWithQualificationType
      # @param [Client] client
      # @param [Hash] params (see Client#list_workers_with_qualification_type)
      # @param [Hash] options (see Client#list_workers_with_qualification_type)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_workers_with_qualification_type operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_workers_with_qualification_type(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_workers_with_qualification_type(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
