# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CodeStar
  module Params

    module AssociateTeamMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTeamMemberInput, context: context)
        type = Types::AssociateTeamMemberInput.new
        type.project_id = params[:project_id]
        type.client_request_token = params[:client_request_token]
        type.user_arn = params[:user_arn]
        type.project_role = params[:project_role]
        type.remote_access_allowed = params[:remote_access_allowed]
        type
      end
    end

    module AssociateTeamMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateTeamMemberOutput, context: context)
        type = Types::AssociateTeamMemberOutput.new
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module Code
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Code, context: context)
        type = Types::Code.new
        type.source = CodeSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.destination = CodeDestination.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type
      end
    end

    module CodeCommitCodeDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeCommitCodeDestination, context: context)
        type = Types::CodeCommitCodeDestination.new
        type.name = params[:name]
        type
      end
    end

    module CodeDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeDestination, context: context)
        type = Types::CodeDestination.new
        type.code_commit = CodeCommitCodeDestination.build(params[:code_commit], context: "#{context}[:code_commit]") unless params[:code_commit].nil?
        type.git_hub = GitHubCodeDestination.build(params[:git_hub], context: "#{context}[:git_hub]") unless params[:git_hub].nil?
        type
      end
    end

    module CodeSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeSource, context: context)
        type = Types::CodeSource.new
        type.s3 = S3Location.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module CreateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectInput, context: context)
        type = Types::CreateProjectInput.new
        type.name = params[:name]
        type.id = params[:id]
        type.description = params[:description]
        type.client_request_token = params[:client_request_token]
        type.source_code = SourceCode.build(params[:source_code], context: "#{context}[:source_code]") unless params[:source_code].nil?
        type.toolchain = Toolchain.build(params[:toolchain], context: "#{context}[:toolchain]") unless params[:toolchain].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProjectOutput, context: context)
        type = Types::CreateProjectOutput.new
        type.id = params[:id]
        type.arn = params[:arn]
        type.client_request_token = params[:client_request_token]
        type.project_template_id = params[:project_template_id]
        type
      end
    end

    module CreateUserProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserProfileInput, context: context)
        type = Types::CreateUserProfileInput.new
        type.user_arn = params[:user_arn]
        type.display_name = params[:display_name]
        type.email_address = params[:email_address]
        type.ssh_public_key = params[:ssh_public_key]
        type
      end
    end

    module CreateUserProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUserProfileOutput, context: context)
        type = Types::CreateUserProfileOutput.new
        type.user_arn = params[:user_arn]
        type.display_name = params[:display_name]
        type.email_address = params[:email_address]
        type.ssh_public_key = params[:ssh_public_key]
        type.created_timestamp = params[:created_timestamp]
        type.last_modified_timestamp = params[:last_modified_timestamp]
        type
      end
    end

    module DeleteProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectInput, context: context)
        type = Types::DeleteProjectInput.new
        type.id = params[:id]
        type.client_request_token = params[:client_request_token]
        type.delete_stack = params[:delete_stack]
        type
      end
    end

    module DeleteProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProjectOutput, context: context)
        type = Types::DeleteProjectOutput.new
        type.stack_id = params[:stack_id]
        type.project_arn = params[:project_arn]
        type
      end
    end

    module DeleteUserProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserProfileInput, context: context)
        type = Types::DeleteUserProfileInput.new
        type.user_arn = params[:user_arn]
        type
      end
    end

    module DeleteUserProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUserProfileOutput, context: context)
        type = Types::DeleteUserProfileOutput.new
        type.user_arn = params[:user_arn]
        type
      end
    end

    module DescribeProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectInput, context: context)
        type = Types::DescribeProjectInput.new
        type.id = params[:id]
        type
      end
    end

    module DescribeProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeProjectOutput, context: context)
        type = Types::DescribeProjectOutput.new
        type.name = params[:name]
        type.id = params[:id]
        type.arn = params[:arn]
        type.description = params[:description]
        type.client_request_token = params[:client_request_token]
        type.created_time_stamp = params[:created_time_stamp]
        type.stack_id = params[:stack_id]
        type.project_template_id = params[:project_template_id]
        type.status = ProjectStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type
      end
    end

    module DescribeUserProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserProfileInput, context: context)
        type = Types::DescribeUserProfileInput.new
        type.user_arn = params[:user_arn]
        type
      end
    end

    module DescribeUserProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeUserProfileOutput, context: context)
        type = Types::DescribeUserProfileOutput.new
        type.user_arn = params[:user_arn]
        type.display_name = params[:display_name]
        type.email_address = params[:email_address]
        type.ssh_public_key = params[:ssh_public_key]
        type.created_timestamp = params[:created_timestamp]
        type.last_modified_timestamp = params[:last_modified_timestamp]
        type
      end
    end

    module DisassociateTeamMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTeamMemberInput, context: context)
        type = Types::DisassociateTeamMemberInput.new
        type.project_id = params[:project_id]
        type.user_arn = params[:user_arn]
        type
      end
    end

    module DisassociateTeamMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateTeamMemberOutput, context: context)
        type = Types::DisassociateTeamMemberOutput.new
        type
      end
    end

    module GitHubCodeDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GitHubCodeDestination, context: context)
        type = Types::GitHubCodeDestination.new
        type.name = params[:name]
        type.description = params[:description]
        type.type = params[:type]
        type.owner = params[:owner]
        type.private_repository = params[:private_repository]
        type.issues_enabled = params[:issues_enabled]
        type.token = params[:token]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidServiceRoleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidServiceRoleException, context: context)
        type = Types::InvalidServiceRoleException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListProjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsInput, context: context)
        type = Types::ListProjectsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProjectsOutput, context: context)
        type = Types::ListProjectsOutput.new
        type.projects = ProjectsList.build(params[:projects], context: "#{context}[:projects]") unless params[:projects].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesInput, context: context)
        type = Types::ListResourcesInput.new
        type.project_id = params[:project_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesOutput, context: context)
        type = Types::ListResourcesOutput.new
        type.resources = ResourcesResult.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForProjectInput, context: context)
        type = Types::ListTagsForProjectInput.new
        type.id = params[:id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTagsForProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForProjectOutput, context: context)
        type = Types::ListTagsForProjectOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTeamMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTeamMembersInput, context: context)
        type = Types::ListTeamMembersInput.new
        type.project_id = params[:project_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTeamMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTeamMembersOutput, context: context)
        type = Types::ListTeamMembersOutput.new
        type.team_members = TeamMemberResult.build(params[:team_members], context: "#{context}[:team_members]") unless params[:team_members].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListUserProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserProfilesInput, context: context)
        type = Types::ListUserProfilesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListUserProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListUserProfilesOutput, context: context)
        type = Types::ListUserProfilesOutput.new
        type.user_profiles = UserProfilesList.build(params[:user_profiles], context: "#{context}[:user_profiles]") unless params[:user_profiles].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ProjectAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectAlreadyExistsException, context: context)
        type = Types::ProjectAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ProjectConfigurationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectConfigurationException, context: context)
        type = Types::ProjectConfigurationException.new
        type.message = params[:message]
        type
      end
    end

    module ProjectCreationFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectCreationFailedException, context: context)
        type = Types::ProjectCreationFailedException.new
        type.message = params[:message]
        type
      end
    end

    module ProjectNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectNotFoundException, context: context)
        type = Types::ProjectNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ProjectStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectStatus, context: context)
        type = Types::ProjectStatus.new
        type.state = params[:state]
        type.reason = params[:reason]
        type
      end
    end

    module ProjectSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProjectSummary, context: context)
        type = Types::ProjectSummary.new
        type.project_id = params[:project_id]
        type.project_arn = params[:project_arn]
        type
      end
    end

    module ProjectsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.id = params[:id]
        type
      end
    end

    module ResourcesResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.bucket_name = params[:bucket_name]
        type.bucket_key = params[:bucket_key]
        type
      end
    end

    module SourceCode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Code.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagProjectInput, context: context)
        type = Types::TagProjectInput.new
        type.id = params[:id]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagProjectOutput, context: context)
        type = Types::TagProjectOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TeamMember
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TeamMember, context: context)
        type = Types::TeamMember.new
        type.user_arn = params[:user_arn]
        type.project_role = params[:project_role]
        type.remote_access_allowed = params[:remote_access_allowed]
        type
      end
    end

    module TeamMemberAlreadyAssociatedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TeamMemberAlreadyAssociatedException, context: context)
        type = Types::TeamMemberAlreadyAssociatedException.new
        type.message = params[:message]
        type
      end
    end

    module TeamMemberNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TeamMemberNotFoundException, context: context)
        type = Types::TeamMemberNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module TeamMemberResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TeamMember.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TemplateParameterMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Toolchain
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Toolchain, context: context)
        type = Types::Toolchain.new
        type.source = ToolchainSource.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.role_arn = params[:role_arn]
        type.stack_parameters = TemplateParameterMap.build(params[:stack_parameters], context: "#{context}[:stack_parameters]") unless params[:stack_parameters].nil?
        type
      end
    end

    module ToolchainSource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ToolchainSource, context: context)
        type = Types::ToolchainSource.new
        type.s3 = S3Location.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type
      end
    end

    module UntagProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagProjectInput, context: context)
        type = Types::UntagProjectInput.new
        type.id = params[:id]
        type.tags = TagKeys.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UntagProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagProjectOutput, context: context)
        type = Types::UntagProjectOutput.new
        type
      end
    end

    module UpdateProjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectInput, context: context)
        type = Types::UpdateProjectInput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateProjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProjectOutput, context: context)
        type = Types::UpdateProjectOutput.new
        type
      end
    end

    module UpdateTeamMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTeamMemberInput, context: context)
        type = Types::UpdateTeamMemberInput.new
        type.project_id = params[:project_id]
        type.user_arn = params[:user_arn]
        type.project_role = params[:project_role]
        type.remote_access_allowed = params[:remote_access_allowed]
        type
      end
    end

    module UpdateTeamMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTeamMemberOutput, context: context)
        type = Types::UpdateTeamMemberOutput.new
        type.user_arn = params[:user_arn]
        type.project_role = params[:project_role]
        type.remote_access_allowed = params[:remote_access_allowed]
        type
      end
    end

    module UpdateUserProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserProfileInput, context: context)
        type = Types::UpdateUserProfileInput.new
        type.user_arn = params[:user_arn]
        type.display_name = params[:display_name]
        type.email_address = params[:email_address]
        type.ssh_public_key = params[:ssh_public_key]
        type
      end
    end

    module UpdateUserProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUserProfileOutput, context: context)
        type = Types::UpdateUserProfileOutput.new
        type.user_arn = params[:user_arn]
        type.display_name = params[:display_name]
        type.email_address = params[:email_address]
        type.ssh_public_key = params[:ssh_public_key]
        type.created_timestamp = params[:created_timestamp]
        type.last_modified_timestamp = params[:last_modified_timestamp]
        type
      end
    end

    module UserProfileAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserProfileAlreadyExistsException, context: context)
        type = Types::UserProfileAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module UserProfileNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserProfileNotFoundException, context: context)
        type = Types::UserProfileNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module UserProfileSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserProfileSummary, context: context)
        type = Types::UserProfileSummary.new
        type.user_arn = params[:user_arn]
        type.display_name = params[:display_name]
        type.email_address = params[:email_address]
        type.ssh_public_key = params[:ssh_public_key]
        type
      end
    end

    module UserProfilesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserProfileSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
