# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Route53RecoveryControlConfig
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AssertionRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssertionRule, context: context)
        type = Types::AssertionRule.new
        type.asserted_controls = List____listOf__stringMin1Max256PatternAZaZ09.build(params[:asserted_controls], context: "#{context}[:asserted_controls]") unless params[:asserted_controls].nil?
        type.control_panel_arn = params[:control_panel_arn]
        type.name = params[:name]
        type.rule_config = RuleConfig.build(params[:rule_config], context: "#{context}[:rule_config]") unless params[:rule_config].nil?
        type.safety_rule_arn = params[:safety_rule_arn]
        type.status = params[:status]
        type.wait_period_ms = params[:wait_period_ms]
        type
      end
    end

    module AssertionRuleUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssertionRuleUpdate, context: context)
        type = Types::AssertionRuleUpdate.new
        type.name = params[:name]
        type.safety_rule_arn = params[:safety_rule_arn]
        type.wait_period_ms = params[:wait_period_ms]
        type
      end
    end

    module Cluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cluster, context: context)
        type = Types::Cluster.new
        type.cluster_arn = params[:cluster_arn]
        type.cluster_endpoints = List____listOfClusterEndpoint.build(params[:cluster_endpoints], context: "#{context}[:cluster_endpoints]") unless params[:cluster_endpoints].nil?
        type.name = params[:name]
        type.status = params[:status]
        type
      end
    end

    module ClusterEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterEndpoint, context: context)
        type = Types::ClusterEndpoint.new
        type.endpoint = params[:endpoint]
        type.region = params[:region]
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ControlPanel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ControlPanel, context: context)
        type = Types::ControlPanel.new
        type.cluster_arn = params[:cluster_arn]
        type.control_panel_arn = params[:control_panel_arn]
        type.default_control_panel = params[:default_control_panel]
        type.name = params[:name]
        type.routing_control_count = params[:routing_control_count]
        type.status = params[:status]
        type
      end
    end

    module CreateClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterInput, context: context)
        type = Types::CreateClusterInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.cluster_name = params[:cluster_name]
        type.tags = Map____mapOf__stringMin0Max256PatternS.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterOutput, context: context)
        type = Types::CreateClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module CreateControlPanelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateControlPanelInput, context: context)
        type = Types::CreateControlPanelInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.cluster_arn = params[:cluster_arn]
        type.control_panel_name = params[:control_panel_name]
        type.tags = Map____mapOf__stringMin0Max256PatternS.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateControlPanelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateControlPanelOutput, context: context)
        type = Types::CreateControlPanelOutput.new
        type.control_panel = ControlPanel.build(params[:control_panel], context: "#{context}[:control_panel]") unless params[:control_panel].nil?
        type
      end
    end

    module CreateRoutingControlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoutingControlInput, context: context)
        type = Types::CreateRoutingControlInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.cluster_arn = params[:cluster_arn]
        type.control_panel_arn = params[:control_panel_arn]
        type.routing_control_name = params[:routing_control_name]
        type
      end
    end

    module CreateRoutingControlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRoutingControlOutput, context: context)
        type = Types::CreateRoutingControlOutput.new
        type.routing_control = RoutingControl.build(params[:routing_control], context: "#{context}[:routing_control]") unless params[:routing_control].nil?
        type
      end
    end

    module CreateSafetyRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSafetyRuleInput, context: context)
        type = Types::CreateSafetyRuleInput.new
        type.assertion_rule = NewAssertionRule.build(params[:assertion_rule], context: "#{context}[:assertion_rule]") unless params[:assertion_rule].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.gating_rule = NewGatingRule.build(params[:gating_rule], context: "#{context}[:gating_rule]") unless params[:gating_rule].nil?
        type.tags = Map____mapOf__stringMin0Max256PatternS.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSafetyRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSafetyRuleOutput, context: context)
        type = Types::CreateSafetyRuleOutput.new
        type.assertion_rule = AssertionRule.build(params[:assertion_rule], context: "#{context}[:assertion_rule]") unless params[:assertion_rule].nil?
        type.gating_rule = GatingRule.build(params[:gating_rule], context: "#{context}[:gating_rule]") unless params[:gating_rule].nil?
        type
      end
    end

    module DeleteClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterInput, context: context)
        type = Types::DeleteClusterInput.new
        type.cluster_arn = params[:cluster_arn]
        type
      end
    end

    module DeleteClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterOutput, context: context)
        type = Types::DeleteClusterOutput.new
        type
      end
    end

    module DeleteControlPanelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteControlPanelInput, context: context)
        type = Types::DeleteControlPanelInput.new
        type.control_panel_arn = params[:control_panel_arn]
        type
      end
    end

    module DeleteControlPanelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteControlPanelOutput, context: context)
        type = Types::DeleteControlPanelOutput.new
        type
      end
    end

    module DeleteRoutingControlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoutingControlInput, context: context)
        type = Types::DeleteRoutingControlInput.new
        type.routing_control_arn = params[:routing_control_arn]
        type
      end
    end

    module DeleteRoutingControlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRoutingControlOutput, context: context)
        type = Types::DeleteRoutingControlOutput.new
        type
      end
    end

    module DeleteSafetyRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSafetyRuleInput, context: context)
        type = Types::DeleteSafetyRuleInput.new
        type.safety_rule_arn = params[:safety_rule_arn]
        type
      end
    end

    module DeleteSafetyRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteSafetyRuleOutput, context: context)
        type = Types::DeleteSafetyRuleOutput.new
        type
      end
    end

    module DescribeClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterInput, context: context)
        type = Types::DescribeClusterInput.new
        type.cluster_arn = params[:cluster_arn]
        type
      end
    end

    module DescribeClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterOutput, context: context)
        type = Types::DescribeClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module DescribeControlPanelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeControlPanelInput, context: context)
        type = Types::DescribeControlPanelInput.new
        type.control_panel_arn = params[:control_panel_arn]
        type
      end
    end

    module DescribeControlPanelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeControlPanelOutput, context: context)
        type = Types::DescribeControlPanelOutput.new
        type.control_panel = ControlPanel.build(params[:control_panel], context: "#{context}[:control_panel]") unless params[:control_panel].nil?
        type
      end
    end

    module DescribeRoutingControlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRoutingControlInput, context: context)
        type = Types::DescribeRoutingControlInput.new
        type.routing_control_arn = params[:routing_control_arn]
        type
      end
    end

    module DescribeRoutingControlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRoutingControlOutput, context: context)
        type = Types::DescribeRoutingControlOutput.new
        type.routing_control = RoutingControl.build(params[:routing_control], context: "#{context}[:routing_control]") unless params[:routing_control].nil?
        type
      end
    end

    module DescribeSafetyRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSafetyRuleInput, context: context)
        type = Types::DescribeSafetyRuleInput.new
        type.safety_rule_arn = params[:safety_rule_arn]
        type
      end
    end

    module DescribeSafetyRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeSafetyRuleOutput, context: context)
        type = Types::DescribeSafetyRuleOutput.new
        type.assertion_rule = AssertionRule.build(params[:assertion_rule], context: "#{context}[:assertion_rule]") unless params[:assertion_rule].nil?
        type.gating_rule = GatingRule.build(params[:gating_rule], context: "#{context}[:gating_rule]") unless params[:gating_rule].nil?
        type
      end
    end

    module GatingRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatingRule, context: context)
        type = Types::GatingRule.new
        type.control_panel_arn = params[:control_panel_arn]
        type.gating_controls = List____listOf__stringMin1Max256PatternAZaZ09.build(params[:gating_controls], context: "#{context}[:gating_controls]") unless params[:gating_controls].nil?
        type.name = params[:name]
        type.rule_config = RuleConfig.build(params[:rule_config], context: "#{context}[:rule_config]") unless params[:rule_config].nil?
        type.safety_rule_arn = params[:safety_rule_arn]
        type.status = params[:status]
        type.target_controls = List____listOf__stringMin1Max256PatternAZaZ09.build(params[:target_controls], context: "#{context}[:target_controls]") unless params[:target_controls].nil?
        type.wait_period_ms = params[:wait_period_ms]
        type
      end
    end

    module GatingRuleUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatingRuleUpdate, context: context)
        type = Types::GatingRuleUpdate.new
        type.name = params[:name]
        type.safety_rule_arn = params[:safety_rule_arn]
        type.wait_period_ms = params[:wait_period_ms]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListAssociatedRoute53HealthChecksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociatedRoute53HealthChecksInput, context: context)
        type = Types::ListAssociatedRoute53HealthChecksInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.routing_control_arn = params[:routing_control_arn]
        type
      end
    end

    module ListAssociatedRoute53HealthChecksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociatedRoute53HealthChecksOutput, context: context)
        type = Types::ListAssociatedRoute53HealthChecksOutput.new
        type.health_check_ids = List____listOf__stringMax36PatternS.build(params[:health_check_ids], context: "#{context}[:health_check_ids]") unless params[:health_check_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClustersInput, context: context)
        type = Types::ListClustersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClustersOutput, context: context)
        type = Types::ListClustersOutput.new
        type.clusters = List____listOfCluster.build(params[:clusters], context: "#{context}[:clusters]") unless params[:clusters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListControlPanelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListControlPanelsInput, context: context)
        type = Types::ListControlPanelsInput.new
        type.cluster_arn = params[:cluster_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListControlPanelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListControlPanelsOutput, context: context)
        type = Types::ListControlPanelsOutput.new
        type.control_panels = List____listOfControlPanel.build(params[:control_panels], context: "#{context}[:control_panels]") unless params[:control_panels].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRoutingControlsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoutingControlsInput, context: context)
        type = Types::ListRoutingControlsInput.new
        type.control_panel_arn = params[:control_panel_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRoutingControlsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoutingControlsOutput, context: context)
        type = Types::ListRoutingControlsOutput.new
        type.next_token = params[:next_token]
        type.routing_controls = List____listOfRoutingControl.build(params[:routing_controls], context: "#{context}[:routing_controls]") unless params[:routing_controls].nil?
        type
      end
    end

    module ListSafetyRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSafetyRulesInput, context: context)
        type = Types::ListSafetyRulesInput.new
        type.control_panel_arn = params[:control_panel_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListSafetyRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListSafetyRulesOutput, context: context)
        type = Types::ListSafetyRulesOutput.new
        type.next_token = params[:next_token]
        type.safety_rules = List____listOfRule.build(params[:safety_rules], context: "#{context}[:safety_rules]") unless params[:safety_rules].nil?
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = Map____mapOf__stringMin0Max256PatternS.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NewAssertionRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NewAssertionRule, context: context)
        type = Types::NewAssertionRule.new
        type.asserted_controls = List____listOf__stringMin1Max256PatternAZaZ09.build(params[:asserted_controls], context: "#{context}[:asserted_controls]") unless params[:asserted_controls].nil?
        type.control_panel_arn = params[:control_panel_arn]
        type.name = params[:name]
        type.rule_config = RuleConfig.build(params[:rule_config], context: "#{context}[:rule_config]") unless params[:rule_config].nil?
        type.wait_period_ms = params[:wait_period_ms]
        type
      end
    end

    module NewGatingRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NewGatingRule, context: context)
        type = Types::NewGatingRule.new
        type.control_panel_arn = params[:control_panel_arn]
        type.gating_controls = List____listOf__stringMin1Max256PatternAZaZ09.build(params[:gating_controls], context: "#{context}[:gating_controls]") unless params[:gating_controls].nil?
        type.name = params[:name]
        type.rule_config = RuleConfig.build(params[:rule_config], context: "#{context}[:rule_config]") unless params[:rule_config].nil?
        type.target_controls = List____listOf__stringMin1Max256PatternAZaZ09.build(params[:target_controls], context: "#{context}[:target_controls]") unless params[:target_controls].nil?
        type.wait_period_ms = params[:wait_period_ms]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module RoutingControl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoutingControl, context: context)
        type = Types::RoutingControl.new
        type.control_panel_arn = params[:control_panel_arn]
        type.name = params[:name]
        type.routing_control_arn = params[:routing_control_arn]
        type.status = params[:status]
        type
      end
    end

    module Rule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Rule, context: context)
        type = Types::Rule.new
        type.assertion = AssertionRule.build(params[:assertion], context: "#{context}[:assertion]") unless params[:assertion].nil?
        type.gating = GatingRule.build(params[:gating], context: "#{context}[:gating]") unless params[:gating].nil?
        type
      end
    end

    module RuleConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleConfig, context: context)
        type = Types::RuleConfig.new
        type.inverted = params[:inverted]
        type.threshold = params[:threshold]
        type.type = params[:type]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Map____mapOf__stringMin0Max256PatternS.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = List____listOf__string.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateControlPanelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateControlPanelInput, context: context)
        type = Types::UpdateControlPanelInput.new
        type.control_panel_arn = params[:control_panel_arn]
        type.control_panel_name = params[:control_panel_name]
        type
      end
    end

    module UpdateControlPanelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateControlPanelOutput, context: context)
        type = Types::UpdateControlPanelOutput.new
        type.control_panel = ControlPanel.build(params[:control_panel], context: "#{context}[:control_panel]") unless params[:control_panel].nil?
        type
      end
    end

    module UpdateRoutingControlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingControlInput, context: context)
        type = Types::UpdateRoutingControlInput.new
        type.routing_control_arn = params[:routing_control_arn]
        type.routing_control_name = params[:routing_control_name]
        type
      end
    end

    module UpdateRoutingControlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRoutingControlOutput, context: context)
        type = Types::UpdateRoutingControlOutput.new
        type.routing_control = RoutingControl.build(params[:routing_control], context: "#{context}[:routing_control]") unless params[:routing_control].nil?
        type
      end
    end

    module UpdateSafetyRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSafetyRuleInput, context: context)
        type = Types::UpdateSafetyRuleInput.new
        type.assertion_rule_update = AssertionRuleUpdate.build(params[:assertion_rule_update], context: "#{context}[:assertion_rule_update]") unless params[:assertion_rule_update].nil?
        type.gating_rule_update = GatingRuleUpdate.build(params[:gating_rule_update], context: "#{context}[:gating_rule_update]") unless params[:gating_rule_update].nil?
        type
      end
    end

    module UpdateSafetyRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateSafetyRuleOutput, context: context)
        type = Types::UpdateSafetyRuleOutput.new
        type.assertion_rule = AssertionRule.build(params[:assertion_rule], context: "#{context}[:assertion_rule]") unless params[:assertion_rule].nil?
        type.gating_rule = GatingRule.build(params[:gating_rule], context: "#{context}[:gating_rule]") unless params[:gating_rule].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module List____listOfCluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Cluster.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfClusterEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterEndpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfControlPanel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ControlPanel.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfRoutingControl
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RoutingControl.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Rule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOf__stringMax36PatternS
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOf__stringMin1Max256PatternAZaZ09
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Map____mapOf__stringMin0Max256PatternS
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

  end
end
