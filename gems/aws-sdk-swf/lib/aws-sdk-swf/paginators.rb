# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SWF
  module Paginators

    class GetWorkflowExecutionHistory
      # @param [Client] client
      # @param [Hash] params (see Client#get_workflow_execution_history)
      # @param [Hash] options (see Client#get_workflow_execution_history)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_workflow_execution_history operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_page_token]
          response = @client.get_workflow_execution_history(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_page_token: output_token)
            response = @client.get_workflow_execution_history(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end

      # Iterate all items from pages in the get_workflow_execution_history operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.events.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListActivityTypes
      # @param [Client] client
      # @param [Hash] params (see Client#list_activity_types)
      # @param [Hash] options (see Client#list_activity_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_activity_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_page_token]
          response = @client.list_activity_types(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_page_token: output_token)
            response = @client.list_activity_types(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end

      # Iterate all items from pages in the list_activity_types operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.type_infos.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListClosedWorkflowExecutions
      # @param [Client] client
      # @param [Hash] params (see Client#list_closed_workflow_executions)
      # @param [Hash] options (see Client#list_closed_workflow_executions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_closed_workflow_executions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_page_token]
          response = @client.list_closed_workflow_executions(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_page_token: output_token)
            response = @client.list_closed_workflow_executions(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end

      # Iterate all items from pages in the list_closed_workflow_executions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.execution_infos.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDomains
      # @param [Client] client
      # @param [Hash] params (see Client#list_domains)
      # @param [Hash] options (see Client#list_domains)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_domains operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_page_token]
          response = @client.list_domains(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_page_token: output_token)
            response = @client.list_domains(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end

      # Iterate all items from pages in the list_domains operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.domain_infos.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListOpenWorkflowExecutions
      # @param [Client] client
      # @param [Hash] params (see Client#list_open_workflow_executions)
      # @param [Hash] options (see Client#list_open_workflow_executions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_open_workflow_executions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_page_token]
          response = @client.list_open_workflow_executions(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_page_token: output_token)
            response = @client.list_open_workflow_executions(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end

      # Iterate all items from pages in the list_open_workflow_executions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.execution_infos.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListWorkflowTypes
      # @param [Client] client
      # @param [Hash] params (see Client#list_workflow_types)
      # @param [Hash] options (see Client#list_workflow_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_workflow_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_page_token]
          response = @client.list_workflow_types(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_page_token: output_token)
            response = @client.list_workflow_types(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end

      # Iterate all items from pages in the list_workflow_types operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.type_infos.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class PollForDecisionTask
      # @param [Client] client
      # @param [Hash] params (see Client#poll_for_decision_task)
      # @param [Hash] options (see Client#poll_for_decision_task)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the poll_for_decision_task operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_page_token]
          response = @client.poll_for_decision_task(params, @options)
          e.yield(response)
          output_token = response.next_page_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_page_token: output_token)
            response = @client.poll_for_decision_task(params, @options)
            e.yield(response)
            output_token = response.next_page_token
          end
        end
      end

      # Iterate all items from pages in the poll_for_decision_task operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.events.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
