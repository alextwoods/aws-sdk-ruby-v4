# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EC2InstanceConnect
  module Stubs

    # Operation Stubber for SendSSHPublicKey
    class SendSSHPublicKey
      def self.default(visited=[])
        {
          request_id: 'request_id',
          success: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Success'] = stub[:success] unless stub[:success].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SendSerialConsoleSSHPublicKey
    class SendSerialConsoleSSHPublicKey
      def self.default(visited=[])
        {
          request_id: 'request_id',
          success: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Success'] = stub[:success] unless stub[:success].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
