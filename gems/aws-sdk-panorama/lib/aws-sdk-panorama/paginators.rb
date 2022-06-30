# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Panorama
  module Paginators

    class ListApplicationInstanceDependencies
      # @param [Client] client
      # @param [Hash] params (see Client#list_application_instance_dependencies)
      # @param [Hash] options (see Client#list_application_instance_dependencies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_application_instance_dependencies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_application_instance_dependencies(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_application_instance_dependencies(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListApplicationInstanceNodeInstances
      # @param [Client] client
      # @param [Hash] params (see Client#list_application_instance_node_instances)
      # @param [Hash] options (see Client#list_application_instance_node_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_application_instance_node_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_application_instance_node_instances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_application_instance_node_instances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListApplicationInstances
      # @param [Client] client
      # @param [Hash] params (see Client#list_application_instances)
      # @param [Hash] options (see Client#list_application_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_application_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_application_instances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_application_instances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDevices
      # @param [Client] client
      # @param [Hash] params (see Client#list_devices)
      # @param [Hash] options (see Client#list_devices)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_devices operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_devices(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_devices(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDevicesJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_devices_jobs)
      # @param [Hash] options (see Client#list_devices_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_devices_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_devices_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_devices_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListNodeFromTemplateJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_node_from_template_jobs)
      # @param [Hash] options (see Client#list_node_from_template_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_node_from_template_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_node_from_template_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_node_from_template_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListNodes
      # @param [Client] client
      # @param [Hash] params (see Client#list_nodes)
      # @param [Hash] options (see Client#list_nodes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_nodes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_nodes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_nodes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPackageImportJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_package_import_jobs)
      # @param [Hash] options (see Client#list_package_import_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_package_import_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_package_import_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_package_import_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPackages
      # @param [Client] client
      # @param [Hash] params (see Client#list_packages)
      # @param [Hash] options (see Client#list_packages)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_packages operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_packages(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_packages(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
