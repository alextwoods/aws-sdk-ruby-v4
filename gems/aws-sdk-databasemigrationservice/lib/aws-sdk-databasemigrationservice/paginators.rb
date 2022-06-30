# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DatabaseMigrationService
  module Paginators

    class DescribeApplicableIndividualAssessments
      # @param [Client] client
      # @param [Hash] params (see Client#describe_applicable_individual_assessments)
      # @param [Hash] options (see Client#describe_applicable_individual_assessments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_applicable_individual_assessments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_applicable_individual_assessments(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_applicable_individual_assessments(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeCertificates
      # @param [Client] client
      # @param [Hash] params (see Client#describe_certificates)
      # @param [Hash] options (see Client#describe_certificates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_certificates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_certificates(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_certificates(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeConnections
      # @param [Client] client
      # @param [Hash] params (see Client#describe_connections)
      # @param [Hash] options (see Client#describe_connections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_connections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_connections(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_connections(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeEndpoints
      # @param [Client] client
      # @param [Hash] params (see Client#describe_endpoints)
      # @param [Hash] options (see Client#describe_endpoints)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_endpoints operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_endpoints(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_endpoints(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeEndpointSettings
      # @param [Client] client
      # @param [Hash] params (see Client#describe_endpoint_settings)
      # @param [Hash] options (see Client#describe_endpoint_settings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_endpoint_settings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_endpoint_settings(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_endpoint_settings(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeEndpointTypes
      # @param [Client] client
      # @param [Hash] params (see Client#describe_endpoint_types)
      # @param [Hash] options (see Client#describe_endpoint_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_endpoint_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_endpoint_types(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_endpoint_types(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeEvents
      # @param [Client] client
      # @param [Hash] params (see Client#describe_events)
      # @param [Hash] options (see Client#describe_events)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_events operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_events(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_events(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeEventSubscriptions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_event_subscriptions)
      # @param [Hash] options (see Client#describe_event_subscriptions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_event_subscriptions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_event_subscriptions(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_event_subscriptions(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeFleetAdvisorCollectors
      # @param [Client] client
      # @param [Hash] params (see Client#describe_fleet_advisor_collectors)
      # @param [Hash] options (see Client#describe_fleet_advisor_collectors)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_fleet_advisor_collectors operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_fleet_advisor_collectors(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_fleet_advisor_collectors(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeFleetAdvisorDatabases
      # @param [Client] client
      # @param [Hash] params (see Client#describe_fleet_advisor_databases)
      # @param [Hash] options (see Client#describe_fleet_advisor_databases)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_fleet_advisor_databases operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_fleet_advisor_databases(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_fleet_advisor_databases(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeFleetAdvisorLsaAnalysis
      # @param [Client] client
      # @param [Hash] params (see Client#describe_fleet_advisor_lsa_analysis)
      # @param [Hash] options (see Client#describe_fleet_advisor_lsa_analysis)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_fleet_advisor_lsa_analysis operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_fleet_advisor_lsa_analysis(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_fleet_advisor_lsa_analysis(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeFleetAdvisorSchemaObjectSummary
      # @param [Client] client
      # @param [Hash] params (see Client#describe_fleet_advisor_schema_object_summary)
      # @param [Hash] options (see Client#describe_fleet_advisor_schema_object_summary)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_fleet_advisor_schema_object_summary operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_fleet_advisor_schema_object_summary(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_fleet_advisor_schema_object_summary(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeFleetAdvisorSchemas
      # @param [Client] client
      # @param [Hash] params (see Client#describe_fleet_advisor_schemas)
      # @param [Hash] options (see Client#describe_fleet_advisor_schemas)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_fleet_advisor_schemas operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_fleet_advisor_schemas(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_fleet_advisor_schemas(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeOrderableReplicationInstances
      # @param [Client] client
      # @param [Hash] params (see Client#describe_orderable_replication_instances)
      # @param [Hash] options (see Client#describe_orderable_replication_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_orderable_replication_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_orderable_replication_instances(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_orderable_replication_instances(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribePendingMaintenanceActions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_pending_maintenance_actions)
      # @param [Hash] options (see Client#describe_pending_maintenance_actions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_pending_maintenance_actions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_pending_maintenance_actions(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_pending_maintenance_actions(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeReplicationInstances
      # @param [Client] client
      # @param [Hash] params (see Client#describe_replication_instances)
      # @param [Hash] options (see Client#describe_replication_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_replication_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_replication_instances(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_replication_instances(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeReplicationInstanceTaskLogs
      # @param [Client] client
      # @param [Hash] params (see Client#describe_replication_instance_task_logs)
      # @param [Hash] options (see Client#describe_replication_instance_task_logs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_replication_instance_task_logs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_replication_instance_task_logs(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_replication_instance_task_logs(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeReplicationSubnetGroups
      # @param [Client] client
      # @param [Hash] params (see Client#describe_replication_subnet_groups)
      # @param [Hash] options (see Client#describe_replication_subnet_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_replication_subnet_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_replication_subnet_groups(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_replication_subnet_groups(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeReplicationTaskAssessmentResults
      # @param [Client] client
      # @param [Hash] params (see Client#describe_replication_task_assessment_results)
      # @param [Hash] options (see Client#describe_replication_task_assessment_results)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_replication_task_assessment_results operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_replication_task_assessment_results(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_replication_task_assessment_results(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeReplicationTaskAssessmentRuns
      # @param [Client] client
      # @param [Hash] params (see Client#describe_replication_task_assessment_runs)
      # @param [Hash] options (see Client#describe_replication_task_assessment_runs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_replication_task_assessment_runs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_replication_task_assessment_runs(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_replication_task_assessment_runs(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeReplicationTaskIndividualAssessments
      # @param [Client] client
      # @param [Hash] params (see Client#describe_replication_task_individual_assessments)
      # @param [Hash] options (see Client#describe_replication_task_individual_assessments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_replication_task_individual_assessments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_replication_task_individual_assessments(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_replication_task_individual_assessments(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeReplicationTasks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_replication_tasks)
      # @param [Hash] options (see Client#describe_replication_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_replication_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_replication_tasks(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_replication_tasks(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeSchemas
      # @param [Client] client
      # @param [Hash] params (see Client#describe_schemas)
      # @param [Hash] options (see Client#describe_schemas)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_schemas operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_schemas(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_schemas(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

    class DescribeTableStatistics
      # @param [Client] client
      # @param [Hash] params (see Client#describe_table_statistics)
      # @param [Hash] options (see Client#describe_table_statistics)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_table_statistics operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.describe_table_statistics(params, @options)
          e.yield(response)
          output_token = response.marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.describe_table_statistics(params, @options)
            e.yield(response)
            output_token = response.marker
          end
        end
      end
    end

  end
end
