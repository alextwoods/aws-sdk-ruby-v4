# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Proton
  module Paginators

    class ListComponentOutputs
      # @param [Client] client
      # @param [Hash] params (see Client#list_component_outputs)
      # @param [Hash] options (see Client#list_component_outputs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_component_outputs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_component_outputs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_component_outputs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_component_outputs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.outputs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListComponentProvisionedResources
      # @param [Client] client
      # @param [Hash] params (see Client#list_component_provisioned_resources)
      # @param [Hash] options (see Client#list_component_provisioned_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_component_provisioned_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_component_provisioned_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_component_provisioned_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_component_provisioned_resources operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.provisioned_resources.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListComponents
      # @param [Client] client
      # @param [Hash] params (see Client#list_components)
      # @param [Hash] options (see Client#list_components)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_components operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_components(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_components(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_components operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.components.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListEnvironmentAccountConnections
      # @param [Client] client
      # @param [Hash] params (see Client#list_environment_account_connections)
      # @param [Hash] options (see Client#list_environment_account_connections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_environment_account_connections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_environment_account_connections(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_environment_account_connections(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_environment_account_connections operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.environment_account_connections.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListEnvironmentOutputs
      # @param [Client] client
      # @param [Hash] params (see Client#list_environment_outputs)
      # @param [Hash] options (see Client#list_environment_outputs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_environment_outputs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_environment_outputs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_environment_outputs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_environment_outputs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.outputs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListEnvironmentProvisionedResources
      # @param [Client] client
      # @param [Hash] params (see Client#list_environment_provisioned_resources)
      # @param [Hash] options (see Client#list_environment_provisioned_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_environment_provisioned_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_environment_provisioned_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_environment_provisioned_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_environment_provisioned_resources operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.provisioned_resources.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListEnvironments
      # @param [Client] client
      # @param [Hash] params (see Client#list_environments)
      # @param [Hash] options (see Client#list_environments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_environments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_environments(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_environments(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_environments operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.environments.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListEnvironmentTemplates
      # @param [Client] client
      # @param [Hash] params (see Client#list_environment_templates)
      # @param [Hash] options (see Client#list_environment_templates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_environment_templates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_environment_templates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_environment_templates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_environment_templates operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.templates.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListEnvironmentTemplateVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_environment_template_versions)
      # @param [Hash] options (see Client#list_environment_template_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_environment_template_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_environment_template_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_environment_template_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_environment_template_versions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.template_versions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListRepositories
      # @param [Client] client
      # @param [Hash] params (see Client#list_repositories)
      # @param [Hash] options (see Client#list_repositories)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_repositories operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_repositories(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_repositories(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_repositories operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.repositories.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListRepositorySyncDefinitions
      # @param [Client] client
      # @param [Hash] params (see Client#list_repository_sync_definitions)
      # @param [Hash] options (see Client#list_repository_sync_definitions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_repository_sync_definitions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_repository_sync_definitions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_repository_sync_definitions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_repository_sync_definitions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.sync_definitions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListServiceInstanceOutputs
      # @param [Client] client
      # @param [Hash] params (see Client#list_service_instance_outputs)
      # @param [Hash] options (see Client#list_service_instance_outputs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_service_instance_outputs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_service_instance_outputs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_service_instance_outputs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_service_instance_outputs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.outputs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListServiceInstanceProvisionedResources
      # @param [Client] client
      # @param [Hash] params (see Client#list_service_instance_provisioned_resources)
      # @param [Hash] options (see Client#list_service_instance_provisioned_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_service_instance_provisioned_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_service_instance_provisioned_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_service_instance_provisioned_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_service_instance_provisioned_resources operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.provisioned_resources.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListServiceInstances
      # @param [Client] client
      # @param [Hash] params (see Client#list_service_instances)
      # @param [Hash] options (see Client#list_service_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_service_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_service_instances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_service_instances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_service_instances operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.service_instances.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListServicePipelineOutputs
      # @param [Client] client
      # @param [Hash] params (see Client#list_service_pipeline_outputs)
      # @param [Hash] options (see Client#list_service_pipeline_outputs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_service_pipeline_outputs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_service_pipeline_outputs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_service_pipeline_outputs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_service_pipeline_outputs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.outputs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListServicePipelineProvisionedResources
      # @param [Client] client
      # @param [Hash] params (see Client#list_service_pipeline_provisioned_resources)
      # @param [Hash] options (see Client#list_service_pipeline_provisioned_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_service_pipeline_provisioned_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_service_pipeline_provisioned_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_service_pipeline_provisioned_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_service_pipeline_provisioned_resources operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.provisioned_resources.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListServices
      # @param [Client] client
      # @param [Hash] params (see Client#list_services)
      # @param [Hash] options (see Client#list_services)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_services operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_services(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_services(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_services operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.services.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListServiceTemplates
      # @param [Client] client
      # @param [Hash] params (see Client#list_service_templates)
      # @param [Hash] options (see Client#list_service_templates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_service_templates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_service_templates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_service_templates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_service_templates operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.templates.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListServiceTemplateVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_service_template_versions)
      # @param [Hash] options (see Client#list_service_template_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_service_template_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_service_template_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_service_template_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_service_template_versions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.template_versions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListTagsForResource
      # @param [Client] client
      # @param [Hash] params (see Client#list_tags_for_resource)
      # @param [Hash] options (see Client#list_tags_for_resource)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_tags_for_resource operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_tags_for_resource(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_tags_for_resource(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_tags_for_resource operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.tags.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
