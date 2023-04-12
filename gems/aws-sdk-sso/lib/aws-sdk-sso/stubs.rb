# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SSO
  # @api private
  module Stubs

    # Structure Stubber for AccountInfo
    class AccountInfo
      def self.default(visited=[])
        return nil if visited.include?('AccountInfo')
        visited = visited + ['AccountInfo']
        {
          account_id: 'account_id',
          account_name: 'account_name',
          email_address: 'email_address',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountInfo.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['accountName'] = stub[:account_name] unless stub[:account_name].nil?
        data['emailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data
      end
    end

    # List Stubber for AccountListType
    class AccountListType
      def self.default(visited=[])
        return nil if visited.include?('AccountListType')
        visited = visited + ['AccountListType']
        [
          AccountInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AccountInfo.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetRoleCredentials
    class GetRoleCredentials
      def self.default(visited=[])
        {
          role_credentials: RoleCredentials.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['roleCredentials'] = RoleCredentials.stub(stub[:role_credentials]) unless stub[:role_credentials].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListAccountRoles
    class ListAccountRoles
      def self.default(visited=[])
        {
          next_token: 'next_token',
          role_list: RoleListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['roleList'] = RoleListType.stub(stub[:role_list]) unless stub[:role_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListAccounts
    class ListAccounts
      def self.default(visited=[])
        {
          next_token: 'next_token',
          account_list: AccountListType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['accountList'] = AccountListType.stub(stub[:account_list]) unless stub[:account_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for Logout
    class Logout
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Structure Stubber for RoleCredentials
    class RoleCredentials
      def self.default(visited=[])
        return nil if visited.include?('RoleCredentials')
        visited = visited + ['RoleCredentials']
        {
          access_key_id: 'access_key_id',
          secret_access_key: 'secret_access_key',
          session_token: 'session_token',
          expiration: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RoleCredentials.new
        data = {}
        data['accessKeyId'] = stub[:access_key_id] unless stub[:access_key_id].nil?
        data['secretAccessKey'] = stub[:secret_access_key] unless stub[:secret_access_key].nil?
        data['sessionToken'] = stub[:session_token] unless stub[:session_token].nil?
        data['expiration'] = stub[:expiration] unless stub[:expiration].nil?
        data
      end
    end

    # Structure Stubber for RoleInfo
    class RoleInfo
      def self.default(visited=[])
        return nil if visited.include?('RoleInfo')
        visited = visited + ['RoleInfo']
        {
          role_name: 'role_name',
          account_id: 'account_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RoleInfo.new
        data = {}
        data['roleName'] = stub[:role_name] unless stub[:role_name].nil?
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data
      end
    end

    # List Stubber for RoleListType
    class RoleListType
      def self.default(visited=[])
        return nil if visited.include?('RoleListType')
        visited = visited + ['RoleListType']
        [
          RoleInfo.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RoleInfo.stub(element) unless element.nil?
        end
        data
      end
    end
  end
end
