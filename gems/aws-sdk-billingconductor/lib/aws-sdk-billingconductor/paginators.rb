# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Billingconductor
  module Paginators

    class ListAccountAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#list_account_associations)
      # @param [Hash] options (see Client#list_account_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_account_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_account_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_account_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_account_associations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.linked_accounts.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListBillingGroupCostReports
      # @param [Client] client
      # @param [Hash] params (see Client#list_billing_group_cost_reports)
      # @param [Hash] options (see Client#list_billing_group_cost_reports)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_billing_group_cost_reports operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_billing_group_cost_reports(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_billing_group_cost_reports(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_billing_group_cost_reports operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.billing_group_cost_reports.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListBillingGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_billing_groups)
      # @param [Hash] options (see Client#list_billing_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_billing_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_billing_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_billing_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_billing_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.billing_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListCustomLineItems
      # @param [Client] client
      # @param [Hash] params (see Client#list_custom_line_items)
      # @param [Hash] options (see Client#list_custom_line_items)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_custom_line_items operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_custom_line_items(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_custom_line_items(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_custom_line_items operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.custom_line_items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPricingPlans
      # @param [Client] client
      # @param [Hash] params (see Client#list_pricing_plans)
      # @param [Hash] options (see Client#list_pricing_plans)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_pricing_plans operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_pricing_plans(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_pricing_plans(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_pricing_plans operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.pricing_plans.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPricingPlansAssociatedWithPricingRule
      # @param [Client] client
      # @param [Hash] params (see Client#list_pricing_plans_associated_with_pricing_rule)
      # @param [Hash] options (see Client#list_pricing_plans_associated_with_pricing_rule)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_pricing_plans_associated_with_pricing_rule operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_pricing_plans_associated_with_pricing_rule(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_pricing_plans_associated_with_pricing_rule(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_pricing_plans_associated_with_pricing_rule operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.pricing_plan_arns.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPricingRules
      # @param [Client] client
      # @param [Hash] params (see Client#list_pricing_rules)
      # @param [Hash] options (see Client#list_pricing_rules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_pricing_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_pricing_rules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_pricing_rules(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_pricing_rules operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.pricing_rules.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPricingRulesAssociatedToPricingPlan
      # @param [Client] client
      # @param [Hash] params (see Client#list_pricing_rules_associated_to_pricing_plan)
      # @param [Hash] options (see Client#list_pricing_rules_associated_to_pricing_plan)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_pricing_rules_associated_to_pricing_plan operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_pricing_rules_associated_to_pricing_plan(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_pricing_rules_associated_to_pricing_plan(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_pricing_rules_associated_to_pricing_plan operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.pricing_rule_arns.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListResourcesAssociatedToCustomLineItem
      # @param [Client] client
      # @param [Hash] params (see Client#list_resources_associated_to_custom_line_item)
      # @param [Hash] options (see Client#list_resources_associated_to_custom_line_item)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resources_associated_to_custom_line_item operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resources_associated_to_custom_line_item(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resources_associated_to_custom_line_item(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_resources_associated_to_custom_line_item operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.associated_resources.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
