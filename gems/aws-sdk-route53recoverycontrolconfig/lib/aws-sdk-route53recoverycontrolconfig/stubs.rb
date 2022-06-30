# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53RecoveryControlConfig
  module Stubs

    # Operation Stubber for CreateCluster
    class CreateCluster
      def self.default(visited=[])
        {
          cluster: Stubs::Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Cluster
    class Cluster
      def self.default(visited=[])
        return nil if visited.include?('Cluster')
        visited = visited + ['Cluster']
        {
          cluster_arn: 'cluster_arn',
          cluster_endpoints: Stubs::List____listOfClusterEndpoint.default(visited),
          name: 'name',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Cluster.new
        data = {}
        data['ClusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['ClusterEndpoints'] = Stubs::List____listOfClusterEndpoint.stub(stub[:cluster_endpoints]) unless stub[:cluster_endpoints].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # List Stubber for __listOfClusterEndpoint
    class List____listOfClusterEndpoint
      def self.default(visited=[])
        return nil if visited.include?('List____listOfClusterEndpoint')
        visited = visited + ['List____listOfClusterEndpoint']
        [
          Stubs::ClusterEndpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ClusterEndpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ClusterEndpoint
    class ClusterEndpoint
      def self.default(visited=[])
        return nil if visited.include?('ClusterEndpoint')
        visited = visited + ['ClusterEndpoint']
        {
          endpoint: 'endpoint',
          region: 'region',
        }
      end

      def self.stub(stub)
        stub ||= Types::ClusterEndpoint.new
        data = {}
        data['Endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['Region'] = stub[:region] unless stub[:region].nil?
        data
      end
    end

    # Operation Stubber for CreateControlPanel
    class CreateControlPanel
      def self.default(visited=[])
        {
          control_panel: Stubs::ControlPanel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ControlPanel'] = Stubs::ControlPanel.stub(stub[:control_panel]) unless stub[:control_panel].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ControlPanel
    class ControlPanel
      def self.default(visited=[])
        return nil if visited.include?('ControlPanel')
        visited = visited + ['ControlPanel']
        {
          cluster_arn: 'cluster_arn',
          control_panel_arn: 'control_panel_arn',
          default_control_panel: false,
          name: 'name',
          routing_control_count: 1,
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ControlPanel.new
        data = {}
        data['ClusterArn'] = stub[:cluster_arn] unless stub[:cluster_arn].nil?
        data['ControlPanelArn'] = stub[:control_panel_arn] unless stub[:control_panel_arn].nil?
        data['DefaultControlPanel'] = stub[:default_control_panel] unless stub[:default_control_panel].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RoutingControlCount'] = stub[:routing_control_count] unless stub[:routing_control_count].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for CreateRoutingControl
    class CreateRoutingControl
      def self.default(visited=[])
        {
          routing_control: Stubs::RoutingControl.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RoutingControl'] = Stubs::RoutingControl.stub(stub[:routing_control]) unless stub[:routing_control].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RoutingControl
    class RoutingControl
      def self.default(visited=[])
        return nil if visited.include?('RoutingControl')
        visited = visited + ['RoutingControl']
        {
          control_panel_arn: 'control_panel_arn',
          name: 'name',
          routing_control_arn: 'routing_control_arn',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::RoutingControl.new
        data = {}
        data['ControlPanelArn'] = stub[:control_panel_arn] unless stub[:control_panel_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RoutingControlArn'] = stub[:routing_control_arn] unless stub[:routing_control_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for CreateSafetyRule
    class CreateSafetyRule
      def self.default(visited=[])
        {
          assertion_rule: Stubs::AssertionRule.default(visited),
          gating_rule: Stubs::GatingRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AssertionRule'] = Stubs::AssertionRule.stub(stub[:assertion_rule]) unless stub[:assertion_rule].nil?
        data['GatingRule'] = Stubs::GatingRule.stub(stub[:gating_rule]) unless stub[:gating_rule].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for GatingRule
    class GatingRule
      def self.default(visited=[])
        return nil if visited.include?('GatingRule')
        visited = visited + ['GatingRule']
        {
          control_panel_arn: 'control_panel_arn',
          gating_controls: Stubs::List____listOf__stringMin1Max256PatternAZaZ09.default(visited),
          name: 'name',
          rule_config: Stubs::RuleConfig.default(visited),
          safety_rule_arn: 'safety_rule_arn',
          status: 'status',
          target_controls: Stubs::List____listOf__stringMin1Max256PatternAZaZ09.default(visited),
          wait_period_ms: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::GatingRule.new
        data = {}
        data['ControlPanelArn'] = stub[:control_panel_arn] unless stub[:control_panel_arn].nil?
        data['GatingControls'] = Stubs::List____listOf__stringMin1Max256PatternAZaZ09.stub(stub[:gating_controls]) unless stub[:gating_controls].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RuleConfig'] = Stubs::RuleConfig.stub(stub[:rule_config]) unless stub[:rule_config].nil?
        data['SafetyRuleArn'] = stub[:safety_rule_arn] unless stub[:safety_rule_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['TargetControls'] = Stubs::List____listOf__stringMin1Max256PatternAZaZ09.stub(stub[:target_controls]) unless stub[:target_controls].nil?
        data['WaitPeriodMs'] = stub[:wait_period_ms] unless stub[:wait_period_ms].nil?
        data
      end
    end

    # List Stubber for __listOf__stringMin1Max256PatternAZaZ09
    class List____listOf__stringMin1Max256PatternAZaZ09
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__stringMin1Max256PatternAZaZ09')
        visited = visited + ['List____listOf__stringMin1Max256PatternAZaZ09']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RuleConfig
    class RuleConfig
      def self.default(visited=[])
        return nil if visited.include?('RuleConfig')
        visited = visited + ['RuleConfig']
        {
          inverted: false,
          threshold: 1,
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleConfig.new
        data = {}
        data['Inverted'] = stub[:inverted] unless stub[:inverted].nil?
        data['Threshold'] = stub[:threshold] unless stub[:threshold].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for AssertionRule
    class AssertionRule
      def self.default(visited=[])
        return nil if visited.include?('AssertionRule')
        visited = visited + ['AssertionRule']
        {
          asserted_controls: Stubs::List____listOf__stringMin1Max256PatternAZaZ09.default(visited),
          control_panel_arn: 'control_panel_arn',
          name: 'name',
          rule_config: Stubs::RuleConfig.default(visited),
          safety_rule_arn: 'safety_rule_arn',
          status: 'status',
          wait_period_ms: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AssertionRule.new
        data = {}
        data['AssertedControls'] = Stubs::List____listOf__stringMin1Max256PatternAZaZ09.stub(stub[:asserted_controls]) unless stub[:asserted_controls].nil?
        data['ControlPanelArn'] = stub[:control_panel_arn] unless stub[:control_panel_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['RuleConfig'] = Stubs::RuleConfig.stub(stub[:rule_config]) unless stub[:rule_config].nil?
        data['SafetyRuleArn'] = stub[:safety_rule_arn] unless stub[:safety_rule_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['WaitPeriodMs'] = stub[:wait_period_ms] unless stub[:wait_period_ms].nil?
        data
      end
    end

    # Operation Stubber for DeleteCluster
    class DeleteCluster
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteControlPanel
    class DeleteControlPanel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRoutingControl
    class DeleteRoutingControl
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteSafetyRule
    class DeleteSafetyRule
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeCluster
    class DescribeCluster
      def self.default(visited=[])
        {
          cluster: Stubs::Cluster.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Cluster'] = Stubs::Cluster.stub(stub[:cluster]) unless stub[:cluster].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeControlPanel
    class DescribeControlPanel
      def self.default(visited=[])
        {
          control_panel: Stubs::ControlPanel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ControlPanel'] = Stubs::ControlPanel.stub(stub[:control_panel]) unless stub[:control_panel].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeRoutingControl
    class DescribeRoutingControl
      def self.default(visited=[])
        {
          routing_control: Stubs::RoutingControl.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RoutingControl'] = Stubs::RoutingControl.stub(stub[:routing_control]) unless stub[:routing_control].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeSafetyRule
    class DescribeSafetyRule
      def self.default(visited=[])
        {
          assertion_rule: Stubs::AssertionRule.default(visited),
          gating_rule: Stubs::GatingRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AssertionRule'] = Stubs::AssertionRule.stub(stub[:assertion_rule]) unless stub[:assertion_rule].nil?
        data['GatingRule'] = Stubs::GatingRule.stub(stub[:gating_rule]) unless stub[:gating_rule].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListAssociatedRoute53HealthChecks
    class ListAssociatedRoute53HealthChecks
      def self.default(visited=[])
        {
          health_check_ids: Stubs::List____listOf__stringMax36PatternS.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['HealthCheckIds'] = Stubs::List____listOf__stringMax36PatternS.stub(stub[:health_check_ids]) unless stub[:health_check_ids].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOf__stringMax36PatternS
    class List____listOf__stringMax36PatternS
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__stringMax36PatternS')
        visited = visited + ['List____listOf__stringMax36PatternS']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListClusters
    class ListClusters
      def self.default(visited=[])
        {
          clusters: Stubs::List____listOfCluster.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Clusters'] = Stubs::List____listOfCluster.stub(stub[:clusters]) unless stub[:clusters].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfCluster
    class List____listOfCluster
      def self.default(visited=[])
        return nil if visited.include?('List____listOfCluster')
        visited = visited + ['List____listOfCluster']
        [
          Stubs::Cluster.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Cluster.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListControlPanels
    class ListControlPanels
      def self.default(visited=[])
        {
          control_panels: Stubs::List____listOfControlPanel.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ControlPanels'] = Stubs::List____listOfControlPanel.stub(stub[:control_panels]) unless stub[:control_panels].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfControlPanel
    class List____listOfControlPanel
      def self.default(visited=[])
        return nil if visited.include?('List____listOfControlPanel')
        visited = visited + ['List____listOfControlPanel']
        [
          Stubs::ControlPanel.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ControlPanel.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListRoutingControls
    class ListRoutingControls
      def self.default(visited=[])
        {
          next_token: 'next_token',
          routing_controls: Stubs::List____listOfRoutingControl.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['RoutingControls'] = Stubs::List____listOfRoutingControl.stub(stub[:routing_controls]) unless stub[:routing_controls].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfRoutingControl
    class List____listOfRoutingControl
      def self.default(visited=[])
        return nil if visited.include?('List____listOfRoutingControl')
        visited = visited + ['List____listOfRoutingControl']
        [
          Stubs::RoutingControl.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RoutingControl.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListSafetyRules
    class ListSafetyRules
      def self.default(visited=[])
        {
          next_token: 'next_token',
          safety_rules: Stubs::List____listOfRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['SafetyRules'] = Stubs::List____listOfRule.stub(stub[:safety_rules]) unless stub[:safety_rules].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfRule
    class List____listOfRule
      def self.default(visited=[])
        return nil if visited.include?('List____listOfRule')
        visited = visited + ['List____listOfRule']
        [
          Stubs::Rule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Rule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Rule
    class Rule
      def self.default(visited=[])
        return nil if visited.include?('Rule')
        visited = visited + ['Rule']
        {
          assertion: Stubs::AssertionRule.default(visited),
          gating: Stubs::GatingRule.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Rule.new
        data = {}
        data['ASSERTION'] = Stubs::AssertionRule.stub(stub[:assertion]) unless stub[:assertion].nil?
        data['GATING'] = Stubs::GatingRule.stub(stub[:gating]) unless stub[:gating].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::Map____mapOf__stringMin0Max256PatternS.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::Map____mapOf__stringMin0Max256PatternS.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for __mapOf__stringMin0Max256PatternS
    class Map____mapOf__stringMin0Max256PatternS
      def self.default(visited=[])
        return nil if visited.include?('Map____mapOf__stringMin0Max256PatternS')
        visited = visited + ['Map____mapOf__stringMin0Max256PatternS']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateControlPanel
    class UpdateControlPanel
      def self.default(visited=[])
        {
          control_panel: Stubs::ControlPanel.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ControlPanel'] = Stubs::ControlPanel.stub(stub[:control_panel]) unless stub[:control_panel].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRoutingControl
    class UpdateRoutingControl
      def self.default(visited=[])
        {
          routing_control: Stubs::RoutingControl.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RoutingControl'] = Stubs::RoutingControl.stub(stub[:routing_control]) unless stub[:routing_control].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateSafetyRule
    class UpdateSafetyRule
      def self.default(visited=[])
        {
          assertion_rule: Stubs::AssertionRule.default(visited),
          gating_rule: Stubs::GatingRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AssertionRule'] = Stubs::AssertionRule.stub(stub[:assertion_rule]) unless stub[:assertion_rule].nil?
        data['GatingRule'] = Stubs::GatingRule.stub(stub[:gating_rule]) unless stub[:gating_rule].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
