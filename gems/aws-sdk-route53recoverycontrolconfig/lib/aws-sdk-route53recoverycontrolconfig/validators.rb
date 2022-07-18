# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53RecoveryControlConfig
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssertionRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssertionRule, context: context)
        List____listOf__stringMin1Max256PatternAZaZ09.validate!(input[:asserted_controls], context: "#{context}[:asserted_controls]") unless input[:asserted_controls].nil?
        Hearth::Validator.validate!(input[:control_panel_arn], ::String, context: "#{context}[:control_panel_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        RuleConfig.validate!(input[:rule_config], context: "#{context}[:rule_config]") unless input[:rule_config].nil?
        Hearth::Validator.validate!(input[:safety_rule_arn], ::String, context: "#{context}[:safety_rule_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:wait_period_ms], ::Integer, context: "#{context}[:wait_period_ms]")
      end
    end

    class AssertionRuleUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssertionRuleUpdate, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:safety_rule_arn], ::String, context: "#{context}[:safety_rule_arn]")
        Hearth::Validator.validate!(input[:wait_period_ms], ::Integer, context: "#{context}[:wait_period_ms]")
      end
    end

    class Cluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cluster, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        List____listOfClusterEndpoint.validate!(input[:cluster_endpoints], context: "#{context}[:cluster_endpoints]") unless input[:cluster_endpoints].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ClusterEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterEndpoint, context: context)
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ControlPanel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ControlPanel, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:control_panel_arn], ::String, context: "#{context}[:control_panel_arn]")
        Hearth::Validator.validate!(input[:default_control_panel], ::TrueClass, ::FalseClass, context: "#{context}[:default_control_panel]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:routing_control_count], ::Integer, context: "#{context}[:routing_control_count]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CreateClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:cluster_name], ::String, context: "#{context}[:cluster_name]")
        Map____mapOf__stringMin0Max256PatternS.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class CreateControlPanelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateControlPanelInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:control_panel_name], ::String, context: "#{context}[:control_panel_name]")
        Map____mapOf__stringMin0Max256PatternS.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateControlPanelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateControlPanelOutput, context: context)
        ControlPanel.validate!(input[:control_panel], context: "#{context}[:control_panel]") unless input[:control_panel].nil?
      end
    end

    class CreateRoutingControlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoutingControlInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:control_panel_arn], ::String, context: "#{context}[:control_panel_arn]")
        Hearth::Validator.validate!(input[:routing_control_name], ::String, context: "#{context}[:routing_control_name]")
      end
    end

    class CreateRoutingControlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRoutingControlOutput, context: context)
        RoutingControl.validate!(input[:routing_control], context: "#{context}[:routing_control]") unless input[:routing_control].nil?
      end
    end

    class CreateSafetyRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSafetyRuleInput, context: context)
        NewAssertionRule.validate!(input[:assertion_rule], context: "#{context}[:assertion_rule]") unless input[:assertion_rule].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        NewGatingRule.validate!(input[:gating_rule], context: "#{context}[:gating_rule]") unless input[:gating_rule].nil?
        Map____mapOf__stringMin0Max256PatternS.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSafetyRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSafetyRuleOutput, context: context)
        AssertionRule.validate!(input[:assertion_rule], context: "#{context}[:assertion_rule]") unless input[:assertion_rule].nil?
        GatingRule.validate!(input[:gating_rule], context: "#{context}[:gating_rule]") unless input[:gating_rule].nil?
      end
    end

    class DeleteClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
      end
    end

    class DeleteClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterOutput, context: context)
      end
    end

    class DeleteControlPanelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteControlPanelInput, context: context)
        Hearth::Validator.validate!(input[:control_panel_arn], ::String, context: "#{context}[:control_panel_arn]")
      end
    end

    class DeleteControlPanelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteControlPanelOutput, context: context)
      end
    end

    class DeleteRoutingControlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoutingControlInput, context: context)
        Hearth::Validator.validate!(input[:routing_control_arn], ::String, context: "#{context}[:routing_control_arn]")
      end
    end

    class DeleteRoutingControlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRoutingControlOutput, context: context)
      end
    end

    class DeleteSafetyRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSafetyRuleInput, context: context)
        Hearth::Validator.validate!(input[:safety_rule_arn], ::String, context: "#{context}[:safety_rule_arn]")
      end
    end

    class DeleteSafetyRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteSafetyRuleOutput, context: context)
      end
    end

    class DescribeClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
      end
    end

    class DescribeClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class DescribeControlPanelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeControlPanelInput, context: context)
        Hearth::Validator.validate!(input[:control_panel_arn], ::String, context: "#{context}[:control_panel_arn]")
      end
    end

    class DescribeControlPanelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeControlPanelOutput, context: context)
        ControlPanel.validate!(input[:control_panel], context: "#{context}[:control_panel]") unless input[:control_panel].nil?
      end
    end

    class DescribeRoutingControlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRoutingControlInput, context: context)
        Hearth::Validator.validate!(input[:routing_control_arn], ::String, context: "#{context}[:routing_control_arn]")
      end
    end

    class DescribeRoutingControlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRoutingControlOutput, context: context)
        RoutingControl.validate!(input[:routing_control], context: "#{context}[:routing_control]") unless input[:routing_control].nil?
      end
    end

    class DescribeSafetyRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSafetyRuleInput, context: context)
        Hearth::Validator.validate!(input[:safety_rule_arn], ::String, context: "#{context}[:safety_rule_arn]")
      end
    end

    class DescribeSafetyRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeSafetyRuleOutput, context: context)
        AssertionRule.validate!(input[:assertion_rule], context: "#{context}[:assertion_rule]") unless input[:assertion_rule].nil?
        GatingRule.validate!(input[:gating_rule], context: "#{context}[:gating_rule]") unless input[:gating_rule].nil?
      end
    end

    class GatingRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatingRule, context: context)
        Hearth::Validator.validate!(input[:control_panel_arn], ::String, context: "#{context}[:control_panel_arn]")
        List____listOf__stringMin1Max256PatternAZaZ09.validate!(input[:gating_controls], context: "#{context}[:gating_controls]") unless input[:gating_controls].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        RuleConfig.validate!(input[:rule_config], context: "#{context}[:rule_config]") unless input[:rule_config].nil?
        Hearth::Validator.validate!(input[:safety_rule_arn], ::String, context: "#{context}[:safety_rule_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        List____listOf__stringMin1Max256PatternAZaZ09.validate!(input[:target_controls], context: "#{context}[:target_controls]") unless input[:target_controls].nil?
        Hearth::Validator.validate!(input[:wait_period_ms], ::Integer, context: "#{context}[:wait_period_ms]")
      end
    end

    class GatingRuleUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatingRuleUpdate, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:safety_rule_arn], ::String, context: "#{context}[:safety_rule_arn]")
        Hearth::Validator.validate!(input[:wait_period_ms], ::Integer, context: "#{context}[:wait_period_ms]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAssociatedRoute53HealthChecksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociatedRoute53HealthChecksInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:routing_control_arn], ::String, context: "#{context}[:routing_control_arn]")
      end
    end

    class ListAssociatedRoute53HealthChecksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociatedRoute53HealthChecksOutput, context: context)
        List____listOf__stringMax36PatternS.validate!(input[:health_check_ids], context: "#{context}[:health_check_ids]") unless input[:health_check_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClustersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClustersOutput, context: context)
        List____listOfCluster.validate!(input[:clusters], context: "#{context}[:clusters]") unless input[:clusters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListControlPanelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListControlPanelsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_arn], ::String, context: "#{context}[:cluster_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListControlPanelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListControlPanelsOutput, context: context)
        List____listOfControlPanel.validate!(input[:control_panels], context: "#{context}[:control_panels]") unless input[:control_panels].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRoutingControlsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoutingControlsInput, context: context)
        Hearth::Validator.validate!(input[:control_panel_arn], ::String, context: "#{context}[:control_panel_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRoutingControlsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoutingControlsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfRoutingControl.validate!(input[:routing_controls], context: "#{context}[:routing_controls]") unless input[:routing_controls].nil?
      end
    end

    class ListSafetyRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSafetyRulesInput, context: context)
        Hearth::Validator.validate!(input[:control_panel_arn], ::String, context: "#{context}[:control_panel_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSafetyRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListSafetyRulesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfRule.validate!(input[:safety_rules], context: "#{context}[:safety_rules]") unless input[:safety_rules].nil?
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Map____mapOf__stringMin0Max256PatternS.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NewAssertionRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NewAssertionRule, context: context)
        List____listOf__stringMin1Max256PatternAZaZ09.validate!(input[:asserted_controls], context: "#{context}[:asserted_controls]") unless input[:asserted_controls].nil?
        Hearth::Validator.validate!(input[:control_panel_arn], ::String, context: "#{context}[:control_panel_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        RuleConfig.validate!(input[:rule_config], context: "#{context}[:rule_config]") unless input[:rule_config].nil?
        Hearth::Validator.validate!(input[:wait_period_ms], ::Integer, context: "#{context}[:wait_period_ms]")
      end
    end

    class NewGatingRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NewGatingRule, context: context)
        Hearth::Validator.validate!(input[:control_panel_arn], ::String, context: "#{context}[:control_panel_arn]")
        List____listOf__stringMin1Max256PatternAZaZ09.validate!(input[:gating_controls], context: "#{context}[:gating_controls]") unless input[:gating_controls].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        RuleConfig.validate!(input[:rule_config], context: "#{context}[:rule_config]") unless input[:rule_config].nil?
        List____listOf__stringMin1Max256PatternAZaZ09.validate!(input[:target_controls], context: "#{context}[:target_controls]") unless input[:target_controls].nil?
        Hearth::Validator.validate!(input[:wait_period_ms], ::Integer, context: "#{context}[:wait_period_ms]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RoutingControl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoutingControl, context: context)
        Hearth::Validator.validate!(input[:control_panel_arn], ::String, context: "#{context}[:control_panel_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:routing_control_arn], ::String, context: "#{context}[:routing_control_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class Rule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Rule, context: context)
        AssertionRule.validate!(input[:assertion], context: "#{context}[:assertion]") unless input[:assertion].nil?
        GatingRule.validate!(input[:gating], context: "#{context}[:gating]") unless input[:gating].nil?
      end
    end

    class RuleConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleConfig, context: context)
        Hearth::Validator.validate!(input[:inverted], ::TrueClass, ::FalseClass, context: "#{context}[:inverted]")
        Hearth::Validator.validate!(input[:threshold], ::Integer, context: "#{context}[:threshold]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Map____mapOf__stringMin0Max256PatternS.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        List____listOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateControlPanelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateControlPanelInput, context: context)
        Hearth::Validator.validate!(input[:control_panel_arn], ::String, context: "#{context}[:control_panel_arn]")
        Hearth::Validator.validate!(input[:control_panel_name], ::String, context: "#{context}[:control_panel_name]")
      end
    end

    class UpdateControlPanelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateControlPanelOutput, context: context)
        ControlPanel.validate!(input[:control_panel], context: "#{context}[:control_panel]") unless input[:control_panel].nil?
      end
    end

    class UpdateRoutingControlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingControlInput, context: context)
        Hearth::Validator.validate!(input[:routing_control_arn], ::String, context: "#{context}[:routing_control_arn]")
        Hearth::Validator.validate!(input[:routing_control_name], ::String, context: "#{context}[:routing_control_name]")
      end
    end

    class UpdateRoutingControlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRoutingControlOutput, context: context)
        RoutingControl.validate!(input[:routing_control], context: "#{context}[:routing_control]") unless input[:routing_control].nil?
      end
    end

    class UpdateSafetyRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSafetyRuleInput, context: context)
        AssertionRuleUpdate.validate!(input[:assertion_rule_update], context: "#{context}[:assertion_rule_update]") unless input[:assertion_rule_update].nil?
        GatingRuleUpdate.validate!(input[:gating_rule_update], context: "#{context}[:gating_rule_update]") unless input[:gating_rule_update].nil?
      end
    end

    class UpdateSafetyRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateSafetyRuleOutput, context: context)
        AssertionRule.validate!(input[:assertion_rule], context: "#{context}[:assertion_rule]") unless input[:assertion_rule].nil?
        GatingRule.validate!(input[:gating_rule], context: "#{context}[:gating_rule]") unless input[:gating_rule].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class List____listOfCluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Cluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfClusterEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ClusterEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfControlPanel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ControlPanel.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfRoutingControl
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RoutingControl.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Rule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOf__stringMax36PatternS
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOf__stringMin1Max256PatternAZaZ09
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Map____mapOf__stringMin0Max256PatternS
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

  end
end
