# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53RecoveryReadiness
  module Paginators

    class GetCellReadinessSummary
      # @param [Client] client
      # @param [Hash] params (see Client#get_cell_readiness_summary)
      # @param [Hash] options (see Client#get_cell_readiness_summary)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_cell_readiness_summary operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_cell_readiness_summary(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_cell_readiness_summary(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_cell_readiness_summary operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.readiness_checks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetReadinessCheckResourceStatus
      # @param [Client] client
      # @param [Hash] params (see Client#get_readiness_check_resource_status)
      # @param [Hash] options (see Client#get_readiness_check_resource_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_readiness_check_resource_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_readiness_check_resource_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_readiness_check_resource_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_readiness_check_resource_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.rules.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetReadinessCheckStatus
      # @param [Client] client
      # @param [Hash] params (see Client#get_readiness_check_status)
      # @param [Hash] options (see Client#get_readiness_check_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_readiness_check_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_readiness_check_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_readiness_check_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_readiness_check_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.resources.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetRecoveryGroupReadinessSummary
      # @param [Client] client
      # @param [Hash] params (see Client#get_recovery_group_readiness_summary)
      # @param [Hash] options (see Client#get_recovery_group_readiness_summary)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_recovery_group_readiness_summary operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_recovery_group_readiness_summary(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_recovery_group_readiness_summary(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_recovery_group_readiness_summary operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.readiness_checks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListCells
      # @param [Client] client
      # @param [Hash] params (see Client#list_cells)
      # @param [Hash] options (see Client#list_cells)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_cells operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_cells(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_cells(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_cells operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.cells.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListCrossAccountAuthorizations
      # @param [Client] client
      # @param [Hash] params (see Client#list_cross_account_authorizations)
      # @param [Hash] options (see Client#list_cross_account_authorizations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_cross_account_authorizations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_cross_account_authorizations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_cross_account_authorizations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_cross_account_authorizations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.cross_account_authorizations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListReadinessChecks
      # @param [Client] client
      # @param [Hash] params (see Client#list_readiness_checks)
      # @param [Hash] options (see Client#list_readiness_checks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_readiness_checks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_readiness_checks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_readiness_checks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_readiness_checks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.readiness_checks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListRecoveryGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_recovery_groups)
      # @param [Hash] options (see Client#list_recovery_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_recovery_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_recovery_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_recovery_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_recovery_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.recovery_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListResourceSets
      # @param [Client] client
      # @param [Hash] params (see Client#list_resource_sets)
      # @param [Hash] options (see Client#list_resource_sets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resource_sets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resource_sets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resource_sets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_resource_sets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.resource_sets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListRules
      # @param [Client] client
      # @param [Hash] params (see Client#list_rules)
      # @param [Hash] options (see Client#list_rules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_rules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_rules(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_rules operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.rules.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
