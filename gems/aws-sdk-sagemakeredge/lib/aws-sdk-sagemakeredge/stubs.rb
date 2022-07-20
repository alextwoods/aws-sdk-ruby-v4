# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SagemakerEdge
  module Stubs

    # Operation Stubber for GetDeviceRegistration
    class GetDeviceRegistration
      def self.default(visited=[])
        {
          device_registration: 'device_registration',
          cache_ttl: 'cache_ttl',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DeviceRegistration'] = stub[:device_registration] unless stub[:device_registration].nil?
        data['CacheTTL'] = stub[:cache_ttl] unless stub[:cache_ttl].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SendHeartbeat
    class SendHeartbeat
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
