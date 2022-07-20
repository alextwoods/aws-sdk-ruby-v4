# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Route53RecoveryCluster
  module Stubs

    # Operation Stubber for GetRoutingControlState
    class GetRoutingControlState
      def self.default(visited=[])
        {
          routing_control_arn: 'routing_control_arn',
          routing_control_state: 'routing_control_state',
          routing_control_name: 'routing_control_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RoutingControlArn'] = stub[:routing_control_arn] unless stub[:routing_control_arn].nil?
        data['RoutingControlState'] = stub[:routing_control_state] unless stub[:routing_control_state].nil?
        data['RoutingControlName'] = stub[:routing_control_name] unless stub[:routing_control_name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListRoutingControls
    class ListRoutingControls
      def self.default(visited=[])
        {
          routing_controls: RoutingControls.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RoutingControls'] = RoutingControls.stub(stub[:routing_controls]) unless stub[:routing_controls].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RoutingControls
    class RoutingControls
      def self.default(visited=[])
        return nil if visited.include?('RoutingControls')
        visited = visited + ['RoutingControls']
        [
          RoutingControl.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RoutingControl.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RoutingControl
    class RoutingControl
      def self.default(visited=[])
        return nil if visited.include?('RoutingControl')
        visited = visited + ['RoutingControl']
        {
          control_panel_arn: 'control_panel_arn',
          control_panel_name: 'control_panel_name',
          routing_control_arn: 'routing_control_arn',
          routing_control_name: 'routing_control_name',
          routing_control_state: 'routing_control_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::RoutingControl.new
        data = {}
        data['ControlPanelArn'] = stub[:control_panel_arn] unless stub[:control_panel_arn].nil?
        data['ControlPanelName'] = stub[:control_panel_name] unless stub[:control_panel_name].nil?
        data['RoutingControlArn'] = stub[:routing_control_arn] unless stub[:routing_control_arn].nil?
        data['RoutingControlName'] = stub[:routing_control_name] unless stub[:routing_control_name].nil?
        data['RoutingControlState'] = stub[:routing_control_state] unless stub[:routing_control_state].nil?
        data
      end
    end

    # Operation Stubber for UpdateRoutingControlState
    class UpdateRoutingControlState
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRoutingControlStates
    class UpdateRoutingControlStates
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
