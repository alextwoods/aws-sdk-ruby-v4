# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Glue
  module Paginators

    class GetBlueprintRuns
      # @param [Client] client
      # @param [Hash] params (see Client#get_blueprint_runs)
      # @param [Hash] options (see Client#get_blueprint_runs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_blueprint_runs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_blueprint_runs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_blueprint_runs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetClassifiers
      # @param [Client] client
      # @param [Hash] params (see Client#get_classifiers)
      # @param [Hash] options (see Client#get_classifiers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_classifiers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_classifiers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_classifiers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetConnections
      # @param [Client] client
      # @param [Hash] params (see Client#get_connections)
      # @param [Hash] options (see Client#get_connections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_connections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_connections(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_connections(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetCrawlerMetrics
      # @param [Client] client
      # @param [Hash] params (see Client#get_crawler_metrics)
      # @param [Hash] options (see Client#get_crawler_metrics)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_crawler_metrics operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_crawler_metrics(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_crawler_metrics(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetCrawlers
      # @param [Client] client
      # @param [Hash] params (see Client#get_crawlers)
      # @param [Hash] options (see Client#get_crawlers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_crawlers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_crawlers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_crawlers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetDatabases
      # @param [Client] client
      # @param [Hash] params (see Client#get_databases)
      # @param [Hash] options (see Client#get_databases)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_databases operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_databases(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_databases(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetDevEndpoints
      # @param [Client] client
      # @param [Hash] params (see Client#get_dev_endpoints)
      # @param [Hash] options (see Client#get_dev_endpoints)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_dev_endpoints operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_dev_endpoints(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_dev_endpoints(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetJobRuns
      # @param [Client] client
      # @param [Hash] params (see Client#get_job_runs)
      # @param [Hash] options (see Client#get_job_runs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_job_runs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_job_runs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_job_runs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetJobs
      # @param [Client] client
      # @param [Hash] params (see Client#get_jobs)
      # @param [Hash] options (see Client#get_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetMLTaskRuns
      # @param [Client] client
      # @param [Hash] params (see Client#get_ml_task_runs)
      # @param [Hash] options (see Client#get_ml_task_runs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_ml_task_runs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_ml_task_runs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_ml_task_runs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetMLTransforms
      # @param [Client] client
      # @param [Hash] params (see Client#get_ml_transforms)
      # @param [Hash] options (see Client#get_ml_transforms)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_ml_transforms operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_ml_transforms(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_ml_transforms(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetPartitionIndexes
      # @param [Client] client
      # @param [Hash] params (see Client#get_partition_indexes)
      # @param [Hash] options (see Client#get_partition_indexes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_partition_indexes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_partition_indexes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_partition_indexes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_partition_indexes operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.partition_index_descriptor_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetPartitions
      # @param [Client] client
      # @param [Hash] params (see Client#get_partitions)
      # @param [Hash] options (see Client#get_partitions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_partitions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_partitions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_partitions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetResourcePolicies
      # @param [Client] client
      # @param [Hash] params (see Client#get_resource_policies)
      # @param [Hash] options (see Client#get_resource_policies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_resource_policies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_resource_policies(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_resource_policies(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_resource_policies operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.get_resource_policies_response_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetSecurityConfigurations
      # @param [Client] client
      # @param [Hash] params (see Client#get_security_configurations)
      # @param [Hash] options (see Client#get_security_configurations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_security_configurations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_security_configurations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_security_configurations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_security_configurations operation.
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

    class GetTables
      # @param [Client] client
      # @param [Hash] params (see Client#get_tables)
      # @param [Hash] options (see Client#get_tables)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_tables operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_tables(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_tables(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetTableVersions
      # @param [Client] client
      # @param [Hash] params (see Client#get_table_versions)
      # @param [Hash] options (see Client#get_table_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_table_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_table_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_table_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetTriggers
      # @param [Client] client
      # @param [Hash] params (see Client#get_triggers)
      # @param [Hash] options (see Client#get_triggers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_triggers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_triggers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_triggers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetUnfilteredPartitionsMetadata
      # @param [Client] client
      # @param [Hash] params (see Client#get_unfiltered_partitions_metadata)
      # @param [Hash] options (see Client#get_unfiltered_partitions_metadata)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_unfiltered_partitions_metadata operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_unfiltered_partitions_metadata(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_unfiltered_partitions_metadata(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetUserDefinedFunctions
      # @param [Client] client
      # @param [Hash] params (see Client#get_user_defined_functions)
      # @param [Hash] options (see Client#get_user_defined_functions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_user_defined_functions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_user_defined_functions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_user_defined_functions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetWorkflowRuns
      # @param [Client] client
      # @param [Hash] params (see Client#get_workflow_runs)
      # @param [Hash] options (see Client#get_workflow_runs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_workflow_runs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_workflow_runs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_workflow_runs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListBlueprints
      # @param [Client] client
      # @param [Hash] params (see Client#list_blueprints)
      # @param [Hash] options (see Client#list_blueprints)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_blueprints operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_blueprints(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_blueprints(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCrawlers
      # @param [Client] client
      # @param [Hash] params (see Client#list_crawlers)
      # @param [Hash] options (see Client#list_crawlers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_crawlers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_crawlers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_crawlers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCustomEntityTypes
      # @param [Client] client
      # @param [Hash] params (see Client#list_custom_entity_types)
      # @param [Hash] options (see Client#list_custom_entity_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_custom_entity_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_custom_entity_types(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_custom_entity_types(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDevEndpoints
      # @param [Client] client
      # @param [Hash] params (see Client#list_dev_endpoints)
      # @param [Hash] options (see Client#list_dev_endpoints)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_dev_endpoints operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_dev_endpoints(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_dev_endpoints(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_jobs)
      # @param [Hash] options (see Client#list_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListMLTransforms
      # @param [Client] client
      # @param [Hash] params (see Client#list_ml_transforms)
      # @param [Hash] options (see Client#list_ml_transforms)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_ml_transforms operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_ml_transforms(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_ml_transforms(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRegistries
      # @param [Client] client
      # @param [Hash] params (see Client#list_registries)
      # @param [Hash] options (see Client#list_registries)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_registries operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_registries(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_registries(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_registries operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.registries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListSchemas
      # @param [Client] client
      # @param [Hash] params (see Client#list_schemas)
      # @param [Hash] options (see Client#list_schemas)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_schemas operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_schemas(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_schemas(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_schemas operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.schemas.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListSchemaVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_schema_versions)
      # @param [Hash] options (see Client#list_schema_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_schema_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_schema_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_schema_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_schema_versions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.schemas.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListSessions
      # @param [Client] client
      # @param [Hash] params (see Client#list_sessions)
      # @param [Hash] options (see Client#list_sessions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_sessions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_sessions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_sessions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTriggers
      # @param [Client] client
      # @param [Hash] params (see Client#list_triggers)
      # @param [Hash] options (see Client#list_triggers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_triggers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_triggers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_triggers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListWorkflows
      # @param [Client] client
      # @param [Hash] params (see Client#list_workflows)
      # @param [Hash] options (see Client#list_workflows)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_workflows operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_workflows(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_workflows(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchTables
      # @param [Client] client
      # @param [Hash] params (see Client#search_tables)
      # @param [Hash] options (see Client#search_tables)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_tables operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_tables(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_tables(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
