# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Route53RecoveryCluster
  module Builders

    # Operation Builder for GetRoutingControlState
    class GetRoutingControlState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ToggleCustomerAPI.GetRoutingControlState'
        data = {}
        data['RoutingControlArn'] = input[:routing_control_arn] unless input[:routing_control_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRoutingControls
    class ListRoutingControls
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ToggleCustomerAPI.ListRoutingControls'
        data = {}
        data['ControlPanelArn'] = input[:control_panel_arn] unless input[:control_panel_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRoutingControlState
    class UpdateRoutingControlState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ToggleCustomerAPI.UpdateRoutingControlState'
        data = {}
        data['RoutingControlArn'] = input[:routing_control_arn] unless input[:routing_control_arn].nil?
        data['RoutingControlState'] = input[:routing_control_state] unless input[:routing_control_state].nil?
        data['SafetyRulesToOverride'] = Builders::Arns.build(input[:safety_rules_to_override]) unless input[:safety_rules_to_override].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Arns
    class Arns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateRoutingControlStates
    class UpdateRoutingControlStates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.0'
        http_req.headers['X-Amz-Target'] = 'ToggleCustomerAPI.UpdateRoutingControlStates'
        data = {}
        data['UpdateRoutingControlStateEntries'] = Builders::UpdateRoutingControlStateEntries.build(input[:update_routing_control_state_entries]) unless input[:update_routing_control_state_entries].nil?
        data['SafetyRulesToOverride'] = Builders::Arns.build(input[:safety_rules_to_override]) unless input[:safety_rules_to_override].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UpdateRoutingControlStateEntries
    class UpdateRoutingControlStateEntries
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UpdateRoutingControlStateEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UpdateRoutingControlStateEntry
    class UpdateRoutingControlStateEntry
      def self.build(input)
        data = {}
        data['RoutingControlArn'] = input[:routing_control_arn] unless input[:routing_control_arn].nil?
        data['RoutingControlState'] = input[:routing_control_state] unless input[:routing_control_state].nil?
        data
      end
    end
  end
end
