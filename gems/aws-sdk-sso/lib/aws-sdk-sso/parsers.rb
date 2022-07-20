# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSO
  module Parsers

    # Operation Parser for GetRoleCredentials
    class GetRoleCredentials
      def self.parse(http_resp)
        data = Types::GetRoleCredentialsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.role_credentials = (Parsers::RoleCredentials.parse(map['roleCredentials']) unless map['roleCredentials'].nil?)
        data
      end
    end

    class RoleCredentials
      def self.parse(map)
        data = Types::RoleCredentials.new
        data.access_key_id = map['accessKeyId']
        data.secret_access_key = map['secretAccessKey']
        data.session_token = map['sessionToken']
        data.expiration = map['expiration']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for ListAccountRoles
    class ListAccountRoles
      def self.parse(http_resp)
        data = Types::ListAccountRolesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.role_list = (Parsers::RoleListType.parse(map['roleList']) unless map['roleList'].nil?)
        data
      end
    end

    class RoleListType
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RoleInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class RoleInfo
      def self.parse(map)
        data = Types::RoleInfo.new
        data.role_name = map['roleName']
        data.account_id = map['accountId']
        return data
      end
    end

    # Operation Parser for ListAccounts
    class ListAccounts
      def self.parse(http_resp)
        data = Types::ListAccountsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.account_list = (Parsers::AccountListType.parse(map['accountList']) unless map['accountList'].nil?)
        data
      end
    end

    class AccountListType
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AccountInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class AccountInfo
      def self.parse(map)
        data = Types::AccountInfo.new
        data.account_id = map['accountId']
        data.account_name = map['accountName']
        data.email_address = map['emailAddress']
        return data
      end
    end

    # Operation Parser for Logout
    class Logout
      def self.parse(http_resp)
        data = Types::LogoutOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
