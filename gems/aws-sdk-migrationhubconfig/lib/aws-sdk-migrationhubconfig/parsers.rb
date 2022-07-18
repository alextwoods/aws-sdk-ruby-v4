# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MigrationHubConfig
  module Parsers

    # Operation Parser for CreateHomeRegionControl
    class CreateHomeRegionControl
      def self.parse(http_resp)
        data = Types::CreateHomeRegionControlOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.home_region_control = (Parsers::HomeRegionControl.parse(map['HomeRegionControl']) unless map['HomeRegionControl'].nil?)
        data
      end
    end

    class HomeRegionControl
      def self.parse(map)
        data = Types::HomeRegionControl.new
        data.control_id = map['ControlId']
        data.home_region = map['HomeRegion']
        data.target = (Parsers::Target.parse(map['Target']) unless map['Target'].nil?)
        data.requested_time = Time.at(map['RequestedTime'].to_i) if map['RequestedTime']
        return data
      end
    end

    class Target
      def self.parse(map)
        data = Types::Target.new
        data.type = map['Type']
        data.id = map['Id']
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for DryRunOperation
    class DryRunOperation
      def self.parse(http_resp)
        data = Types::DryRunOperation.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerError
    class InternalServerError
      def self.parse(http_resp)
        data = Types::InternalServerError.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
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
        data.message = map['Message']
        data.retry_after_seconds = map['RetryAfterSeconds']
        data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeHomeRegionControls
    class DescribeHomeRegionControls
      def self.parse(http_resp)
        data = Types::DescribeHomeRegionControlsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.home_region_controls = (Parsers::HomeRegionControls.parse(map['HomeRegionControls']) unless map['HomeRegionControls'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class HomeRegionControls
      def self.parse(list)
        list.map do |value|
          Parsers::HomeRegionControl.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for GetHomeRegion
    class GetHomeRegion
      def self.parse(http_resp)
        data = Types::GetHomeRegionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.home_region = map['HomeRegion']
        data
      end
    end
  end
end
