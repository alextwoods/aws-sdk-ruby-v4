# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::EC2InstanceConnect
  module Builders

    # Operation Builder for SendSSHPublicKey
    class SendSSHPublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEC2InstanceConnectService.SendSSHPublicKey'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['InstanceOSUser'] = input[:instance_os_user] unless input[:instance_os_user].nil?
        data['SSHPublicKey'] = input[:ssh_public_key] unless input[:ssh_public_key].nil?
        data['AvailabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendSerialConsoleSSHPublicKey
    class SendSerialConsoleSSHPublicKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSEC2InstanceConnectService.SendSerialConsoleSSHPublicKey'
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['SerialPort'] = input[:serial_port] unless input[:serial_port].nil?
        data['SSHPublicKey'] = input[:ssh_public_key] unless input[:ssh_public_key].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
