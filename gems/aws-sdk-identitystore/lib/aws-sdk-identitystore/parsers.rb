# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Identitystore
  module Parsers

    # Operation Parser for DescribeGroup
    class DescribeGroup
      def self.parse(http_resp)
        data = Types::DescribeGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.group_id = map['GroupId']
        data.display_name = map['DisplayName']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_type = map['ResourceType']
        data.resource_id = map['ResourceId']
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
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
        data.request_id = map['RequestId']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data.request_id = map['RequestId']
        data
      end
    end

    # Operation Parser for DescribeUser
    class DescribeUser
      def self.parse(http_resp)
        data = Types::DescribeUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_name = map['UserName']
        data.user_id = map['UserId']
        data
      end
    end

    # Operation Parser for ListGroups
    class ListGroups
      def self.parse(http_resp)
        data = Types::ListGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.groups = (Parsers::Groups.parse(map['Groups']) unless map['Groups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Groups
      def self.parse(list)
        list.map do |value|
          Parsers::Group.parse(value) unless value.nil?
        end
      end
    end

    class Group
      def self.parse(map)
        data = Types::Group.new
        data.group_id = map['GroupId']
        data.display_name = map['DisplayName']
        return data
      end
    end

    # Operation Parser for ListUsers
    class ListUsers
      def self.parse(http_resp)
        data = Types::ListUsersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.users = (Parsers::Users.parse(map['Users']) unless map['Users'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Users
      def self.parse(list)
        list.map do |value|
          Parsers::User.parse(value) unless value.nil?
        end
      end
    end

    class User
      def self.parse(map)
        data = Types::User.new
        data.user_name = map['UserName']
        data.user_id = map['UserId']
        return data
      end
    end
  end
end
