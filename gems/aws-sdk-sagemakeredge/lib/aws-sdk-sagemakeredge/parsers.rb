# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SagemakerEdge
  module Parsers

    # Operation Parser for GetDeviceRegistration
    class GetDeviceRegistration
      def self.parse(http_resp)
        data = Types::GetDeviceRegistrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.device_registration = map['DeviceRegistration']
        data.cache_ttl = map['CacheTTL']
        data
      end
    end

    # Error Parser for InternalServiceException
    class InternalServiceException
      def self.parse(http_resp)
        data = Types::InternalServiceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for SendHeartbeat
    class SendHeartbeat
      def self.parse(http_resp)
        data = Types::SendHeartbeatOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
