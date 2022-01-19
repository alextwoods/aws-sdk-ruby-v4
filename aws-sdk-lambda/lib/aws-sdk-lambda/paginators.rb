# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Lambda
  module Paginators

    class ListAliases
      # @param [Client] client
      # @param [Hash] params (see Client#list_aliases)
      # @param [Hash] options (see Client#list_aliases)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_aliases operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_aliases(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_aliases(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_aliases operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.aliases.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListCodeSigningConfigs
      # @param [Client] client
      # @param [Hash] params (see Client#list_code_signing_configs)
      # @param [Hash] options (see Client#list_code_signing_configs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_code_signing_configs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_code_signing_configs(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_code_signing_configs(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_code_signing_configs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.code_signing_configs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListEventSourceMappings
      # @param [Client] client
      # @param [Hash] params (see Client#list_event_source_mappings)
      # @param [Hash] options (see Client#list_event_source_mappings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_event_source_mappings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_event_source_mappings(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_event_source_mappings(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_event_source_mappings operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.event_source_mappings.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListFunctionEventInvokeConfigs
      # @param [Client] client
      # @param [Hash] params (see Client#list_function_event_invoke_configs)
      # @param [Hash] options (see Client#list_function_event_invoke_configs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_function_event_invoke_configs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_function_event_invoke_configs(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_function_event_invoke_configs(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_function_event_invoke_configs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.function_event_invoke_configs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListFunctions
      # @param [Client] client
      # @param [Hash] params (see Client#list_functions)
      # @param [Hash] options (see Client#list_functions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_functions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_functions(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_functions(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_functions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.functions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListFunctionsByCodeSigningConfig
      # @param [Client] client
      # @param [Hash] params (see Client#list_functions_by_code_signing_config)
      # @param [Hash] options (see Client#list_functions_by_code_signing_config)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_functions_by_code_signing_config operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_functions_by_code_signing_config(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_functions_by_code_signing_config(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_functions_by_code_signing_config operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.function_arns.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListLayers
      # @param [Client] client
      # @param [Hash] params (see Client#list_layers)
      # @param [Hash] options (see Client#list_layers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_layers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_layers(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_layers(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_layers operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.layers.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListLayerVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_layer_versions)
      # @param [Hash] options (see Client#list_layer_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_layer_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_layer_versions(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_layer_versions(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_layer_versions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.layer_versions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListProvisionedConcurrencyConfigs
      # @param [Client] client
      # @param [Hash] params (see Client#list_provisioned_concurrency_configs)
      # @param [Hash] options (see Client#list_provisioned_concurrency_configs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_provisioned_concurrency_configs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_provisioned_concurrency_configs(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_provisioned_concurrency_configs(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_provisioned_concurrency_configs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.provisioned_concurrency_configs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListVersionsByFunction
      # @param [Client] client
      # @param [Hash] params (see Client#list_versions_by_function)
      # @param [Hash] options (see Client#list_versions_by_function)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_versions_by_function operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_versions_by_function(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_versions_by_function(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_versions_by_function operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.versions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
