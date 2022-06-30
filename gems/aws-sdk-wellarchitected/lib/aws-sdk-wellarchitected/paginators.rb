# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WellArchitected
  module Paginators

    class ListAnswers
      # @param [Client] client
      # @param [Hash] params (see Client#list_answers)
      # @param [Hash] options (see Client#list_answers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_answers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_answers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_answers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListLenses
      # @param [Client] client
      # @param [Hash] params (see Client#list_lenses)
      # @param [Hash] options (see Client#list_lenses)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_lenses operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_lenses(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_lenses(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListLensReviewImprovements
      # @param [Client] client
      # @param [Hash] params (see Client#list_lens_review_improvements)
      # @param [Hash] options (see Client#list_lens_review_improvements)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_lens_review_improvements operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_lens_review_improvements(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_lens_review_improvements(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListLensReviews
      # @param [Client] client
      # @param [Hash] params (see Client#list_lens_reviews)
      # @param [Hash] options (see Client#list_lens_reviews)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_lens_reviews operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_lens_reviews(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_lens_reviews(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListLensShares
      # @param [Client] client
      # @param [Hash] params (see Client#list_lens_shares)
      # @param [Hash] options (see Client#list_lens_shares)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_lens_shares operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_lens_shares(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_lens_shares(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListMilestones
      # @param [Client] client
      # @param [Hash] params (see Client#list_milestones)
      # @param [Hash] options (see Client#list_milestones)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_milestones operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_milestones(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_milestones(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListNotifications
      # @param [Client] client
      # @param [Hash] params (see Client#list_notifications)
      # @param [Hash] options (see Client#list_notifications)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_notifications operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_notifications(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_notifications(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListShareInvitations
      # @param [Client] client
      # @param [Hash] params (see Client#list_share_invitations)
      # @param [Hash] options (see Client#list_share_invitations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_share_invitations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_share_invitations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_share_invitations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListWorkloads
      # @param [Client] client
      # @param [Hash] params (see Client#list_workloads)
      # @param [Hash] options (see Client#list_workloads)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_workloads operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_workloads(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_workloads(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListWorkloadShares
      # @param [Client] client
      # @param [Hash] params (see Client#list_workload_shares)
      # @param [Hash] options (see Client#list_workload_shares)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_workload_shares operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_workload_shares(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_workload_shares(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
