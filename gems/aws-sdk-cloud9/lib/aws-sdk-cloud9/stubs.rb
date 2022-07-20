# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Cloud9
  module Stubs

    # Operation Stubber for CreateEnvironmentEC2
    class CreateEnvironmentEC2
      def self.default(visited=[])
        {
          environment_id: 'environment_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateEnvironmentMembership
    class CreateEnvironmentMembership
      def self.default(visited=[])
        {
          membership: EnvironmentMember.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['membership'] = EnvironmentMember.stub(stub[:membership]) unless stub[:membership].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for EnvironmentMember
    class EnvironmentMember
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentMember')
        visited = visited + ['EnvironmentMember']
        {
          permissions: 'permissions',
          user_id: 'user_id',
          user_arn: 'user_arn',
          environment_id: 'environment_id',
          last_access: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentMember.new
        data = {}
        data['permissions'] = stub[:permissions] unless stub[:permissions].nil?
        data['userId'] = stub[:user_id] unless stub[:user_id].nil?
        data['userArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        data['environmentId'] = stub[:environment_id] unless stub[:environment_id].nil?
        data['lastAccess'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_access]).to_i unless stub[:last_access].nil?
        data
      end
    end

    # Operation Stubber for DeleteEnvironment
    class DeleteEnvironment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEnvironmentMembership
    class DeleteEnvironmentMembership
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeEnvironmentMemberships
    class DescribeEnvironmentMemberships
      def self.default(visited=[])
        {
          memberships: EnvironmentMembersList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['memberships'] = EnvironmentMembersList.stub(stub[:memberships]) unless stub[:memberships].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EnvironmentMembersList
    class EnvironmentMembersList
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentMembersList')
        visited = visited + ['EnvironmentMembersList']
        [
          EnvironmentMember.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EnvironmentMember.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeEnvironmentStatus
    class DescribeEnvironmentStatus
      def self.default(visited=[])
        {
          status: 'status',
          message: 'message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeEnvironments
    class DescribeEnvironments
      def self.default(visited=[])
        {
          environments: EnvironmentList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['environments'] = EnvironmentList.stub(stub[:environments]) unless stub[:environments].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EnvironmentList
    class EnvironmentList
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentList')
        visited = visited + ['EnvironmentList']
        [
          Environment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Environment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Environment
    class Environment
      def self.default(visited=[])
        return nil if visited.include?('Environment')
        visited = visited + ['Environment']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          type: 'type',
          connection_type: 'connection_type',
          arn: 'arn',
          owner_arn: 'owner_arn',
          lifecycle: EnvironmentLifecycle.default(visited),
          managed_credentials_status: 'managed_credentials_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::Environment.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['connectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['ownerArn'] = stub[:owner_arn] unless stub[:owner_arn].nil?
        data['lifecycle'] = EnvironmentLifecycle.stub(stub[:lifecycle]) unless stub[:lifecycle].nil?
        data['managedCredentialsStatus'] = stub[:managed_credentials_status] unless stub[:managed_credentials_status].nil?
        data
      end
    end

    # Structure Stubber for EnvironmentLifecycle
    class EnvironmentLifecycle
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentLifecycle')
        visited = visited + ['EnvironmentLifecycle']
        {
          status: 'status',
          reason: 'reason',
          failure_resource: 'failure_resource',
        }
      end

      def self.stub(stub)
        stub ||= Types::EnvironmentLifecycle.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data['failureResource'] = stub[:failure_resource] unless stub[:failure_resource].nil?
        data
      end
    end

    # Operation Stubber for ListEnvironments
    class ListEnvironments
      def self.default(visited=[])
        {
          next_token: 'next_token',
          environment_ids: EnvironmentIdList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['environmentIds'] = EnvironmentIdList.stub(stub[:environment_ids]) unless stub[:environment_ids].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EnvironmentIdList
    class EnvironmentIdList
      def self.default(visited=[])
        return nil if visited.include?('EnvironmentIdList')
        visited = visited + ['EnvironmentIdList']
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

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEnvironment
    class UpdateEnvironment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEnvironmentMembership
    class UpdateEnvironmentMembership
      def self.default(visited=[])
        {
          membership: EnvironmentMember.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['membership'] = EnvironmentMember.stub(stub[:membership]) unless stub[:membership].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
