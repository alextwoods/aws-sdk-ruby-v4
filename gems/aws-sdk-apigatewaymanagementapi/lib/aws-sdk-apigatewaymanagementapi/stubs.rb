# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ApiGatewayManagementApi
  module Stubs

    # Operation Stubber for DeleteConnection
    class DeleteConnection
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetConnection
    class GetConnection
      def self.default(visited=[])
        {
          connected_at: Time.now,
          identity: Identity.default(visited),
          last_active_at: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['connectedAt'] = Hearth::TimeHelper.to_date_time(stub[:connected_at]) unless stub[:connected_at].nil?
        data['identity'] = Identity.stub(stub[:identity]) unless stub[:identity].nil?
        data['lastActiveAt'] = Hearth::TimeHelper.to_date_time(stub[:last_active_at]) unless stub[:last_active_at].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Identity
    class Identity
      def self.default(visited=[])
        return nil if visited.include?('Identity')
        visited = visited + ['Identity']
        {
          source_ip: 'source_ip',
          user_agent: 'user_agent',
        }
      end

      def self.stub(stub)
        stub ||= Types::Identity.new
        data = {}
        data['sourceIp'] = stub[:source_ip] unless stub[:source_ip].nil?
        data['userAgent'] = stub[:user_agent] unless stub[:user_agent].nil?
        data
      end
    end

    # Operation Stubber for PostToConnection
    class PostToConnection
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
