# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeStar
  module Stubs

    # Operation Stubber for AssociateTeamMember
    class AssociateTeamMember
      def self.default(visited=[])
        {
          client_request_token: 'client_request_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateProject
    class CreateProject
      def self.default(visited=[])
        {
          id: 'id',
          arn: 'arn',
          client_request_token: 'client_request_token',
          project_template_id: 'project_template_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['projectTemplateId'] = stub[:project_template_id] unless stub[:project_template_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateUserProfile
    class CreateUserProfile
      def self.default(visited=[])
        {
          user_arn: 'user_arn',
          display_name: 'display_name',
          email_address: 'email_address',
          ssh_public_key: 'ssh_public_key',
          created_timestamp: Time.now,
          last_modified_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['userArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['emailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['sshPublicKey'] = stub[:ssh_public_key] unless stub[:ssh_public_key].nil?
        data['createdTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['lastModifiedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_timestamp]).to_i unless stub[:last_modified_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteProject
    class DeleteProject
      def self.default(visited=[])
        {
          stack_id: 'stack_id',
          project_arn: 'project_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['stackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data['projectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUserProfile
    class DeleteUserProfile
      def self.default(visited=[])
        {
          user_arn: 'user_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['userArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeProject
    class DescribeProject
      def self.default(visited=[])
        {
          name: 'name',
          id: 'id',
          arn: 'arn',
          description: 'description',
          client_request_token: 'client_request_token',
          created_time_stamp: Time.now,
          stack_id: 'stack_id',
          project_template_id: 'project_template_id',
          status: ProjectStatus.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['createdTimeStamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time_stamp]).to_i unless stub[:created_time_stamp].nil?
        data['stackId'] = stub[:stack_id] unless stub[:stack_id].nil?
        data['projectTemplateId'] = stub[:project_template_id] unless stub[:project_template_id].nil?
        data['status'] = Stubs::ProjectStatus.stub(stub[:status]) unless stub[:status].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ProjectStatus
    class ProjectStatus
      def self.default(visited=[])
        return nil if visited.include?('ProjectStatus')
        visited = visited + ['ProjectStatus']
        {
          state: 'state',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectStatus.new
        data = {}
        data['state'] = stub[:state] unless stub[:state].nil?
        data['reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # Operation Stubber for DescribeUserProfile
    class DescribeUserProfile
      def self.default(visited=[])
        {
          user_arn: 'user_arn',
          display_name: 'display_name',
          email_address: 'email_address',
          ssh_public_key: 'ssh_public_key',
          created_timestamp: Time.now,
          last_modified_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['userArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['emailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['sshPublicKey'] = stub[:ssh_public_key] unless stub[:ssh_public_key].nil?
        data['createdTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['lastModifiedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_timestamp]).to_i unless stub[:last_modified_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateTeamMember
    class DisassociateTeamMember
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListProjects
    class ListProjects
      def self.default(visited=[])
        {
          projects: ProjectsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['projects'] = Stubs::ProjectsList.stub(stub[:projects]) unless stub[:projects].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ProjectsList
    class ProjectsList
      def self.default(visited=[])
        return nil if visited.include?('ProjectsList')
        visited = visited + ['ProjectsList']
        [
          ProjectSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProjectSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProjectSummary
    class ProjectSummary
      def self.default(visited=[])
        return nil if visited.include?('ProjectSummary')
        visited = visited + ['ProjectSummary']
        {
          project_id: 'project_id',
          project_arn: 'project_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProjectSummary.new
        data = {}
        data['projectId'] = stub[:project_id] unless stub[:project_id].nil?
        data['projectArn'] = stub[:project_arn] unless stub[:project_arn].nil?
        data
      end
    end

    # Operation Stubber for ListResources
    class ListResources
      def self.default(visited=[])
        {
          resources: ResourcesResult.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['resources'] = Stubs::ResourcesResult.stub(stub[:resources]) unless stub[:resources].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourcesResult
    class ResourcesResult
      def self.default(visited=[])
        return nil if visited.include?('ResourcesResult')
        visited = visited + ['ResourcesResult']
        [
          Resource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Resource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          id: 'id',
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForProject
    class ListTagsForProject
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTeamMembers
    class ListTeamMembers
      def self.default(visited=[])
        {
          team_members: TeamMemberResult.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['teamMembers'] = Stubs::TeamMemberResult.stub(stub[:team_members]) unless stub[:team_members].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TeamMemberResult
    class TeamMemberResult
      def self.default(visited=[])
        return nil if visited.include?('TeamMemberResult')
        visited = visited + ['TeamMemberResult']
        [
          TeamMember.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TeamMember.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TeamMember
    class TeamMember
      def self.default(visited=[])
        return nil if visited.include?('TeamMember')
        visited = visited + ['TeamMember']
        {
          user_arn: 'user_arn',
          project_role: 'project_role',
          remote_access_allowed: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::TeamMember.new
        data = {}
        data['userArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        data['projectRole'] = stub[:project_role] unless stub[:project_role].nil?
        data['remoteAccessAllowed'] = stub[:remote_access_allowed] unless stub[:remote_access_allowed].nil?
        data
      end
    end

    # Operation Stubber for ListUserProfiles
    class ListUserProfiles
      def self.default(visited=[])
        {
          user_profiles: UserProfilesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['userProfiles'] = Stubs::UserProfilesList.stub(stub[:user_profiles]) unless stub[:user_profiles].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UserProfilesList
    class UserProfilesList
      def self.default(visited=[])
        return nil if visited.include?('UserProfilesList')
        visited = visited + ['UserProfilesList']
        [
          UserProfileSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UserProfileSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserProfileSummary
    class UserProfileSummary
      def self.default(visited=[])
        return nil if visited.include?('UserProfileSummary')
        visited = visited + ['UserProfileSummary']
        {
          user_arn: 'user_arn',
          display_name: 'display_name',
          email_address: 'email_address',
          ssh_public_key: 'ssh_public_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserProfileSummary.new
        data = {}
        data['userArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['emailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['sshPublicKey'] = stub[:ssh_public_key] unless stub[:ssh_public_key].nil?
        data
      end
    end

    # Operation Stubber for TagProject
    class TagProject
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagProject
    class UntagProject
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateProject
    class UpdateProject
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateTeamMember
    class UpdateTeamMember
      def self.default(visited=[])
        {
          user_arn: 'user_arn',
          project_role: 'project_role',
          remote_access_allowed: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['userArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        data['projectRole'] = stub[:project_role] unless stub[:project_role].nil?
        data['remoteAccessAllowed'] = stub[:remote_access_allowed] unless stub[:remote_access_allowed].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateUserProfile
    class UpdateUserProfile
      def self.default(visited=[])
        {
          user_arn: 'user_arn',
          display_name: 'display_name',
          email_address: 'email_address',
          ssh_public_key: 'ssh_public_key',
          created_timestamp: Time.now,
          last_modified_timestamp: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['userArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['emailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['sshPublicKey'] = stub[:ssh_public_key] unless stub[:ssh_public_key].nil?
        data['createdTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_timestamp]).to_i unless stub[:created_timestamp].nil?
        data['lastModifiedTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_timestamp]).to_i unless stub[:last_modified_timestamp].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
