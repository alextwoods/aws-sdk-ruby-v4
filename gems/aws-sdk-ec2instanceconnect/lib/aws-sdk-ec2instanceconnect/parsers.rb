# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::EC2InstanceConnect
  module Parsers

    # Operation Parser for SendSSHPublicKey
    class SendSSHPublicKey
      def self.parse(http_resp)
        data = Types::SendSSHPublicKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.request_id = map['RequestId']
        data.success = map['Success']
        data
      end
    end

    # Error Parser for EC2InstanceNotFoundException
    class EC2InstanceNotFoundException
      def self.parse(http_resp)
        data = Types::EC2InstanceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceException
    class ServiceException
      def self.parse(http_resp)
        data = Types::ServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EC2InstanceStateInvalidException
    class EC2InstanceStateInvalidException
      def self.parse(http_resp)
        data = Types::EC2InstanceStateInvalidException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AuthException
    class AuthException
      def self.parse(http_resp)
        data = Types::AuthException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidArgsException
    class InvalidArgsException
      def self.parse(http_resp)
        data = Types::InvalidArgsException.new
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
        data
      end
    end

    # Operation Parser for SendSerialConsoleSSHPublicKey
    class SendSerialConsoleSSHPublicKey
      def self.parse(http_resp)
        data = Types::SendSerialConsoleSSHPublicKeyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.request_id = map['RequestId']
        data.success = map['Success']
        data
      end
    end

    # Error Parser for SerialConsoleSessionUnavailableException
    class SerialConsoleSessionUnavailableException
      def self.parse(http_resp)
        data = Types::SerialConsoleSessionUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for EC2InstanceTypeInvalidException
    class EC2InstanceTypeInvalidException
      def self.parse(http_resp)
        data = Types::EC2InstanceTypeInvalidException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for SerialConsoleAccessDisabledException
    class SerialConsoleAccessDisabledException
      def self.parse(http_resp)
        data = Types::SerialConsoleAccessDisabledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for SerialConsoleSessionLimitExceededException
    class SerialConsoleSessionLimitExceededException
      def self.parse(http_resp)
        data = Types::SerialConsoleSessionLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end
  end
end
