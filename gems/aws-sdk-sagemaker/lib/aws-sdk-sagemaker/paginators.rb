# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SageMaker
  module Paginators

    class ListActions
      # @param [Client] client
      # @param [Hash] params (see Client#list_actions)
      # @param [Hash] options (see Client#list_actions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_actions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_actions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_actions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_actions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.action_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAlgorithms
      # @param [Client] client
      # @param [Hash] params (see Client#list_algorithms)
      # @param [Hash] options (see Client#list_algorithms)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_algorithms operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_algorithms(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_algorithms(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_algorithms operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.algorithm_summary_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAppImageConfigs
      # @param [Client] client
      # @param [Hash] params (see Client#list_app_image_configs)
      # @param [Hash] options (see Client#list_app_image_configs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_app_image_configs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_app_image_configs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_app_image_configs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_app_image_configs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.app_image_configs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListApps
      # @param [Client] client
      # @param [Hash] params (see Client#list_apps)
      # @param [Hash] options (see Client#list_apps)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_apps operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_apps(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_apps(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_apps operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.apps.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListArtifacts
      # @param [Client] client
      # @param [Hash] params (see Client#list_artifacts)
      # @param [Hash] options (see Client#list_artifacts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_artifacts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_artifacts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_artifacts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_artifacts operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.artifact_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#list_associations)
      # @param [Hash] options (see Client#list_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_associations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.association_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAutoMLJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_auto_ml_jobs)
      # @param [Hash] options (see Client#list_auto_ml_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_auto_ml_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_auto_ml_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_auto_ml_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_auto_ml_jobs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.auto_ml_job_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListCandidatesForAutoMLJob
      # @param [Client] client
      # @param [Hash] params (see Client#list_candidates_for_auto_ml_job)
      # @param [Hash] options (see Client#list_candidates_for_auto_ml_job)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_candidates_for_auto_ml_job operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_candidates_for_auto_ml_job(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_candidates_for_auto_ml_job(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_candidates_for_auto_ml_job operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.candidates.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListCodeRepositories
      # @param [Client] client
      # @param [Hash] params (see Client#list_code_repositories)
      # @param [Hash] options (see Client#list_code_repositories)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_code_repositories operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_code_repositories(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_code_repositories(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_code_repositories operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.code_repository_summary_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListCompilationJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_compilation_jobs)
      # @param [Hash] options (see Client#list_compilation_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_compilation_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_compilation_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_compilation_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_compilation_jobs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.compilation_job_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListContexts
      # @param [Client] client
      # @param [Hash] params (see Client#list_contexts)
      # @param [Hash] options (see Client#list_contexts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_contexts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_contexts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_contexts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_contexts operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.context_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDataQualityJobDefinitions
      # @param [Client] client
      # @param [Hash] params (see Client#list_data_quality_job_definitions)
      # @param [Hash] options (see Client#list_data_quality_job_definitions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_data_quality_job_definitions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_data_quality_job_definitions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_data_quality_job_definitions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_data_quality_job_definitions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.job_definition_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDeviceFleets
      # @param [Client] client
      # @param [Hash] params (see Client#list_device_fleets)
      # @param [Hash] options (see Client#list_device_fleets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_device_fleets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_device_fleets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_device_fleets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_device_fleets operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.device_fleet_summaries.each do |item|
              e.yield(item)
            end
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

      # Iterate all items from pages in the list_devices operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.device_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDomains
      # @param [Client] client
      # @param [Hash] params (see Client#list_domains)
      # @param [Hash] options (see Client#list_domains)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_domains operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_domains(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_domains(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_domains operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.domains.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListEdgePackagingJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_edge_packaging_jobs)
      # @param [Hash] options (see Client#list_edge_packaging_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_edge_packaging_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_edge_packaging_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_edge_packaging_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_edge_packaging_jobs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.edge_packaging_job_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListEndpointConfigs
      # @param [Client] client
      # @param [Hash] params (see Client#list_endpoint_configs)
      # @param [Hash] options (see Client#list_endpoint_configs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_endpoint_configs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_endpoint_configs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_endpoint_configs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_endpoint_configs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.endpoint_configs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListEndpoints
      # @param [Client] client
      # @param [Hash] params (see Client#list_endpoints)
      # @param [Hash] options (see Client#list_endpoints)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_endpoints operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_endpoints(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_endpoints(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_endpoints operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.endpoints.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListExperiments
      # @param [Client] client
      # @param [Hash] params (see Client#list_experiments)
      # @param [Hash] options (see Client#list_experiments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_experiments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_experiments(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_experiments(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_experiments operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.experiment_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListFlowDefinitions
      # @param [Client] client
      # @param [Hash] params (see Client#list_flow_definitions)
      # @param [Hash] options (see Client#list_flow_definitions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_flow_definitions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_flow_definitions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_flow_definitions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_flow_definitions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.flow_definition_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListHumanTaskUis
      # @param [Client] client
      # @param [Hash] params (see Client#list_human_task_uis)
      # @param [Hash] options (see Client#list_human_task_uis)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_human_task_uis operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_human_task_uis(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_human_task_uis(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_human_task_uis operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.human_task_ui_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListHyperParameterTuningJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_hyper_parameter_tuning_jobs)
      # @param [Hash] options (see Client#list_hyper_parameter_tuning_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_hyper_parameter_tuning_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_hyper_parameter_tuning_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_hyper_parameter_tuning_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_hyper_parameter_tuning_jobs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.hyper_parameter_tuning_job_summaries.each do |item|
              e.yield(item)
            end
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

      # Iterate all items from pages in the list_images operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.images.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListImageVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_image_versions)
      # @param [Hash] options (see Client#list_image_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_image_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_image_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_image_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_image_versions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.image_versions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListInferenceRecommendationsJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_inference_recommendations_jobs)
      # @param [Hash] options (see Client#list_inference_recommendations_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_inference_recommendations_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_inference_recommendations_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_inference_recommendations_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_inference_recommendations_jobs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.inference_recommendations_jobs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListLabelingJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_labeling_jobs)
      # @param [Hash] options (see Client#list_labeling_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_labeling_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_labeling_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_labeling_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_labeling_jobs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.labeling_job_summary_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListLabelingJobsForWorkteam
      # @param [Client] client
      # @param [Hash] params (see Client#list_labeling_jobs_for_workteam)
      # @param [Hash] options (see Client#list_labeling_jobs_for_workteam)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_labeling_jobs_for_workteam operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_labeling_jobs_for_workteam(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_labeling_jobs_for_workteam(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_labeling_jobs_for_workteam operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.labeling_job_summary_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListLineageGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_lineage_groups)
      # @param [Hash] options (see Client#list_lineage_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_lineage_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_lineage_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_lineage_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_lineage_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.lineage_group_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListModelBiasJobDefinitions
      # @param [Client] client
      # @param [Hash] params (see Client#list_model_bias_job_definitions)
      # @param [Hash] options (see Client#list_model_bias_job_definitions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_model_bias_job_definitions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_model_bias_job_definitions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_model_bias_job_definitions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_model_bias_job_definitions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.job_definition_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListModelExplainabilityJobDefinitions
      # @param [Client] client
      # @param [Hash] params (see Client#list_model_explainability_job_definitions)
      # @param [Hash] options (see Client#list_model_explainability_job_definitions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_model_explainability_job_definitions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_model_explainability_job_definitions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_model_explainability_job_definitions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_model_explainability_job_definitions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.job_definition_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListModelMetadata
      # @param [Client] client
      # @param [Hash] params (see Client#list_model_metadata)
      # @param [Hash] options (see Client#list_model_metadata)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_model_metadata operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_model_metadata(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_model_metadata(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_model_metadata operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.model_metadata_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListModelPackageGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_model_package_groups)
      # @param [Hash] options (see Client#list_model_package_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_model_package_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_model_package_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_model_package_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_model_package_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.model_package_group_summary_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListModelPackages
      # @param [Client] client
      # @param [Hash] params (see Client#list_model_packages)
      # @param [Hash] options (see Client#list_model_packages)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_model_packages operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_model_packages(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_model_packages(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_model_packages operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.model_package_summary_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListModelQualityJobDefinitions
      # @param [Client] client
      # @param [Hash] params (see Client#list_model_quality_job_definitions)
      # @param [Hash] options (see Client#list_model_quality_job_definitions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_model_quality_job_definitions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_model_quality_job_definitions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_model_quality_job_definitions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_model_quality_job_definitions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.job_definition_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListModels
      # @param [Client] client
      # @param [Hash] params (see Client#list_models)
      # @param [Hash] options (see Client#list_models)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_models operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_models(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_models(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_models operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.models.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListMonitoringExecutions
      # @param [Client] client
      # @param [Hash] params (see Client#list_monitoring_executions)
      # @param [Hash] options (see Client#list_monitoring_executions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_monitoring_executions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_monitoring_executions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_monitoring_executions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_monitoring_executions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.monitoring_execution_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListMonitoringSchedules
      # @param [Client] client
      # @param [Hash] params (see Client#list_monitoring_schedules)
      # @param [Hash] options (see Client#list_monitoring_schedules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_monitoring_schedules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_monitoring_schedules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_monitoring_schedules(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_monitoring_schedules operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.monitoring_schedule_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListNotebookInstanceLifecycleConfigs
      # @param [Client] client
      # @param [Hash] params (see Client#list_notebook_instance_lifecycle_configs)
      # @param [Hash] options (see Client#list_notebook_instance_lifecycle_configs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_notebook_instance_lifecycle_configs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_notebook_instance_lifecycle_configs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_notebook_instance_lifecycle_configs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_notebook_instance_lifecycle_configs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.notebook_instance_lifecycle_configs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListNotebookInstances
      # @param [Client] client
      # @param [Hash] params (see Client#list_notebook_instances)
      # @param [Hash] options (see Client#list_notebook_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_notebook_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_notebook_instances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_notebook_instances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_notebook_instances operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.notebook_instances.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPipelineExecutions
      # @param [Client] client
      # @param [Hash] params (see Client#list_pipeline_executions)
      # @param [Hash] options (see Client#list_pipeline_executions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_pipeline_executions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_pipeline_executions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_pipeline_executions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_pipeline_executions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.pipeline_execution_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPipelineExecutionSteps
      # @param [Client] client
      # @param [Hash] params (see Client#list_pipeline_execution_steps)
      # @param [Hash] options (see Client#list_pipeline_execution_steps)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_pipeline_execution_steps operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_pipeline_execution_steps(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_pipeline_execution_steps(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_pipeline_execution_steps operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.pipeline_execution_steps.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPipelineParametersForExecution
      # @param [Client] client
      # @param [Hash] params (see Client#list_pipeline_parameters_for_execution)
      # @param [Hash] options (see Client#list_pipeline_parameters_for_execution)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_pipeline_parameters_for_execution operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_pipeline_parameters_for_execution(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_pipeline_parameters_for_execution(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_pipeline_parameters_for_execution operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.pipeline_parameters.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPipelines
      # @param [Client] client
      # @param [Hash] params (see Client#list_pipelines)
      # @param [Hash] options (see Client#list_pipelines)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_pipelines operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_pipelines(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_pipelines(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_pipelines operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.pipeline_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListProcessingJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_processing_jobs)
      # @param [Hash] options (see Client#list_processing_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_processing_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_processing_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_processing_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_processing_jobs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.processing_job_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListProjects
      # @param [Client] client
      # @param [Hash] params (see Client#list_projects)
      # @param [Hash] options (see Client#list_projects)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_projects operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_projects(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_projects(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListStudioLifecycleConfigs
      # @param [Client] client
      # @param [Hash] params (see Client#list_studio_lifecycle_configs)
      # @param [Hash] options (see Client#list_studio_lifecycle_configs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_studio_lifecycle_configs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_studio_lifecycle_configs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_studio_lifecycle_configs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_studio_lifecycle_configs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.studio_lifecycle_configs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListSubscribedWorkteams
      # @param [Client] client
      # @param [Hash] params (see Client#list_subscribed_workteams)
      # @param [Hash] options (see Client#list_subscribed_workteams)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_subscribed_workteams operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_subscribed_workteams(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_subscribed_workteams(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_subscribed_workteams operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.subscribed_workteams.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListTags
      # @param [Client] client
      # @param [Hash] params (see Client#list_tags)
      # @param [Hash] options (see Client#list_tags)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_tags operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_tags(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_tags(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_tags operation.
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

    class ListTrainingJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_training_jobs)
      # @param [Hash] options (see Client#list_training_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_training_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_training_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_training_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_training_jobs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.training_job_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListTrainingJobsForHyperParameterTuningJob
      # @param [Client] client
      # @param [Hash] params (see Client#list_training_jobs_for_hyper_parameter_tuning_job)
      # @param [Hash] options (see Client#list_training_jobs_for_hyper_parameter_tuning_job)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_training_jobs_for_hyper_parameter_tuning_job operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_training_jobs_for_hyper_parameter_tuning_job(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_training_jobs_for_hyper_parameter_tuning_job(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_training_jobs_for_hyper_parameter_tuning_job operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.training_job_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListTransformJobs
      # @param [Client] client
      # @param [Hash] params (see Client#list_transform_jobs)
      # @param [Hash] options (see Client#list_transform_jobs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_transform_jobs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_transform_jobs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_transform_jobs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_transform_jobs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.transform_job_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListTrialComponents
      # @param [Client] client
      # @param [Hash] params (see Client#list_trial_components)
      # @param [Hash] options (see Client#list_trial_components)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_trial_components operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_trial_components(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_trial_components(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_trial_components operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.trial_component_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListTrials
      # @param [Client] client
      # @param [Hash] params (see Client#list_trials)
      # @param [Hash] options (see Client#list_trials)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_trials operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_trials(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_trials(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_trials operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.trial_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListUserProfiles
      # @param [Client] client
      # @param [Hash] params (see Client#list_user_profiles)
      # @param [Hash] options (see Client#list_user_profiles)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_user_profiles operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_user_profiles(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_user_profiles(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_user_profiles operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.user_profiles.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListWorkforces
      # @param [Client] client
      # @param [Hash] params (see Client#list_workforces)
      # @param [Hash] options (see Client#list_workforces)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_workforces operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_workforces(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_workforces(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_workforces operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.workforces.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListWorkteams
      # @param [Client] client
      # @param [Hash] params (see Client#list_workteams)
      # @param [Hash] options (see Client#list_workteams)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_workteams operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_workteams(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_workteams(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_workteams operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.workteams.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class QueryLineage
      # @param [Client] client
      # @param [Hash] params (see Client#query_lineage)
      # @param [Hash] options (see Client#query_lineage)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the query_lineage operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.query_lineage(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.query_lineage(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class Search
      # @param [Client] client
      # @param [Hash] params (see Client#search)
      # @param [Hash] options (see Client#search)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the search operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.results.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
