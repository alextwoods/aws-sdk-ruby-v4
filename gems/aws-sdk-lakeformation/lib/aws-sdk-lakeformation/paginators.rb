# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LakeFormation
  module Paginators

    class GetEffectivePermissionsForPath
      # @param [Client] client
      # @param [Hash] params (see Client#get_effective_permissions_for_path)
      # @param [Hash] options (see Client#get_effective_permissions_for_path)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_effective_permissions_for_path operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_effective_permissions_for_path(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_effective_permissions_for_path(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetTableObjects
      # @param [Client] client
      # @param [Hash] params (see Client#get_table_objects)
      # @param [Hash] options (see Client#get_table_objects)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_table_objects operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_table_objects(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_table_objects(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetWorkUnits
      # @param [Client] client
      # @param [Hash] params (see Client#get_work_units)
      # @param [Hash] options (see Client#get_work_units)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_work_units operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_work_units(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_work_units(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDataCellsFilter
      # @param [Client] client
      # @param [Hash] params (see Client#list_data_cells_filter)
      # @param [Hash] options (see Client#list_data_cells_filter)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_data_cells_filter operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_data_cells_filter(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_data_cells_filter(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_data_cells_filter operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.data_cells_filters.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListLFTags
      # @param [Client] client
      # @param [Hash] params (see Client#list_lf_tags)
      # @param [Hash] options (see Client#list_lf_tags)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_lf_tags operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_lf_tags(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_lf_tags(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_lf_tags operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.lf_tags.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPermissions
      # @param [Client] client
      # @param [Hash] params (see Client#list_permissions)
      # @param [Hash] options (see Client#list_permissions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_permissions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_permissions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_permissions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListResources
      # @param [Client] client
      # @param [Hash] params (see Client#list_resources)
      # @param [Hash] options (see Client#list_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTableStorageOptimizers
      # @param [Client] client
      # @param [Hash] params (see Client#list_table_storage_optimizers)
      # @param [Hash] options (see Client#list_table_storage_optimizers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_table_storage_optimizers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_table_storage_optimizers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_table_storage_optimizers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTransactions
      # @param [Client] client
      # @param [Hash] params (see Client#list_transactions)
      # @param [Hash] options (see Client#list_transactions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_transactions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_transactions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_transactions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchDatabasesByLFTags
      # @param [Client] client
      # @param [Hash] params (see Client#search_databases_by_lf_tags)
      # @param [Hash] options (see Client#search_databases_by_lf_tags)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_databases_by_lf_tags operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_databases_by_lf_tags(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_databases_by_lf_tags(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the search_databases_by_lf_tags operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.database_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class SearchTablesByLFTags
      # @param [Client] client
      # @param [Hash] params (see Client#search_tables_by_lf_tags)
      # @param [Hash] options (see Client#search_tables_by_lf_tags)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_tables_by_lf_tags operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_tables_by_lf_tags(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_tables_by_lf_tags(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the search_tables_by_lf_tags operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.table_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
