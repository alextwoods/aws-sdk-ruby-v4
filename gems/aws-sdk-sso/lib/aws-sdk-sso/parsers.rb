# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSO
  # @api private
  module Parsers

    class AccountInfo
      def self.parse(map)
        data = Types::AccountInfo.new
        data.account_id = map['accountId'] unless map['accountId'].nil?
        data.account_name = map['accountName'] unless map['accountName'].nil?
        data.email_address = map['emailAddress'] unless map['emailAddress'].nil?
        return data
      end
    end

    class AccountListType
      def self.parse(list)
        data = []
        list.map do |value|
          data << AccountInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    class GetRoleCredentials
      def self.parse(http_resp)
        data = Types::GetRoleCredentialsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.role_credentials = RoleCredentials.parse(map['roleCredentials']) unless map['roleCredentials'].nil?
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp, **kwargs)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        Errors::InvalidRequestException.new(data: data, **kwargs)
      end
    end

    class ListAccountRoles
      def self.parse(http_resp)
        data = Types::ListAccountRolesOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.next_token = map['nextToken'] unless map['nextToken'].nil?
        data.role_list = RoleListType.parse(map['roleList']) unless map['roleList'].nil?
        data
      end
    end

    class ListAccounts
      def self.parse(http_resp)
        data = Types::ListAccountsOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.next_token = map['nextToken'] unless map['nextToken'].nil?
        data.account_list = AccountListType.parse(map['accountList']) unless map['accountList'].nil?
        data
      end
    end

    class Logout
      def self.parse(http_resp)
        data = Types::LogoutOutput.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp, **kwargs)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        Errors::ResourceNotFoundException.new(data: data, **kwargs)
      end
    end

    class RoleCredentials
      def self.parse(map)
        data = Types::RoleCredentials.new
        data.access_key_id = map['accessKeyId'] unless map['accessKeyId'].nil?
        data.secret_access_key = map['secretAccessKey'] unless map['secretAccessKey'].nil?
        data.session_token = map['sessionToken'] unless map['sessionToken'].nil?
        data.expiration = map['expiration'] unless map['expiration'].nil?
        return data
      end
    end

    class RoleInfo
      def self.parse(map)
        data = Types::RoleInfo.new
        data.role_name = map['roleName'] unless map['roleName'].nil?
        data.account_id = map['accountId'] unless map['accountId'].nil?
        return data
      end
    end

    class RoleListType
      def self.parse(list)
        data = []
        list.map do |value|
          data << RoleInfo.parse(value) unless value.nil?
        end
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp, **kwargs)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        Errors::TooManyRequestsException.new(data: data, **kwargs)
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp, **kwargs)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.parse(http_resp.body.read)
        data.message = map['message'] || map['Message'] unless map['message'] || map['Message'].nil?
        Errors::UnauthorizedException.new(data: data, **kwargs)
      end
    end
  end
end
