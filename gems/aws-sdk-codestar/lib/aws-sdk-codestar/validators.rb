# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeStar
  module Validators

    class AssociateTeamMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTeamMemberInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:project_role], ::String, context: "#{context}[:project_role]")
        Hearth::Validator.validate!(input[:remote_access_allowed], ::TrueClass, ::FalseClass, context: "#{context}[:remote_access_allowed]")
      end
    end

    class AssociateTeamMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateTeamMemberOutput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class Code
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Code, context: context)
        Validators::CodeSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Validators::CodeDestination.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
      end
    end

    class CodeCommitCodeDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeCommitCodeDestination, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CodeDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeDestination, context: context)
        Validators::CodeCommitCodeDestination.validate!(input[:code_commit], context: "#{context}[:code_commit]") unless input[:code_commit].nil?
        Validators::GitHubCodeDestination.validate!(input[:git_hub], context: "#{context}[:git_hub]") unless input[:git_hub].nil?
      end
    end

    class CodeSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeSource, context: context)
        Validators::S3Location.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::SourceCode.validate!(input[:source_code], context: "#{context}[:source_code]") unless input[:source_code].nil?
        Validators::Toolchain.validate!(input[:toolchain], context: "#{context}[:toolchain]") unless input[:toolchain].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProjectOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:project_template_id], ::String, context: "#{context}[:project_template_id]")
      end
    end

    class CreateUserProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserProfileInput, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
      end
    end

    class CreateUserProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUserProfileOutput, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_modified_timestamp], ::Time, context: "#{context}[:last_modified_timestamp]")
      end
    end

    class DeleteProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:delete_stack], ::TrueClass, ::FalseClass, context: "#{context}[:delete_stack]")
      end
    end

    class DeleteProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProjectOutput, context: context)
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
      end
    end

    class DeleteUserProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserProfileInput, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
      end
    end

    class DeleteUserProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUserProfileOutput, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
      end
    end

    class DescribeProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribeProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeProjectOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:created_time_stamp], ::Time, context: "#{context}[:created_time_stamp]")
        Hearth::Validator.validate!(input[:stack_id], ::String, context: "#{context}[:stack_id]")
        Hearth::Validator.validate!(input[:project_template_id], ::String, context: "#{context}[:project_template_id]")
        Validators::ProjectStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
      end
    end

    class DescribeUserProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserProfileInput, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
      end
    end

    class DescribeUserProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeUserProfileOutput, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_modified_timestamp], ::Time, context: "#{context}[:last_modified_timestamp]")
      end
    end

    class DisassociateTeamMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTeamMemberInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
      end
    end

    class DisassociateTeamMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateTeamMemberOutput, context: context)
      end
    end

    class GitHubCodeDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GitHubCodeDestination, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:private_repository], ::TrueClass, ::FalseClass, context: "#{context}[:private_repository]")
        Hearth::Validator.validate!(input[:issues_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:issues_enabled]")
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidServiceRoleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidServiceRoleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProjectsOutput, context: context)
        Validators::ProjectsList.validate!(input[:projects], context: "#{context}[:projects]") unless input[:projects].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesOutput, context: context)
        Validators::ResourcesResult.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForProjectInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTagsForProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForProjectOutput, context: context)
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTeamMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTeamMembersInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTeamMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTeamMembersOutput, context: context)
        Validators::TeamMemberResult.validate!(input[:team_members], context: "#{context}[:team_members]") unless input[:team_members].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListUserProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserProfilesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListUserProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListUserProfilesOutput, context: context)
        Validators::UserProfilesList.validate!(input[:user_profiles], context: "#{context}[:user_profiles]") unless input[:user_profiles].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ProjectAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProjectConfigurationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectConfigurationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProjectCreationFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectCreationFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProjectNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProjectStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectStatus, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class ProjectSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProjectSummary, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:project_arn], ::String, context: "#{context}[:project_arn]")
      end
    end

    class ProjectsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ProjectSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class ResourcesResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:bucket_key], ::String, context: "#{context}[:bucket_key]")
      end
    end

    class SourceCode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Code.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagProjectInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagProjectOutput, context: context)
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TeamMember
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TeamMember, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:project_role], ::String, context: "#{context}[:project_role]")
        Hearth::Validator.validate!(input[:remote_access_allowed], ::TrueClass, ::FalseClass, context: "#{context}[:remote_access_allowed]")
      end
    end

    class TeamMemberAlreadyAssociatedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TeamMemberAlreadyAssociatedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TeamMemberNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TeamMemberNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TeamMemberResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::TeamMember.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TemplateParameterMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Toolchain
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Toolchain, context: context)
        Validators::ToolchainSource.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TemplateParameterMap.validate!(input[:stack_parameters], context: "#{context}[:stack_parameters]") unless input[:stack_parameters].nil?
      end
    end

    class ToolchainSource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ToolchainSource, context: context)
        Validators::S3Location.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
      end
    end

    class UntagProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagProjectInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::TagKeys.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UntagProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagProjectOutput, context: context)
      end
    end

    class UpdateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProjectOutput, context: context)
      end
    end

    class UpdateTeamMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTeamMemberInput, context: context)
        Hearth::Validator.validate!(input[:project_id], ::String, context: "#{context}[:project_id]")
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:project_role], ::String, context: "#{context}[:project_role]")
        Hearth::Validator.validate!(input[:remote_access_allowed], ::TrueClass, ::FalseClass, context: "#{context}[:remote_access_allowed]")
      end
    end

    class UpdateTeamMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTeamMemberOutput, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:project_role], ::String, context: "#{context}[:project_role]")
        Hearth::Validator.validate!(input[:remote_access_allowed], ::TrueClass, ::FalseClass, context: "#{context}[:remote_access_allowed]")
      end
    end

    class UpdateUserProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserProfileInput, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
      end
    end

    class UpdateUserProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUserProfileOutput, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
        Hearth::Validator.validate!(input[:created_timestamp], ::Time, context: "#{context}[:created_timestamp]")
        Hearth::Validator.validate!(input[:last_modified_timestamp], ::Time, context: "#{context}[:last_modified_timestamp]")
      end
    end

    class UserProfileAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserProfileAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserProfileNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserProfileNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UserProfileSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserProfileSummary, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
      end
    end

    class UserProfilesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UserProfileSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
