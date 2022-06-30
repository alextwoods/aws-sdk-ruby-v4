# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EMR
  module Paginators

    class ListBootstrapActions
      # @param [Client] client
      # @param [Hash] params (see Client#list_bootstrap_actions)
      # @param [Hash] options (see Client#list_bootstrap_actions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_bootstrap_actions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_bootstrap_actions(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_bootstrap_actions(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_bootstrap_actions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.bootstrap_actions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListClusters
      # @param [Client] client
      # @param [Hash] params (see Client#list_clusters)
      # @param [Hash] options (see Client#list_clusters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_clusters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_clusters(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_clusters(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_clusters operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.clusters.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListInstanceFleets
      # @param [Client] client
      # @param [Hash] params (see Client#list_instance_fleets)
      # @param [Hash] options (see Client#list_instance_fleets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_instance_fleets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_instance_fleets(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_instance_fleets(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_instance_fleets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instance_fleets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListInstanceGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_instance_groups)
      # @param [Hash] options (see Client#list_instance_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_instance_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_instance_groups(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_instance_groups(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_instance_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instance_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListInstances
      # @param [Client] client
      # @param [Hash] params (see Client#list_instances)
      # @param [Hash] options (see Client#list_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_instances(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_instances(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_instances operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.instances.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListNotebookExecutions
      # @param [Client] client
      # @param [Hash] params (see Client#list_notebook_executions)
      # @param [Hash] options (see Client#list_notebook_executions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_notebook_executions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_notebook_executions(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_notebook_executions(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_notebook_executions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.notebook_executions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListReleaseLabels
      # @param [Client] client
      # @param [Hash] params (see Client#list_release_labels)
      # @param [Hash] options (see Client#list_release_labels)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_release_labels operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_release_labels(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_release_labels(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSecurityConfigurations
      # @param [Client] client
      # @param [Hash] params (see Client#list_security_configurations)
      # @param [Hash] options (see Client#list_security_configurations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_security_configurations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_security_configurations(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_security_configurations(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_security_configurations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.security_configurations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListSteps
      # @param [Client] client
      # @param [Hash] params (see Client#list_steps)
      # @param [Hash] options (see Client#list_steps)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_steps operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_steps(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_steps(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_steps operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.steps.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListStudios
      # @param [Client] client
      # @param [Hash] params (see Client#list_studios)
      # @param [Hash] options (see Client#list_studios)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_studios operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_studios(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_studios(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_studios operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.studios.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListStudioSessionMappings
      # @param [Client] client
      # @param [Hash] params (see Client#list_studio_session_mappings)
      # @param [Hash] options (see Client#list_studio_session_mappings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_studio_session_mappings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_studio_session_mappings(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_studio_session_mappings(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end

      # Iterate all items from pages in the list_studio_session_mappings operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.session_mappings.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
