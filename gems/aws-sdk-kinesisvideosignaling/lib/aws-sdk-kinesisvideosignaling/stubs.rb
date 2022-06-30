# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KinesisVideoSignaling
  module Stubs

    # Operation Stubber for GetIceServerConfig
    class GetIceServerConfig
      def self.default(visited=[])
        {
          ice_server_list: Stubs::IceServerList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['IceServerList'] = Stubs::IceServerList.stub(stub[:ice_server_list]) unless stub[:ice_server_list].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IceServerList
    class IceServerList
      def self.default(visited=[])
        return nil if visited.include?('IceServerList')
        visited = visited + ['IceServerList']
        [
          Stubs::IceServer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IceServer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IceServer
    class IceServer
      def self.default(visited=[])
        return nil if visited.include?('IceServer')
        visited = visited + ['IceServer']
        {
          uris: Stubs::Uris.default(visited),
          username: 'username',
          password: 'password',
          ttl: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::IceServer.new
        data = {}
        data['Uris'] = Stubs::Uris.stub(stub[:uris]) unless stub[:uris].nil?
        data['Username'] = stub[:username] unless stub[:username].nil?
        data['Password'] = stub[:password] unless stub[:password].nil?
        data['Ttl'] = stub[:ttl] unless stub[:ttl].nil?
        data
      end
    end

    # List Stubber for Uris
    class Uris
      def self.default(visited=[])
        return nil if visited.include?('Uris')
        visited = visited + ['Uris']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for SendAlexaOfferToMaster
    class SendAlexaOfferToMaster
      def self.default(visited=[])
        {
          answer: 'answer',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Answer'] = stub[:answer] unless stub[:answer].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
