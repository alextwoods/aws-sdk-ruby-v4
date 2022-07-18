# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53RecoveryControlConfig
  module Parsers

    # Operation Parser for CreateCluster
    class CreateCluster
      def self.parse(http_resp)
        data = Types::CreateClusterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster = (Parsers::Cluster.parse(map['Cluster']) unless map['Cluster'].nil?)
        data
      end
    end

    class Cluster
      def self.parse(map)
        data = Types::Cluster.new
        data.cluster_arn = map['ClusterArn']
        data.cluster_endpoints = (Parsers::List____listOfClusterEndpoint.parse(map['ClusterEndpoints']) unless map['ClusterEndpoints'].nil?)
        data.name = map['Name']
        data.status = map['Status']
        return data
      end
    end

    class List____listOfClusterEndpoint
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ClusterEndpoint.parse(value) unless value.nil?
        end
        data
      end
    end

    class ClusterEndpoint
      def self.parse(map)
        data = Types::ClusterEndpoint.new
        data.endpoint = map['Endpoint']
        data.region = map['Region']
        return data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateControlPanel
    class CreateControlPanel
      def self.parse(http_resp)
        data = Types::CreateControlPanelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.control_panel = (Parsers::ControlPanel.parse(map['ControlPanel']) unless map['ControlPanel'].nil?)
        data
      end
    end

    class ControlPanel
      def self.parse(map)
        data = Types::ControlPanel.new
        data.cluster_arn = map['ClusterArn']
        data.control_panel_arn = map['ControlPanelArn']
        data.default_control_panel = map['DefaultControlPanel']
        data.name = map['Name']
        data.routing_control_count = map['RoutingControlCount']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for CreateRoutingControl
    class CreateRoutingControl
      def self.parse(http_resp)
        data = Types::CreateRoutingControlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.routing_control = (Parsers::RoutingControl.parse(map['RoutingControl']) unless map['RoutingControl'].nil?)
        data
      end
    end

    class RoutingControl
      def self.parse(map)
        data = Types::RoutingControl.new
        data.control_panel_arn = map['ControlPanelArn']
        data.name = map['Name']
        data.routing_control_arn = map['RoutingControlArn']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for CreateSafetyRule
    class CreateSafetyRule
      def self.parse(http_resp)
        data = Types::CreateSafetyRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assertion_rule = (Parsers::AssertionRule.parse(map['AssertionRule']) unless map['AssertionRule'].nil?)
        data.gating_rule = (Parsers::GatingRule.parse(map['GatingRule']) unless map['GatingRule'].nil?)
        data
      end
    end

    class GatingRule
      def self.parse(map)
        data = Types::GatingRule.new
        data.control_panel_arn = map['ControlPanelArn']
        data.gating_controls = (Parsers::List____listOf__stringMin1Max256PatternAZaZ09.parse(map['GatingControls']) unless map['GatingControls'].nil?)
        data.name = map['Name']
        data.rule_config = (Parsers::RuleConfig.parse(map['RuleConfig']) unless map['RuleConfig'].nil?)
        data.safety_rule_arn = map['SafetyRuleArn']
        data.status = map['Status']
        data.target_controls = (Parsers::List____listOf__stringMin1Max256PatternAZaZ09.parse(map['TargetControls']) unless map['TargetControls'].nil?)
        data.wait_period_ms = map['WaitPeriodMs']
        return data
      end
    end

    class List____listOf__stringMin1Max256PatternAZaZ09
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RuleConfig
      def self.parse(map)
        data = Types::RuleConfig.new
        data.inverted = map['Inverted']
        data.threshold = map['Threshold']
        data.type = map['Type']
        return data
      end
    end

    class AssertionRule
      def self.parse(map)
        data = Types::AssertionRule.new
        data.asserted_controls = (Parsers::List____listOf__stringMin1Max256PatternAZaZ09.parse(map['AssertedControls']) unless map['AssertedControls'].nil?)
        data.control_panel_arn = map['ControlPanelArn']
        data.name = map['Name']
        data.rule_config = (Parsers::RuleConfig.parse(map['RuleConfig']) unless map['RuleConfig'].nil?)
        data.safety_rule_arn = map['SafetyRuleArn']
        data.status = map['Status']
        data.wait_period_ms = map['WaitPeriodMs']
        return data
      end
    end

    # Operation Parser for DeleteCluster
    class DeleteCluster
      def self.parse(http_resp)
        data = Types::DeleteClusterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteControlPanel
    class DeleteControlPanel
      def self.parse(http_resp)
        data = Types::DeleteControlPanelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRoutingControl
    class DeleteRoutingControl
      def self.parse(http_resp)
        data = Types::DeleteRoutingControlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteSafetyRule
    class DeleteSafetyRule
      def self.parse(http_resp)
        data = Types::DeleteSafetyRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeCluster
    class DescribeCluster
      def self.parse(http_resp)
        data = Types::DescribeClusterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cluster = (Parsers::Cluster.parse(map['Cluster']) unless map['Cluster'].nil?)
        data
      end
    end

    # Operation Parser for DescribeControlPanel
    class DescribeControlPanel
      def self.parse(http_resp)
        data = Types::DescribeControlPanelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.control_panel = (Parsers::ControlPanel.parse(map['ControlPanel']) unless map['ControlPanel'].nil?)
        data
      end
    end

    # Operation Parser for DescribeRoutingControl
    class DescribeRoutingControl
      def self.parse(http_resp)
        data = Types::DescribeRoutingControlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.routing_control = (Parsers::RoutingControl.parse(map['RoutingControl']) unless map['RoutingControl'].nil?)
        data
      end
    end

    # Operation Parser for DescribeSafetyRule
    class DescribeSafetyRule
      def self.parse(http_resp)
        data = Types::DescribeSafetyRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assertion_rule = (Parsers::AssertionRule.parse(map['AssertionRule']) unless map['AssertionRule'].nil?)
        data.gating_rule = (Parsers::GatingRule.parse(map['GatingRule']) unless map['GatingRule'].nil?)
        data
      end
    end

    # Operation Parser for ListAssociatedRoute53HealthChecks
    class ListAssociatedRoute53HealthChecks
      def self.parse(http_resp)
        data = Types::ListAssociatedRoute53HealthChecksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.health_check_ids = (Parsers::List____listOf__stringMax36PatternS.parse(map['HealthCheckIds']) unless map['HealthCheckIds'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class List____listOf__stringMax36PatternS
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListClusters
    class ListClusters
      def self.parse(http_resp)
        data = Types::ListClustersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.clusters = (Parsers::List____listOfCluster.parse(map['Clusters']) unless map['Clusters'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class List____listOfCluster
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Cluster.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListControlPanels
    class ListControlPanels
      def self.parse(http_resp)
        data = Types::ListControlPanelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.control_panels = (Parsers::List____listOfControlPanel.parse(map['ControlPanels']) unless map['ControlPanels'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class List____listOfControlPanel
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ControlPanel.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListRoutingControls
    class ListRoutingControls
      def self.parse(http_resp)
        data = Types::ListRoutingControlsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.routing_controls = (Parsers::List____listOfRoutingControl.parse(map['RoutingControls']) unless map['RoutingControls'].nil?)
        data
      end
    end

    class List____listOfRoutingControl
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RoutingControl.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListSafetyRules
    class ListSafetyRules
      def self.parse(http_resp)
        data = Types::ListSafetyRulesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['NextToken']
        data.safety_rules = (Parsers::List____listOfRule.parse(map['SafetyRules']) unless map['SafetyRules'].nil?)
        data
      end
    end

    class List____listOfRule
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Rule.parse(value) unless value.nil?
        end
        data
      end
    end

    class Rule
      def self.parse(map)
        data = Types::Rule.new
        data.assertion = (Parsers::AssertionRule.parse(map['ASSERTION']) unless map['ASSERTION'].nil?)
        data.gating = (Parsers::GatingRule.parse(map['GATING']) unless map['GATING'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Map____mapOf__stringMin0Max256PatternS.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class Map____mapOf__stringMin0Max256PatternS
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateControlPanel
    class UpdateControlPanel
      def self.parse(http_resp)
        data = Types::UpdateControlPanelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.control_panel = (Parsers::ControlPanel.parse(map['ControlPanel']) unless map['ControlPanel'].nil?)
        data
      end
    end

    # Operation Parser for UpdateRoutingControl
    class UpdateRoutingControl
      def self.parse(http_resp)
        data = Types::UpdateRoutingControlOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.routing_control = (Parsers::RoutingControl.parse(map['RoutingControl']) unless map['RoutingControl'].nil?)
        data
      end
    end

    # Operation Parser for UpdateSafetyRule
    class UpdateSafetyRule
      def self.parse(http_resp)
        data = Types::UpdateSafetyRuleOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assertion_rule = (Parsers::AssertionRule.parse(map['AssertionRule']) unless map['AssertionRule'].nil?)
        data.gating_rule = (Parsers::GatingRule.parse(map['GatingRule']) unless map['GatingRule'].nil?)
        data
      end
    end
  end
end
