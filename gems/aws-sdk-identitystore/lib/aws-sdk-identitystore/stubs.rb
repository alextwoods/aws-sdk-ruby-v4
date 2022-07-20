# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Identitystore
  module Stubs

    # Operation Stubber for DescribeGroup
    class DescribeGroup
      def self.default(visited=[])
        {
          group_id: 'group_id',
          display_name: 'display_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeUser
    class DescribeUser
      def self.default(visited=[])
        {
          user_name: 'user_name',
          user_id: 'user_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListGroups
    class ListGroups
      def self.default(visited=[])
        {
          groups: Groups.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Groups'] = Stubs::Groups.stub(stub[:groups]) unless stub[:groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Groups
    class Groups
      def self.default(visited=[])
        return nil if visited.include?('Groups')
        visited = visited + ['Groups']
        [
          Group.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Group.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Group
    class Group
      def self.default(visited=[])
        return nil if visited.include?('Group')
        visited = visited + ['Group']
        {
          group_id: 'group_id',
          display_name: 'display_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Group.new
        data = {}
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data
      end
    end

    # Operation Stubber for ListUsers
    class ListUsers
      def self.default(visited=[])
        {
          users: Users.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Users'] = Stubs::Users.stub(stub[:users]) unless stub[:users].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Users
    class Users
      def self.default(visited=[])
        return nil if visited.include?('Users')
        visited = visited + ['Users']
        [
          User.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::User.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for User
    class User
      def self.default(visited=[])
        return nil if visited.include?('User')
        visited = visited + ['User']
        {
          user_name: 'user_name',
          user_id: 'user_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::User.new
        data = {}
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data
      end
    end
  end
end
