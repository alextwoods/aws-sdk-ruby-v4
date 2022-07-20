# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Route53RecoveryControlConfig
  module Builders

    # Operation Builder for CreateCluster
    class CreateCluster
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/cluster')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['ClusterName'] = input[:cluster_name] unless input[:cluster_name].nil?
        data['Tags'] = Map____mapOf__stringMin0Max256PatternS.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for __mapOf__stringMin0Max256PatternS
    class Map____mapOf__stringMin0Max256PatternS
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateControlPanel
    class CreateControlPanel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/controlpanel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['ClusterArn'] = input[:cluster_arn] unless input[:cluster_arn].nil?
        data['ControlPanelName'] = input[:control_panel_name] unless input[:control_panel_name].nil?
        data['Tags'] = Map____mapOf__stringMin0Max256PatternS.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRoutingControl
    class CreateRoutingControl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/routingcontrol')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['ClusterArn'] = input[:cluster_arn] unless input[:cluster_arn].nil?
        data['ControlPanelArn'] = input[:control_panel_arn] unless input[:control_panel_arn].nil?
        data['RoutingControlName'] = input[:routing_control_name] unless input[:routing_control_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateSafetyRule
    class CreateSafetyRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/safetyrule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AssertionRule'] = NewAssertionRule.build(input[:assertion_rule]) unless input[:assertion_rule].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['GatingRule'] = NewGatingRule.build(input[:gating_rule]) unless input[:gating_rule].nil?
        data['Tags'] = Map____mapOf__stringMin0Max256PatternS.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NewGatingRule
    class NewGatingRule
      def self.build(input)
        data = {}
        data['ControlPanelArn'] = input[:control_panel_arn] unless input[:control_panel_arn].nil?
        data['GatingControls'] = List____listOf__stringMin1Max256PatternAZaZ09.build(input[:gating_controls]) unless input[:gating_controls].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['RuleConfig'] = RuleConfig.build(input[:rule_config]) unless input[:rule_config].nil?
        data['TargetControls'] = List____listOf__stringMin1Max256PatternAZaZ09.build(input[:target_controls]) unless input[:target_controls].nil?
        data['WaitPeriodMs'] = input[:wait_period_ms] unless input[:wait_period_ms].nil?
        data
      end
    end

    # List Builder for __listOf__stringMin1Max256PatternAZaZ09
    class List____listOf__stringMin1Max256PatternAZaZ09
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RuleConfig
    class RuleConfig
      def self.build(input)
        data = {}
        data['Inverted'] = input[:inverted] unless input[:inverted].nil?
        data['Threshold'] = input[:threshold] unless input[:threshold].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for NewAssertionRule
    class NewAssertionRule
      def self.build(input)
        data = {}
        data['AssertedControls'] = List____listOf__stringMin1Max256PatternAZaZ09.build(input[:asserted_controls]) unless input[:asserted_controls].nil?
        data['ControlPanelArn'] = input[:control_panel_arn] unless input[:control_panel_arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['RuleConfig'] = RuleConfig.build(input[:rule_config]) unless input[:rule_config].nil?
        data['WaitPeriodMs'] = input[:wait_period_ms] unless input[:wait_period_ms].nil?
        data
      end
    end

    # Operation Builder for DeleteCluster
    class DeleteCluster
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/cluster/%<ClusterArn>s',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteControlPanel
    class DeleteControlPanel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:control_panel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :control_panel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/controlpanel/%<ControlPanelArn>s',
            ControlPanelArn: Hearth::HTTP.uri_escape(input[:control_panel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRoutingControl
    class DeleteRoutingControl
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:routing_control_arn].to_s.empty?
          raise ArgumentError, "HTTP label :routing_control_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routingcontrol/%<RoutingControlArn>s',
            RoutingControlArn: Hearth::HTTP.uri_escape(input[:routing_control_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteSafetyRule
    class DeleteSafetyRule
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:safety_rule_arn].to_s.empty?
          raise ArgumentError, "HTTP label :safety_rule_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/safetyrule/%<SafetyRuleArn>s',
            SafetyRuleArn: Hearth::HTTP.uri_escape(input[:safety_rule_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeCluster
    class DescribeCluster
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:cluster_arn].to_s.empty?
          raise ArgumentError, "HTTP label :cluster_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/cluster/%<ClusterArn>s',
            ClusterArn: Hearth::HTTP.uri_escape(input[:cluster_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeControlPanel
    class DescribeControlPanel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:control_panel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :control_panel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/controlpanel/%<ControlPanelArn>s',
            ControlPanelArn: Hearth::HTTP.uri_escape(input[:control_panel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRoutingControl
    class DescribeRoutingControl
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:routing_control_arn].to_s.empty?
          raise ArgumentError, "HTTP label :routing_control_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routingcontrol/%<RoutingControlArn>s',
            RoutingControlArn: Hearth::HTTP.uri_escape(input[:routing_control_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeSafetyRule
    class DescribeSafetyRule
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:safety_rule_arn].to_s.empty?
          raise ArgumentError, "HTTP label :safety_rule_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/safetyrule/%<SafetyRuleArn>s',
            SafetyRuleArn: Hearth::HTTP.uri_escape(input[:safety_rule_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssociatedRoute53HealthChecks
    class ListAssociatedRoute53HealthChecks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:routing_control_arn].to_s.empty?
          raise ArgumentError, "HTTP label :routing_control_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/routingcontrol/%<RoutingControlArn>s/associatedRoute53HealthChecks',
            RoutingControlArn: Hearth::HTTP.uri_escape(input[:routing_control_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListClusters
    class ListClusters
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/cluster')
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListControlPanels
    class ListControlPanels
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/controlpanels')
        params = Hearth::Query::ParamList.new
        params['ClusterArn'] = input[:cluster_arn].to_s unless input[:cluster_arn].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRoutingControls
    class ListRoutingControls
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:control_panel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :control_panel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/controlpanel/%<ControlPanelArn>s/routingcontrols',
            ControlPanelArn: Hearth::HTTP.uri_escape(input[:control_panel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListSafetyRules
    class ListSafetyRules
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:control_panel_arn].to_s.empty?
          raise ArgumentError, "HTTP label :control_panel_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/controlpanel/%<ControlPanelArn>s/safetyrules',
            ControlPanelArn: Hearth::HTTP.uri_escape(input[:control_panel_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Map____mapOf__stringMin0Max256PatternS.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['TagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for __listOf__string
    class List____listOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateControlPanel
    class UpdateControlPanel
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/controlpanel')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ControlPanelArn'] = input[:control_panel_arn] unless input[:control_panel_arn].nil?
        data['ControlPanelName'] = input[:control_panel_name] unless input[:control_panel_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRoutingControl
    class UpdateRoutingControl
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/routingcontrol')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['RoutingControlArn'] = input[:routing_control_arn] unless input[:routing_control_arn].nil?
        data['RoutingControlName'] = input[:routing_control_name] unless input[:routing_control_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateSafetyRule
    class UpdateSafetyRule
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/safetyrule')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AssertionRuleUpdate'] = AssertionRuleUpdate.build(input[:assertion_rule_update]) unless input[:assertion_rule_update].nil?
        data['GatingRuleUpdate'] = GatingRuleUpdate.build(input[:gating_rule_update]) unless input[:gating_rule_update].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for GatingRuleUpdate
    class GatingRuleUpdate
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['SafetyRuleArn'] = input[:safety_rule_arn] unless input[:safety_rule_arn].nil?
        data['WaitPeriodMs'] = input[:wait_period_ms] unless input[:wait_period_ms].nil?
        data
      end
    end

    # Structure Builder for AssertionRuleUpdate
    class AssertionRuleUpdate
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['SafetyRuleArn'] = input[:safety_rule_arn] unless input[:safety_rule_arn].nil?
        data['WaitPeriodMs'] = input[:wait_period_ms] unless input[:wait_period_ms].nil?
        data
      end
    end
  end
end
