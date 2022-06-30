# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppConfig
  module Paginators

    class ListApplications
      # @param [Client] client
      # @param [Hash] params (see Client#list_applications)
      # @param [Hash] options (see Client#list_applications)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_applications operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_applications(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_applications(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListConfigurationProfiles
      # @param [Client] client
      # @param [Hash] params (see Client#list_configuration_profiles)
      # @param [Hash] options (see Client#list_configuration_profiles)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_configuration_profiles operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_configuration_profiles(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_configuration_profiles(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDeployments
      # @param [Client] client
      # @param [Hash] params (see Client#list_deployments)
      # @param [Hash] options (see Client#list_deployments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_deployments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_deployments(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_deployments(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDeploymentStrategies
      # @param [Client] client
      # @param [Hash] params (see Client#list_deployment_strategies)
      # @param [Hash] options (see Client#list_deployment_strategies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_deployment_strategies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_deployment_strategies(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_deployment_strategies(params, @options)
            e.yield(response)
            output_token = response.next_token
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
    end

    class ListHostedConfigurationVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_hosted_configuration_versions)
      # @param [Hash] options (see Client#list_hosted_configuration_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_hosted_configuration_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_hosted_configuration_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_hosted_configuration_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
