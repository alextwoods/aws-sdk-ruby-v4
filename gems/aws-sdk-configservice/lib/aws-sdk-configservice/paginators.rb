# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ConfigService
  module Paginators

    class DescribeAggregateComplianceByConfigRules
      # @param [Client] client
      # @param [Hash] params (see Client#describe_aggregate_compliance_by_config_rules)
      # @param [Hash] options (see Client#describe_aggregate_compliance_by_config_rules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_aggregate_compliance_by_config_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_aggregate_compliance_by_config_rules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_aggregate_compliance_by_config_rules(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeAggregateComplianceByConformancePacks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_aggregate_compliance_by_conformance_packs)
      # @param [Hash] options (see Client#describe_aggregate_compliance_by_conformance_packs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_aggregate_compliance_by_conformance_packs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_aggregate_compliance_by_conformance_packs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_aggregate_compliance_by_conformance_packs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_aggregate_compliance_by_conformance_packs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.aggregate_compliance_by_conformance_packs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeAggregationAuthorizations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_aggregation_authorizations)
      # @param [Hash] options (see Client#describe_aggregation_authorizations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_aggregation_authorizations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_aggregation_authorizations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_aggregation_authorizations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_aggregation_authorizations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.aggregation_authorizations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeComplianceByConfigRule
      # @param [Client] client
      # @param [Hash] params (see Client#describe_compliance_by_config_rule)
      # @param [Hash] options (see Client#describe_compliance_by_config_rule)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_compliance_by_config_rule operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_compliance_by_config_rule(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_compliance_by_config_rule(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_compliance_by_config_rule operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.compliance_by_config_rules.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeComplianceByResource
      # @param [Client] client
      # @param [Hash] params (see Client#describe_compliance_by_resource)
      # @param [Hash] options (see Client#describe_compliance_by_resource)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_compliance_by_resource operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_compliance_by_resource(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_compliance_by_resource(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_compliance_by_resource operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.compliance_by_resources.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeConfigRuleEvaluationStatus
      # @param [Client] client
      # @param [Hash] params (see Client#describe_config_rule_evaluation_status)
      # @param [Hash] options (see Client#describe_config_rule_evaluation_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_config_rule_evaluation_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_config_rule_evaluation_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_config_rule_evaluation_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_config_rule_evaluation_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.config_rules_evaluation_status.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeConfigRules
      # @param [Client] client
      # @param [Hash] params (see Client#describe_config_rules)
      # @param [Hash] options (see Client#describe_config_rules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_config_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_config_rules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_config_rules(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_config_rules operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.config_rules.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeConfigurationAggregators
      # @param [Client] client
      # @param [Hash] params (see Client#describe_configuration_aggregators)
      # @param [Hash] options (see Client#describe_configuration_aggregators)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_configuration_aggregators operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_configuration_aggregators(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_configuration_aggregators(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_configuration_aggregators operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.configuration_aggregators.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeConfigurationAggregatorSourcesStatus
      # @param [Client] client
      # @param [Hash] params (see Client#describe_configuration_aggregator_sources_status)
      # @param [Hash] options (see Client#describe_configuration_aggregator_sources_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_configuration_aggregator_sources_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_configuration_aggregator_sources_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_configuration_aggregator_sources_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_configuration_aggregator_sources_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.aggregated_source_status_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeConformancePackCompliance
      # @param [Client] client
      # @param [Hash] params (see Client#describe_conformance_pack_compliance)
      # @param [Hash] options (see Client#describe_conformance_pack_compliance)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_conformance_pack_compliance operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_conformance_pack_compliance(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_conformance_pack_compliance(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeConformancePacks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_conformance_packs)
      # @param [Hash] options (see Client#describe_conformance_packs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_conformance_packs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_conformance_packs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_conformance_packs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_conformance_packs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.conformance_pack_details.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeConformancePackStatus
      # @param [Client] client
      # @param [Hash] params (see Client#describe_conformance_pack_status)
      # @param [Hash] options (see Client#describe_conformance_pack_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_conformance_pack_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_conformance_pack_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_conformance_pack_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_conformance_pack_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.conformance_pack_status_details.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeOrganizationConfigRules
      # @param [Client] client
      # @param [Hash] params (see Client#describe_organization_config_rules)
      # @param [Hash] options (see Client#describe_organization_config_rules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_organization_config_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_organization_config_rules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_organization_config_rules(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_organization_config_rules operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.organization_config_rules.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeOrganizationConfigRuleStatuses
      # @param [Client] client
      # @param [Hash] params (see Client#describe_organization_config_rule_statuses)
      # @param [Hash] options (see Client#describe_organization_config_rule_statuses)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_organization_config_rule_statuses operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_organization_config_rule_statuses(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_organization_config_rule_statuses(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_organization_config_rule_statuses operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.organization_config_rule_statuses.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeOrganizationConformancePacks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_organization_conformance_packs)
      # @param [Hash] options (see Client#describe_organization_conformance_packs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_organization_conformance_packs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_organization_conformance_packs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_organization_conformance_packs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_organization_conformance_packs operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.organization_conformance_packs.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeOrganizationConformancePackStatuses
      # @param [Client] client
      # @param [Hash] params (see Client#describe_organization_conformance_pack_statuses)
      # @param [Hash] options (see Client#describe_organization_conformance_pack_statuses)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_organization_conformance_pack_statuses operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_organization_conformance_pack_statuses(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_organization_conformance_pack_statuses(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_organization_conformance_pack_statuses operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.organization_conformance_pack_statuses.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribePendingAggregationRequests
      # @param [Client] client
      # @param [Hash] params (see Client#describe_pending_aggregation_requests)
      # @param [Hash] options (see Client#describe_pending_aggregation_requests)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_pending_aggregation_requests operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_pending_aggregation_requests(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_pending_aggregation_requests(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_pending_aggregation_requests operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.pending_aggregation_requests.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeRemediationExceptions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_remediation_exceptions)
      # @param [Hash] options (see Client#describe_remediation_exceptions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_remediation_exceptions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_remediation_exceptions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_remediation_exceptions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeRemediationExecutionStatus
      # @param [Client] client
      # @param [Hash] params (see Client#describe_remediation_execution_status)
      # @param [Hash] options (see Client#describe_remediation_execution_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_remediation_execution_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_remediation_execution_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_remediation_execution_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_remediation_execution_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.remediation_execution_statuses.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class DescribeRetentionConfigurations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_retention_configurations)
      # @param [Hash] options (see Client#describe_retention_configurations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_retention_configurations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_retention_configurations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_retention_configurations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the describe_retention_configurations operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.retention_configurations.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetAggregateComplianceDetailsByConfigRule
      # @param [Client] client
      # @param [Hash] params (see Client#get_aggregate_compliance_details_by_config_rule)
      # @param [Hash] options (see Client#get_aggregate_compliance_details_by_config_rule)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_aggregate_compliance_details_by_config_rule operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_aggregate_compliance_details_by_config_rule(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_aggregate_compliance_details_by_config_rule(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_aggregate_compliance_details_by_config_rule operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.aggregate_evaluation_results.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetAggregateConfigRuleComplianceSummary
      # @param [Client] client
      # @param [Hash] params (see Client#get_aggregate_config_rule_compliance_summary)
      # @param [Hash] options (see Client#get_aggregate_config_rule_compliance_summary)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_aggregate_config_rule_compliance_summary operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_aggregate_config_rule_compliance_summary(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_aggregate_config_rule_compliance_summary(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetAggregateConformancePackComplianceSummary
      # @param [Client] client
      # @param [Hash] params (see Client#get_aggregate_conformance_pack_compliance_summary)
      # @param [Hash] options (see Client#get_aggregate_conformance_pack_compliance_summary)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_aggregate_conformance_pack_compliance_summary operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_aggregate_conformance_pack_compliance_summary(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_aggregate_conformance_pack_compliance_summary(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetAggregateDiscoveredResourceCounts
      # @param [Client] client
      # @param [Hash] params (see Client#get_aggregate_discovered_resource_counts)
      # @param [Hash] options (see Client#get_aggregate_discovered_resource_counts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_aggregate_discovered_resource_counts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_aggregate_discovered_resource_counts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_aggregate_discovered_resource_counts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetComplianceDetailsByConfigRule
      # @param [Client] client
      # @param [Hash] params (see Client#get_compliance_details_by_config_rule)
      # @param [Hash] options (see Client#get_compliance_details_by_config_rule)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_compliance_details_by_config_rule operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_compliance_details_by_config_rule(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_compliance_details_by_config_rule(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_compliance_details_by_config_rule operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.evaluation_results.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetComplianceDetailsByResource
      # @param [Client] client
      # @param [Hash] params (see Client#get_compliance_details_by_resource)
      # @param [Hash] options (see Client#get_compliance_details_by_resource)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_compliance_details_by_resource operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_compliance_details_by_resource(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_compliance_details_by_resource(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_compliance_details_by_resource operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.evaluation_results.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetConformancePackComplianceDetails
      # @param [Client] client
      # @param [Hash] params (see Client#get_conformance_pack_compliance_details)
      # @param [Hash] options (see Client#get_conformance_pack_compliance_details)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_conformance_pack_compliance_details operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_conformance_pack_compliance_details(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_conformance_pack_compliance_details(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetConformancePackComplianceSummary
      # @param [Client] client
      # @param [Hash] params (see Client#get_conformance_pack_compliance_summary)
      # @param [Hash] options (see Client#get_conformance_pack_compliance_summary)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_conformance_pack_compliance_summary operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_conformance_pack_compliance_summary(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_conformance_pack_compliance_summary(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_conformance_pack_compliance_summary operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.conformance_pack_compliance_summary_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetDiscoveredResourceCounts
      # @param [Client] client
      # @param [Hash] params (see Client#get_discovered_resource_counts)
      # @param [Hash] options (see Client#get_discovered_resource_counts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_discovered_resource_counts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_discovered_resource_counts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_discovered_resource_counts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetOrganizationConfigRuleDetailedStatus
      # @param [Client] client
      # @param [Hash] params (see Client#get_organization_config_rule_detailed_status)
      # @param [Hash] options (see Client#get_organization_config_rule_detailed_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_organization_config_rule_detailed_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_organization_config_rule_detailed_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_organization_config_rule_detailed_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_organization_config_rule_detailed_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.organization_config_rule_detailed_status.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetOrganizationConformancePackDetailedStatus
      # @param [Client] client
      # @param [Hash] params (see Client#get_organization_conformance_pack_detailed_status)
      # @param [Hash] options (see Client#get_organization_conformance_pack_detailed_status)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_organization_conformance_pack_detailed_status operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_organization_conformance_pack_detailed_status(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_organization_conformance_pack_detailed_status(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_organization_conformance_pack_detailed_status operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.organization_conformance_pack_detailed_statuses.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetResourceConfigHistory
      # @param [Client] client
      # @param [Hash] params (see Client#get_resource_config_history)
      # @param [Hash] options (see Client#get_resource_config_history)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_resource_config_history operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_resource_config_history(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_resource_config_history(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_resource_config_history operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.configuration_items.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListAggregateDiscoveredResources
      # @param [Client] client
      # @param [Hash] params (see Client#list_aggregate_discovered_resources)
      # @param [Hash] options (see Client#list_aggregate_discovered_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_aggregate_discovered_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_aggregate_discovered_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_aggregate_discovered_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_aggregate_discovered_resources operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.resource_identifiers.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListDiscoveredResources
      # @param [Client] client
      # @param [Hash] params (see Client#list_discovered_resources)
      # @param [Hash] options (see Client#list_discovered_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_discovered_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_discovered_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_discovered_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_discovered_resources operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.resource_identifiers.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListStoredQueries
      # @param [Client] client
      # @param [Hash] params (see Client#list_stored_queries)
      # @param [Hash] options (see Client#list_stored_queries)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_stored_queries operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_stored_queries(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_stored_queries(params, @options)
            e.yield(response)
            output_token = response.next_token
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

    class SelectAggregateResourceConfig
      # @param [Client] client
      # @param [Hash] params (see Client#select_aggregate_resource_config)
      # @param [Hash] options (see Client#select_aggregate_resource_config)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the select_aggregate_resource_config operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.select_aggregate_resource_config(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.select_aggregate_resource_config(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the select_aggregate_resource_config operation.
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

    class SelectResourceConfig
      # @param [Client] client
      # @param [Hash] params (see Client#select_resource_config)
      # @param [Hash] options (see Client#select_resource_config)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the select_resource_config operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.select_resource_config(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.select_resource_config(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the select_resource_config operation.
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
