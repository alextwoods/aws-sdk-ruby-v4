# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeStar
  module Parsers

    # Operation Parser for AssociateTeamMember
    class AssociateTeamMember
      def self.parse(http_resp)
        data = Types::AssociateTeamMemberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.client_request_token = map['clientRequestToken']
        data
      end
    end

    # Error Parser for ProjectConfigurationException
    class ProjectConfigurationException
      def self.parse(http_resp)
        data = Types::ProjectConfigurationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ProjectNotFoundException
    class ProjectNotFoundException
      def self.parse(http_resp)
        data = Types::ProjectNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidServiceRoleException
    class InvalidServiceRoleException
      def self.parse(http_resp)
        data = Types::InvalidServiceRoleException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
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
        data.message = map['message']
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TeamMemberAlreadyAssociatedException
    class TeamMemberAlreadyAssociatedException
      def self.parse(http_resp)
        data = Types::TeamMemberAlreadyAssociatedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateProject
    class CreateProject
      def self.parse(http_resp)
        data = Types::CreateProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['id']
        data.arn = map['arn']
        data.client_request_token = map['clientRequestToken']
        data.project_template_id = map['projectTemplateId']
        data
      end
    end

    # Error Parser for ProjectAlreadyExistsException
    class ProjectAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ProjectAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ProjectCreationFailedException
    class ProjectCreationFailedException
      def self.parse(http_resp)
        data = Types::ProjectCreationFailedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateUserProfile
    class CreateUserProfile
      def self.parse(http_resp)
        data = Types::CreateUserProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_arn = map['userArn']
        data.display_name = map['displayName']
        data.email_address = map['emailAddress']
        data.ssh_public_key = map['sshPublicKey']
        data.created_timestamp = Time.at(map['createdTimestamp'].to_i) if map['createdTimestamp']
        data.last_modified_timestamp = Time.at(map['lastModifiedTimestamp'].to_i) if map['lastModifiedTimestamp']
        data
      end
    end

    # Error Parser for UserProfileAlreadyExistsException
    class UserProfileAlreadyExistsException
      def self.parse(http_resp)
        data = Types::UserProfileAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteProject
    class DeleteProject
      def self.parse(http_resp)
        data = Types::DeleteProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stack_id = map['stackId']
        data.project_arn = map['projectArn']
        data
      end
    end

    # Operation Parser for DeleteUserProfile
    class DeleteUserProfile
      def self.parse(http_resp)
        data = Types::DeleteUserProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_arn = map['userArn']
        data
      end
    end

    # Operation Parser for DescribeProject
    class DescribeProject
      def self.parse(http_resp)
        data = Types::DescribeProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['name']
        data.id = map['id']
        data.arn = map['arn']
        data.description = map['description']
        data.client_request_token = map['clientRequestToken']
        data.created_time_stamp = Time.at(map['createdTimeStamp'].to_i) if map['createdTimeStamp']
        data.stack_id = map['stackId']
        data.project_template_id = map['projectTemplateId']
        data.status = (Parsers::ProjectStatus.parse(map['status']) unless map['status'].nil?)
        data
      end
    end

    class ProjectStatus
      def self.parse(map)
        data = Types::ProjectStatus.new
        data.state = map['state']
        data.reason = map['reason']
        return data
      end
    end

    # Operation Parser for DescribeUserProfile
    class DescribeUserProfile
      def self.parse(http_resp)
        data = Types::DescribeUserProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_arn = map['userArn']
        data.display_name = map['displayName']
        data.email_address = map['emailAddress']
        data.ssh_public_key = map['sshPublicKey']
        data.created_timestamp = Time.at(map['createdTimestamp'].to_i) if map['createdTimestamp']
        data.last_modified_timestamp = Time.at(map['lastModifiedTimestamp'].to_i) if map['lastModifiedTimestamp']
        data
      end
    end

    # Error Parser for UserProfileNotFoundException
    class UserProfileNotFoundException
      def self.parse(http_resp)
        data = Types::UserProfileNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DisassociateTeamMember
    class DisassociateTeamMember
      def self.parse(http_resp)
        data = Types::DisassociateTeamMemberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ListProjects
    class ListProjects
      def self.parse(http_resp)
        data = Types::ListProjectsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.projects = (Parsers::ProjectsList.parse(map['projects']) unless map['projects'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ProjectsList
      def self.parse(list)
        list.map do |value|
          Parsers::ProjectSummary.parse(value) unless value.nil?
        end
      end
    end

    class ProjectSummary
      def self.parse(map)
        data = Types::ProjectSummary.new
        data.project_id = map['projectId']
        data.project_arn = map['projectArn']
        return data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListResources
    class ListResources
      def self.parse(http_resp)
        data = Types::ListResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resources = (Parsers::ResourcesResult.parse(map['resources']) unless map['resources'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ResourcesResult
      def self.parse(list)
        list.map do |value|
          Parsers::Resource.parse(value) unless value.nil?
        end
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.id = map['id']
        return data
      end
    end

    # Operation Parser for ListTagsForProject
    class ListTagsForProject
      def self.parse(http_resp)
        data = Types::ListTagsForProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTeamMembers
    class ListTeamMembers
      def self.parse(http_resp)
        data = Types::ListTeamMembersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.team_members = (Parsers::TeamMemberResult.parse(map['teamMembers']) unless map['teamMembers'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TeamMemberResult
      def self.parse(list)
        list.map do |value|
          Parsers::TeamMember.parse(value) unless value.nil?
        end
      end
    end

    class TeamMember
      def self.parse(map)
        data = Types::TeamMember.new
        data.user_arn = map['userArn']
        data.project_role = map['projectRole']
        data.remote_access_allowed = map['remoteAccessAllowed']
        return data
      end
    end

    # Operation Parser for ListUserProfiles
    class ListUserProfiles
      def self.parse(http_resp)
        data = Types::ListUserProfilesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_profiles = (Parsers::UserProfilesList.parse(map['userProfiles']) unless map['userProfiles'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class UserProfilesList
      def self.parse(list)
        list.map do |value|
          Parsers::UserProfileSummary.parse(value) unless value.nil?
        end
      end
    end

    class UserProfileSummary
      def self.parse(map)
        data = Types::UserProfileSummary.new
        data.user_arn = map['userArn']
        data.display_name = map['displayName']
        data.email_address = map['emailAddress']
        data.ssh_public_key = map['sshPublicKey']
        return data
      end
    end

    # Operation Parser for TagProject
    class TagProject
      def self.parse(http_resp)
        data = Types::TagProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UntagProject
    class UntagProject
      def self.parse(http_resp)
        data = Types::UntagProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateProject
    class UpdateProject
      def self.parse(http_resp)
        data = Types::UpdateProjectOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateTeamMember
    class UpdateTeamMember
      def self.parse(http_resp)
        data = Types::UpdateTeamMemberOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_arn = map['userArn']
        data.project_role = map['projectRole']
        data.remote_access_allowed = map['remoteAccessAllowed']
        data
      end
    end

    # Error Parser for TeamMemberNotFoundException
    class TeamMemberNotFoundException
      def self.parse(http_resp)
        data = Types::TeamMemberNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdateUserProfile
    class UpdateUserProfile
      def self.parse(http_resp)
        data = Types::UpdateUserProfileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_arn = map['userArn']
        data.display_name = map['displayName']
        data.email_address = map['emailAddress']
        data.ssh_public_key = map['sshPublicKey']
        data.created_timestamp = Time.at(map['createdTimestamp'].to_i) if map['createdTimestamp']
        data.last_modified_timestamp = Time.at(map['lastModifiedTimestamp'].to_i) if map['lastModifiedTimestamp']
        data
      end
    end
  end
end
