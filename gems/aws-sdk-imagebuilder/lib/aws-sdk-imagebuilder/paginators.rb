# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Imagebuilder
  module Paginators

    class ListComponentBuildVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_component_build_versions)
      # @param [Hash] options (see Client#list_component_build_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_component_build_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_component_build_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_component_build_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
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
    end

    class ListContainerRecipes
      # @param [Client] client
      # @param [Hash] params (see Client#list_container_recipes)
      # @param [Hash] options (see Client#list_container_recipes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_container_recipes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_container_recipes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_container_recipes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDistributionConfigurations
      # @param [Client] client
      # @param [Hash] params (see Client#list_distribution_configurations)
      # @param [Hash] options (see Client#list_distribution_configurations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_distribution_configurations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_distribution_configurations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_distribution_configurations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListImageBuildVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_image_build_versions)
      # @param [Hash] options (see Client#list_image_build_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_image_build_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_image_build_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_image_build_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListImagePackages
      # @param [Client] client
      # @param [Hash] params (see Client#list_image_packages)
      # @param [Hash] options (see Client#list_image_packages)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_image_packages operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_image_packages(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_image_packages(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListImagePipelineImages
      # @param [Client] client
      # @param [Hash] params (see Client#list_image_pipeline_images)
      # @param [Hash] options (see Client#list_image_pipeline_images)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_image_pipeline_images operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_image_pipeline_images(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_image_pipeline_images(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListImagePipelines
      # @param [Client] client
      # @param [Hash] params (see Client#list_image_pipelines)
      # @param [Hash] options (see Client#list_image_pipelines)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_image_pipelines operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_image_pipelines(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_image_pipelines(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListImageRecipes
      # @param [Client] client
      # @param [Hash] params (see Client#list_image_recipes)
      # @param [Hash] options (see Client#list_image_recipes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_image_recipes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_image_recipes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_image_recipes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListImages
      # @param [Client] client
      # @param [Hash] params (see Client#list_images)
      # @param [Hash] options (see Client#list_images)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_images operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_images(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_images(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListInfrastructureConfigurations
      # @param [Client] client
      # @param [Hash] params (see Client#list_infrastructure_configurations)
      # @param [Hash] options (see Client#list_infrastructure_configurations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_infrastructure_configurations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_infrastructure_configurations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_infrastructure_configurations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
