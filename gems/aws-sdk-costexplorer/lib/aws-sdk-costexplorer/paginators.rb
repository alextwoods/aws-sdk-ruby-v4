# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CostExplorer
  module Paginators

    class GetSavingsPlansCoverage
      # @param [Client] client
      # @param [Hash] params (see Client#get_savings_plans_coverage)
      # @param [Hash] options (see Client#get_savings_plans_coverage)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_savings_plans_coverage operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_savings_plans_coverage(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_savings_plans_coverage(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetSavingsPlansUtilizationDetails
      # @param [Client] client
      # @param [Hash] params (see Client#get_savings_plans_utilization_details)
      # @param [Hash] options (see Client#get_savings_plans_utilization_details)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_savings_plans_utilization_details operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_savings_plans_utilization_details(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_savings_plans_utilization_details(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCostAllocationTags
      # @param [Client] client
      # @param [Hash] params (see Client#list_cost_allocation_tags)
      # @param [Hash] options (see Client#list_cost_allocation_tags)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_cost_allocation_tags operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_cost_allocation_tags(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_cost_allocation_tags(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCostCategoryDefinitions
      # @param [Client] client
      # @param [Hash] params (see Client#list_cost_category_definitions)
      # @param [Hash] options (see Client#list_cost_category_definitions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_cost_category_definitions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_cost_category_definitions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_cost_category_definitions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
