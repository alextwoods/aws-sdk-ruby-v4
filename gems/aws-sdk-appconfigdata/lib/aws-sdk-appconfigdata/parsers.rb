# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::AppConfigData
  module Parsers

    # Operation Parser for GetLatestConfiguration
    class GetLatestConfiguration
      def self.parse(http_resp)
        data = Types::GetLatestConfigurationOutput.new
        data.next_poll_configuration_token = http_resp.headers['Next-Poll-Configuration-Token']
        data.next_poll_interval_in_seconds = http_resp.headers['Next-Poll-Interval-In-Seconds'].to_i unless http_resp.headers['Next-Poll-Interval-In-Seconds'].nil?
        data.content_type = http_resp.headers['Content-Type']
        payload = http_resp.body.read
        data.configuration = payload unless payload.empty?
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data.details = (Parsers::BadRequestDetails.parse(map['Details']) unless map['Details'].nil?)
        data
      end
    end

    class BadRequestDetails
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'InvalidParameters'
          value = (Parsers::InvalidParameterMap.parse(value) unless value.nil?)
          Types::BadRequestDetails::InvalidParameters.new(value) if value
        else
          Types::BadRequestDetails::Unknown.new({name: key, value: value})
        end
      end
    end

    class InvalidParameterMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::InvalidParameterDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class InvalidParameterDetail
      def self.parse(map)
        data = Types::InvalidParameterDetail.new
        data.problem = map['Problem']
        return data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_type = map['ResourceType']
        data.referenced_by = (Parsers::StringMap.parse(map['ReferencedBy']) unless map['ReferencedBy'].nil?)
        data
      end
    end

    class StringMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StartConfigurationSession
    class StartConfigurationSession
      def self.parse(http_resp)
        data = Types::StartConfigurationSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.initial_configuration_token = map['InitialConfigurationToken']
        data
      end
    end
  end
end
