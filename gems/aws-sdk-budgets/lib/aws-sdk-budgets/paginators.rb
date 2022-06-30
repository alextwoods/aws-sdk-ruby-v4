# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Budgets
  module Paginators

    class DescribeBudgetActionHistories
      # @param [Client] client
      # @param [Hash] params (see Client#describe_budget_action_histories)
      # @param [Hash] options (see Client#describe_budget_action_histories)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_budget_action_histories operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_budget_action_histories(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_budget_action_histories(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_budget_action_histories operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.action_histories.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeBudgetActionsForAccount
      # @param [Client] client
      # @param [Hash] params (see Client#describe_budget_actions_for_account)
      # @param [Hash] options (see Client#describe_budget_actions_for_account)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_budget_actions_for_account operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_budget_actions_for_account(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_budget_actions_for_account(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_budget_actions_for_account operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.actions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeBudgetActionsForBudget
      # @param [Client] client
      # @param [Hash] params (see Client#describe_budget_actions_for_budget)
      # @param [Hash] options (see Client#describe_budget_actions_for_budget)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_budget_actions_for_budget operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_budget_actions_for_budget(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_budget_actions_for_budget(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_budget_actions_for_budget operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.actions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeBudgetNotificationsForAccount
      # @param [Client] client
      # @param [Hash] params (see Client#describe_budget_notifications_for_account)
      # @param [Hash] options (see Client#describe_budget_notifications_for_account)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_budget_notifications_for_account operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_budget_notifications_for_account(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_budget_notifications_for_account(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_budget_notifications_for_account operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.budget_notifications_for_account.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeBudgetPerformanceHistory
      # @param [Client] client
      # @param [Hash] params (see Client#describe_budget_performance_history)
      # @param [Hash] options (see Client#describe_budget_performance_history)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_budget_performance_history operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_budget_performance_history(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_budget_performance_history(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeBudgets
      # @param [Client] client
      # @param [Hash] params (see Client#describe_budgets)
      # @param [Hash] options (see Client#describe_budgets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_budgets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_budgets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_budgets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_budgets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.budgets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeNotificationsForBudget
      # @param [Client] client
      # @param [Hash] params (see Client#describe_notifications_for_budget)
      # @param [Hash] options (see Client#describe_notifications_for_budget)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_notifications_for_budget operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_notifications_for_budget(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_notifications_for_budget(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_notifications_for_budget operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.notifications.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeSubscribersForNotification
      # @param [Client] client
      # @param [Hash] params (see Client#describe_subscribers_for_notification)
      # @param [Hash] options (see Client#describe_subscribers_for_notification)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_subscribers_for_notification operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_subscribers_for_notification(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_subscribers_for_notification(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_subscribers_for_notification operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.subscribers.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
