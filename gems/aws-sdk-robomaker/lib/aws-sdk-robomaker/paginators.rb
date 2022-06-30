# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RoboMaker
  module Paginators

    class ListDeploymentJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_deployment_jobs)
      # @param [Hash] options (see Client#list_deployment_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_deployment_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_deployment_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_deployment_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFleets
      # @param [Client] client
      # @param [Hash] params (see Client#list_fleets)
      # @param [Hash] options (see Client#list_fleets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_fleets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_fleets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_fleets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRobotApplications
      # @param [Client] client
      # @param [Hash] params (see Client#list_robot_applications)
      # @param [Hash] options (see Client#list_robot_applications)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_robot_applications operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_robot_applications(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_robot_applications(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRobots
      # @param [Client] client
      # @param [Hash] params (see Client#list_robots)
      # @param [Hash] options (see Client#list_robots)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_robots operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_robots(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_robots(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSimulationApplications
      # @param [Client] client
      # @param [Hash] params (see Client#list_simulation_applications)
      # @param [Hash] options (see Client#list_simulation_applications)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_simulation_applications operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_simulation_applications(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_simulation_applications(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSimulationJobBatches
      # @param [Client] client
      # @param [Hash] params (see Client#list_simulation_job_batches)
      # @param [Hash] options (see Client#list_simulation_job_batches)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_simulation_job_batches operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_simulation_job_batches(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_simulation_job_batches(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSimulationJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_simulation_jobs)
      # @param [Hash] options (see Client#list_simulation_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_simulation_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_simulation_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_simulation_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListWorldExportJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_world_export_jobs)
      # @param [Hash] options (see Client#list_world_export_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_world_export_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_world_export_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_world_export_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListWorldGenerationJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_world_generation_jobs)
      # @param [Hash] options (see Client#list_world_generation_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_world_generation_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_world_generation_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_world_generation_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListWorlds
      # @param [Client] client
      # @param [Hash] params (see Client#list_worlds)
      # @param [Hash] options (see Client#list_worlds)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_worlds operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_worlds(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_worlds(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListWorldTemplates
      # @param [Client] client
      # @param [Hash] params (see Client#list_world_templates)
      # @param [Hash] options (see Client#list_world_templates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_world_templates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_world_templates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_world_templates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
