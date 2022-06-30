# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Route53RecoveryCluster
  module Parsers

    # Operation Parser for GetRoutingControlState
    class GetRoutingControlState
      def self.parse(http_resp)
        data = Types::GetRoutingControlStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.routing_control_arn = map['RoutingControlArn']
        data.routing_control_state = map['RoutingControlState']
        data.routing_control_name = map['RoutingControlName']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.reason = map['reason']
        data.fields = (Parsers::ValidationExceptionFieldList.parse(map['fields']) unless map['fields'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        list.map do |value|
          Parsers::ValidationExceptionField.parse(value) unless value.nil?
        end
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['name']
        data.message = map['message']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.retry_after_seconds = map['retryAfterSeconds']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.retry_after_seconds = map['retryAfterSeconds']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for EndpointTemporarilyUnavailableException
    class EndpointTemporarilyUnavailableException
      def self.parse(http_resp)
        data = Types::EndpointTemporarilyUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListRoutingControls
    class ListRoutingControls
      def self.parse(http_resp)
        data = Types::ListRoutingControlsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.routing_controls = (Parsers::RoutingControls.parse(map['RoutingControls']) unless map['RoutingControls'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RoutingControls
      def self.parse(list)
        list.map do |value|
          Parsers::RoutingControl.parse(value) unless value.nil?
        end
      end
    end

    class RoutingControl
      def self.parse(map)
        data = Types::RoutingControl.new
        data.control_panel_arn = map['ControlPanelArn']
        data.control_panel_name = map['ControlPanelName']
        data.routing_control_arn = map['RoutingControlArn']
        data.routing_control_name = map['RoutingControlName']
        data.routing_control_state = map['RoutingControlState']
        return data
      end
    end

    # Operation Parser for UpdateRoutingControlState
    class UpdateRoutingControlState
      def self.parse(http_resp)
        data = Types::UpdateRoutingControlStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Operation Parser for UpdateRoutingControlStates
    class UpdateRoutingControlStates
      def self.parse(http_resp)
        data = Types::UpdateRoutingControlStatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ServiceLimitExceededException
    class ServiceLimitExceededException
      def self.parse(http_resp)
        data = Types::ServiceLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data.resource_id = map['resourceId']
        data.resource_type = map['resourceType']
        data.limit_code = map['limitCode']
        data.service_code = map['serviceCode']
        data
      end
    end
  end
end
