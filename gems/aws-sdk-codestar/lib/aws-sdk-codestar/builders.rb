# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeStar
  module Builders

    # Operation Builder for AssociateTeamMember
    class AssociateTeamMember
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.AssociateTeamMember'
        data = {}
        data['projectId'] = input[:project_id] unless input[:project_id].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['userArn'] = input[:user_arn] unless input[:user_arn].nil?
        data['projectRole'] = input[:project_role] unless input[:project_role].nil?
        data['remoteAccessAllowed'] = input[:remote_access_allowed] unless input[:remote_access_allowed].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateProject
    class CreateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.CreateProject'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['id'] = input[:id] unless input[:id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['sourceCode'] = Builders::SourceCode.build(input[:source_code]) unless input[:source_code].nil?
        data['toolchain'] = Builders::Toolchain.build(input[:toolchain]) unless input[:toolchain].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Toolchain
    class Toolchain
      def self.build(input)
        data = {}
        data['source'] = Builders::ToolchainSource.build(input[:source]) unless input[:source].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['stackParameters'] = Builders::TemplateParameterMap.build(input[:stack_parameters]) unless input[:stack_parameters].nil?
        data
      end
    end

    # Map Builder for TemplateParameterMap
    class TemplateParameterMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ToolchainSource
    class ToolchainSource
      def self.build(input)
        data = {}
        data['s3'] = Builders::S3Location.build(input[:s3]) unless input[:s3].nil?
        data
      end
    end

    # Structure Builder for S3Location
    class S3Location
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['bucketKey'] = input[:bucket_key] unless input[:bucket_key].nil?
        data
      end
    end

    # List Builder for SourceCode
    class SourceCode
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Code.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Code
    class Code
      def self.build(input)
        data = {}
        data['source'] = Builders::CodeSource.build(input[:source]) unless input[:source].nil?
        data['destination'] = Builders::CodeDestination.build(input[:destination]) unless input[:destination].nil?
        data
      end
    end

    # Structure Builder for CodeDestination
    class CodeDestination
      def self.build(input)
        data = {}
        data['codeCommit'] = Builders::CodeCommitCodeDestination.build(input[:code_commit]) unless input[:code_commit].nil?
        data['gitHub'] = Builders::GitHubCodeDestination.build(input[:git_hub]) unless input[:git_hub].nil?
        data
      end
    end

    # Structure Builder for GitHubCodeDestination
    class GitHubCodeDestination
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['owner'] = input[:owner] unless input[:owner].nil?
        data['privateRepository'] = input[:private_repository] unless input[:private_repository].nil?
        data['issuesEnabled'] = input[:issues_enabled] unless input[:issues_enabled].nil?
        data['token'] = input[:token] unless input[:token].nil?
        data
      end
    end

    # Structure Builder for CodeCommitCodeDestination
    class CodeCommitCodeDestination
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Structure Builder for CodeSource
    class CodeSource
      def self.build(input)
        data = {}
        data['s3'] = Builders::S3Location.build(input[:s3]) unless input[:s3].nil?
        data
      end
    end

    # Operation Builder for CreateUserProfile
    class CreateUserProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.CreateUserProfile'
        data = {}
        data['userArn'] = input[:user_arn] unless input[:user_arn].nil?
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        data['emailAddress'] = input[:email_address] unless input[:email_address].nil?
        data['sshPublicKey'] = input[:ssh_public_key] unless input[:ssh_public_key].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteProject
    class DeleteProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.DeleteProject'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['deleteStack'] = input[:delete_stack] unless input[:delete_stack].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUserProfile
    class DeleteUserProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.DeleteUserProfile'
        data = {}
        data['userArn'] = input[:user_arn] unless input[:user_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeProject
    class DescribeProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.DescribeProject'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUserProfile
    class DescribeUserProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.DescribeUserProfile'
        data = {}
        data['userArn'] = input[:user_arn] unless input[:user_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateTeamMember
    class DisassociateTeamMember
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.DisassociateTeamMember'
        data = {}
        data['projectId'] = input[:project_id] unless input[:project_id].nil?
        data['userArn'] = input[:user_arn] unless input[:user_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListProjects
    class ListProjects
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.ListProjects'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResources
    class ListResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.ListResources'
        data = {}
        data['projectId'] = input[:project_id] unless input[:project_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForProject
    class ListTagsForProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.ListTagsForProject'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTeamMembers
    class ListTeamMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.ListTeamMembers'
        data = {}
        data['projectId'] = input[:project_id] unless input[:project_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListUserProfiles
    class ListUserProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.ListUserProfiles'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagProject
    class TagProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.TagProject'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagProject
    class UntagProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.UntagProject'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['tags'] = Builders::TagKeys.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeys
    class TagKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateProject
    class UpdateProject
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.UpdateProject'
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTeamMember
    class UpdateTeamMember
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.UpdateTeamMember'
        data = {}
        data['projectId'] = input[:project_id] unless input[:project_id].nil?
        data['userArn'] = input[:user_arn] unless input[:user_arn].nil?
        data['projectRole'] = input[:project_role] unless input[:project_role].nil?
        data['remoteAccessAllowed'] = input[:remote_access_allowed] unless input[:remote_access_allowed].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUserProfile
    class UpdateUserProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeStar_20170419.UpdateUserProfile'
        data = {}
        data['userArn'] = input[:user_arn] unless input[:user_arn].nil?
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        data['emailAddress'] = input[:email_address] unless input[:email_address].nil?
        data['sshPublicKey'] = input[:ssh_public_key] unless input[:ssh_public_key].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
