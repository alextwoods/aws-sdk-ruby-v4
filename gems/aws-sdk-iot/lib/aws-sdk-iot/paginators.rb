# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoT
  module Paginators

    class GetBehaviorModelTrainingSummaries
      # @param [Client] client
      # @param [Hash] params (see Client#get_behavior_model_training_summaries)
      # @param [Hash] options (see Client#get_behavior_model_training_summaries)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_behavior_model_training_summaries operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_behavior_model_training_summaries(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_behavior_model_training_summaries(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_behavior_model_training_summaries operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListActiveViolations
      # @param [Client] client
      # @param [Hash] params (see Client#list_active_violations)
      # @param [Hash] options (see Client#list_active_violations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_active_violations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_active_violations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_active_violations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_active_violations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.active_violations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAttachedPolicies
      # @param [Client] client
      # @param [Hash] params (see Client#list_attached_policies)
      # @param [Hash] options (see Client#list_attached_policies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_attached_policies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_attached_policies(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_attached_policies(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_attached_policies operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.policies.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAuditFindings
      # @param [Client] client
      # @param [Hash] params (see Client#list_audit_findings)
      # @param [Hash] options (see Client#list_audit_findings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_audit_findings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_audit_findings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_audit_findings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_audit_findings operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.findings.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAuditMitigationActionsExecutions
      # @param [Client] client
      # @param [Hash] params (see Client#list_audit_mitigation_actions_executions)
      # @param [Hash] options (see Client#list_audit_mitigation_actions_executions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_audit_mitigation_actions_executions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_audit_mitigation_actions_executions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_audit_mitigation_actions_executions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_audit_mitigation_actions_executions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.actions_executions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAuditMitigationActionsTasks
      # @param [Client] client
      # @param [Hash] params (see Client#list_audit_mitigation_actions_tasks)
      # @param [Hash] options (see Client#list_audit_mitigation_actions_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_audit_mitigation_actions_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_audit_mitigation_actions_tasks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_audit_mitigation_actions_tasks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_audit_mitigation_actions_tasks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.tasks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAuditSuppressions
      # @param [Client] client
      # @param [Hash] params (see Client#list_audit_suppressions)
      # @param [Hash] options (see Client#list_audit_suppressions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_audit_suppressions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_audit_suppressions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_audit_suppressions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_audit_suppressions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.suppressions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAuditTasks
      # @param [Client] client
      # @param [Hash] params (see Client#list_audit_tasks)
      # @param [Hash] options (see Client#list_audit_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_audit_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_audit_tasks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_audit_tasks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_audit_tasks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.tasks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAuthorizers
      # @param [Client] client
      # @param [Hash] params (see Client#list_authorizers)
      # @param [Hash] options (see Client#list_authorizers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_authorizers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_authorizers(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_authorizers(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_authorizers operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.authorizers.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListBillingGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_billing_groups)
      # @param [Hash] options (see Client#list_billing_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_billing_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_billing_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_billing_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_billing_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.billing_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListCACertificates
      # @param [Client] client
      # @param [Hash] params (see Client#list_ca_certificates)
      # @param [Hash] options (see Client#list_ca_certificates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_ca_certificates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_ca_certificates(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_ca_certificates(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_ca_certificates operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.certificates.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListCertificates
      # @param [Client] client
      # @param [Hash] params (see Client#list_certificates)
      # @param [Hash] options (see Client#list_certificates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_certificates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_certificates(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_certificates(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_certificates operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.certificates.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListCertificatesByCA
      # @param [Client] client
      # @param [Hash] params (see Client#list_certificates_by_ca)
      # @param [Hash] options (see Client#list_certificates_by_ca)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_certificates_by_ca operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_certificates_by_ca(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_certificates_by_ca(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_certificates_by_ca operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.certificates.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListCustomMetrics
      # @param [Client] client
      # @param [Hash] params (see Client#list_custom_metrics)
      # @param [Hash] options (see Client#list_custom_metrics)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_custom_metrics operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_custom_metrics(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_custom_metrics(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_custom_metrics operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.metric_names.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDetectMitigationActionsExecutions
      # @param [Client] client
      # @param [Hash] params (see Client#list_detect_mitigation_actions_executions)
      # @param [Hash] options (see Client#list_detect_mitigation_actions_executions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_detect_mitigation_actions_executions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_detect_mitigation_actions_executions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_detect_mitigation_actions_executions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_detect_mitigation_actions_executions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.actions_executions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDetectMitigationActionsTasks
      # @param [Client] client
      # @param [Hash] params (see Client#list_detect_mitigation_actions_tasks)
      # @param [Hash] options (see Client#list_detect_mitigation_actions_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_detect_mitigation_actions_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_detect_mitigation_actions_tasks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_detect_mitigation_actions_tasks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_detect_mitigation_actions_tasks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.tasks.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDimensions
      # @param [Client] client
      # @param [Hash] params (see Client#list_dimensions)
      # @param [Hash] options (see Client#list_dimensions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_dimensions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_dimensions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_dimensions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_dimensions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.dimension_names.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDomainConfigurations
      # @param [Client] client
      # @param [Hash] params (see Client#list_domain_configurations)
      # @param [Hash] options (see Client#list_domain_configurations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_domain_configurations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_domain_configurations(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_domain_configurations(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_domain_configurations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.domain_configurations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListFleetMetrics
      # @param [Client] client
      # @param [Hash] params (see Client#list_fleet_metrics)
      # @param [Hash] options (see Client#list_fleet_metrics)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_fleet_metrics operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_fleet_metrics(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_fleet_metrics(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_fleet_metrics operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.fleet_metrics.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListIndices
      # @param [Client] client
      # @param [Hash] params (see Client#list_indices)
      # @param [Hash] options (see Client#list_indices)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_indices operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_indices(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_indices(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_indices operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.index_names.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListJobExecutionsForJob
      # @param [Client] client
      # @param [Hash] params (see Client#list_job_executions_for_job)
      # @param [Hash] options (see Client#list_job_executions_for_job)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_job_executions_for_job operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_job_executions_for_job(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_job_executions_for_job(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_job_executions_for_job operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.execution_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListJobExecutionsForThing
      # @param [Client] client
      # @param [Hash] params (see Client#list_job_executions_for_thing)
      # @param [Hash] options (see Client#list_job_executions_for_thing)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_job_executions_for_thing operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_job_executions_for_thing(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_job_executions_for_thing(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_job_executions_for_thing operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.execution_summaries.each do |item|
              e.yield(item)
            end
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

      # Iterate all items from pages in the list_jobs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.jobs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListJobTemplates
      # @param [Client] client
      # @param [Hash] params (see Client#list_job_templates)
      # @param [Hash] options (see Client#list_job_templates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_job_templates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_job_templates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_job_templates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_job_templates operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.job_templates.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListMetricValues
      # @param [Client] client
      # @param [Hash] params (see Client#list_metric_values)
      # @param [Hash] options (see Client#list_metric_values)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_metric_values operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_metric_values(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_metric_values(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_metric_values operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.metric_datum_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListMitigationActions
      # @param [Client] client
      # @param [Hash] params (see Client#list_mitigation_actions)
      # @param [Hash] options (see Client#list_mitigation_actions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_mitigation_actions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_mitigation_actions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_mitigation_actions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_mitigation_actions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.action_identifiers.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListOTAUpdates
      # @param [Client] client
      # @param [Hash] params (see Client#list_ota_updates)
      # @param [Hash] options (see Client#list_ota_updates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_ota_updates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_ota_updates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_ota_updates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_ota_updates operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.ota_updates.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListOutgoingCertificates
      # @param [Client] client
      # @param [Hash] params (see Client#list_outgoing_certificates)
      # @param [Hash] options (see Client#list_outgoing_certificates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_outgoing_certificates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_outgoing_certificates(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_outgoing_certificates(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_outgoing_certificates operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.outgoing_certificates.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPolicies
      # @param [Client] client
      # @param [Hash] params (see Client#list_policies)
      # @param [Hash] options (see Client#list_policies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_policies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_policies(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_policies(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_policies operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.policies.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPolicyPrincipals
      # @param [Client] client
      # @param [Hash] params (see Client#list_policy_principals)
      # @param [Hash] options (see Client#list_policy_principals)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_policy_principals operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_policy_principals(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_policy_principals(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_policy_principals operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.principals.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPrincipalPolicies
      # @param [Client] client
      # @param [Hash] params (see Client#list_principal_policies)
      # @param [Hash] options (see Client#list_principal_policies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_principal_policies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_principal_policies(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_principal_policies(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_principal_policies operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.policies.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPrincipalThings
      # @param [Client] client
      # @param [Hash] params (see Client#list_principal_things)
      # @param [Hash] options (see Client#list_principal_things)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_principal_things operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_principal_things(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_principal_things(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_principal_things operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.things.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListProvisioningTemplates
      # @param [Client] client
      # @param [Hash] params (see Client#list_provisioning_templates)
      # @param [Hash] options (see Client#list_provisioning_templates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_provisioning_templates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_provisioning_templates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_provisioning_templates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_provisioning_templates operation.
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

    class ListProvisioningTemplateVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_provisioning_template_versions)
      # @param [Hash] options (see Client#list_provisioning_template_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_provisioning_template_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_provisioning_template_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_provisioning_template_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_provisioning_template_versions operation.
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

    class ListRoleAliases
      # @param [Client] client
      # @param [Hash] params (see Client#list_role_aliases)
      # @param [Hash] options (see Client#list_role_aliases)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_role_aliases operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_role_aliases(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_role_aliases(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_role_aliases operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.role_aliases.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListScheduledAudits
      # @param [Client] client
      # @param [Hash] params (see Client#list_scheduled_audits)
      # @param [Hash] options (see Client#list_scheduled_audits)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_scheduled_audits operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_scheduled_audits(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_scheduled_audits(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_scheduled_audits operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.scheduled_audits.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListSecurityProfiles
      # @param [Client] client
      # @param [Hash] params (see Client#list_security_profiles)
      # @param [Hash] options (see Client#list_security_profiles)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_security_profiles operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_security_profiles(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_security_profiles(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_security_profiles operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.security_profile_identifiers.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListSecurityProfilesForTarget
      # @param [Client] client
      # @param [Hash] params (see Client#list_security_profiles_for_target)
      # @param [Hash] options (see Client#list_security_profiles_for_target)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_security_profiles_for_target operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_security_profiles_for_target(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_security_profiles_for_target(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_security_profiles_for_target operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.security_profile_target_mappings.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListStreams
      # @param [Client] client
      # @param [Hash] params (see Client#list_streams)
      # @param [Hash] options (see Client#list_streams)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_streams operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_streams(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_streams(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_streams operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.streams.each do |item|
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

    class ListTargetsForPolicy
      # @param [Client] client
      # @param [Hash] params (see Client#list_targets_for_policy)
      # @param [Hash] options (see Client#list_targets_for_policy)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_targets_for_policy operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:marker]
          response = @client.list_targets_for_policy(params, @options)
          e.yield(response)
          output_token = response.next_marker

          until output_token.nil? || @prev_token == output_token
            params = params.merge(marker: output_token)
            response = @client.list_targets_for_policy(params, @options)
            e.yield(response)
            output_token = response.next_marker
          end
        end
      end

      # Iterate all items from pages in the list_targets_for_policy operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.targets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListTargetsForSecurityProfile
      # @param [Client] client
      # @param [Hash] params (see Client#list_targets_for_security_profile)
      # @param [Hash] options (see Client#list_targets_for_security_profile)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_targets_for_security_profile operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_targets_for_security_profile(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_targets_for_security_profile(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_targets_for_security_profile operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.security_profile_targets.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListThingGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_thing_groups)
      # @param [Hash] options (see Client#list_thing_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_thing_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_thing_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_thing_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_thing_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.thing_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListThingGroupsForThing
      # @param [Client] client
      # @param [Hash] params (see Client#list_thing_groups_for_thing)
      # @param [Hash] options (see Client#list_thing_groups_for_thing)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_thing_groups_for_thing operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_thing_groups_for_thing(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_thing_groups_for_thing(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_thing_groups_for_thing operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.thing_groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListThingPrincipals
      # @param [Client] client
      # @param [Hash] params (see Client#list_thing_principals)
      # @param [Hash] options (see Client#list_thing_principals)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_thing_principals operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_thing_principals(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_thing_principals(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_thing_principals operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.principals.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListThingRegistrationTaskReports
      # @param [Client] client
      # @param [Hash] params (see Client#list_thing_registration_task_reports)
      # @param [Hash] options (see Client#list_thing_registration_task_reports)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_thing_registration_task_reports operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_thing_registration_task_reports(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_thing_registration_task_reports(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_thing_registration_task_reports operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.resource_links.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListThingRegistrationTasks
      # @param [Client] client
      # @param [Hash] params (see Client#list_thing_registration_tasks)
      # @param [Hash] options (see Client#list_thing_registration_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_thing_registration_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_thing_registration_tasks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_thing_registration_tasks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_thing_registration_tasks operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.task_ids.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListThings
      # @param [Client] client
      # @param [Hash] params (see Client#list_things)
      # @param [Hash] options (see Client#list_things)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_things operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_things(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_things(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_things operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.things.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListThingsInBillingGroup
      # @param [Client] client
      # @param [Hash] params (see Client#list_things_in_billing_group)
      # @param [Hash] options (see Client#list_things_in_billing_group)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_things_in_billing_group operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_things_in_billing_group(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_things_in_billing_group(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_things_in_billing_group operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.things.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListThingsInThingGroup
      # @param [Client] client
      # @param [Hash] params (see Client#list_things_in_thing_group)
      # @param [Hash] options (see Client#list_things_in_thing_group)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_things_in_thing_group operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_things_in_thing_group(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_things_in_thing_group(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_things_in_thing_group operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.things.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListThingTypes
      # @param [Client] client
      # @param [Hash] params (see Client#list_thing_types)
      # @param [Hash] options (see Client#list_thing_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_thing_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_thing_types(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_thing_types(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_thing_types operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.thing_types.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListTopicRuleDestinations
      # @param [Client] client
      # @param [Hash] params (see Client#list_topic_rule_destinations)
      # @param [Hash] options (see Client#list_topic_rule_destinations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_topic_rule_destinations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_topic_rule_destinations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_topic_rule_destinations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_topic_rule_destinations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.destination_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListTopicRules
      # @param [Client] client
      # @param [Hash] params (see Client#list_topic_rules)
      # @param [Hash] options (see Client#list_topic_rules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_topic_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_topic_rules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_topic_rules(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_topic_rules operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.rules.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListV2LoggingLevels
      # @param [Client] client
      # @param [Hash] params (see Client#list_v2_logging_levels)
      # @param [Hash] options (see Client#list_v2_logging_levels)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_v2_logging_levels operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_v2_logging_levels(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_v2_logging_levels(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_v2_logging_levels operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.log_target_configurations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListViolationEvents
      # @param [Client] client
      # @param [Hash] params (see Client#list_violation_events)
      # @param [Hash] options (see Client#list_violation_events)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_violation_events operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_violation_events(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_violation_events(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_violation_events operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.violation_events.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
