# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CodeCatalyst
  # @api private
  module Params

    class AccessDeniedException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class AccessTokenSummaries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AccessTokenSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class AccessTokenSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::AccessTokenSummary, context: context)
        type = Types::AccessTokenSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.name = params[:name] unless params[:name].nil?
        type.expires_time = params[:expires_time] unless params[:expires_time].nil?
        type
      end
    end

    class ConflictException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class CreateAccessTokenInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateAccessTokenInput, context: context)
        type = Types::CreateAccessTokenInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.expires_time = params[:expires_time] unless params[:expires_time].nil?
        type
      end
    end

    class CreateAccessTokenOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateAccessTokenOutput, context: context)
        type = Types::CreateAccessTokenOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.secret = params[:secret] unless params[:secret].nil?
        type.name = params[:name] unless params[:name].nil?
        type.expires_time = params[:expires_time] unless params[:expires_time].nil?
        type.access_token_id = params[:access_token_id] unless params[:access_token_id].nil?
        type
      end
    end

    class CreateDevEnvironmentInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateDevEnvironmentInput, context: context)
        type = Types::CreateDevEnvironmentInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.repositories = RepositoriesInput.build(params[:repositories], context: "#{context}[:repositories]") unless params[:repositories].nil?
        type.client_token = params[:client_token] unless params[:client_token].nil?
        type.alias = params[:alias] unless params[:alias].nil?
        type.ides = IdeConfigurationList.build(params[:ides], context: "#{context}[:ides]") unless params[:ides].nil?
        type.instance_type = params[:instance_type] unless params[:instance_type].nil?
        type.inactivity_timeout_minutes = params[:inactivity_timeout_minutes] unless params[:inactivity_timeout_minutes].nil?
        type.persistent_storage = PersistentStorageConfiguration.build(params[:persistent_storage], context: "#{context}[:persistent_storage]") unless params[:persistent_storage].nil?
        type.vpc_connection_name = params[:vpc_connection_name] unless params[:vpc_connection_name].nil?
        type
      end
    end

    class CreateDevEnvironmentOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateDevEnvironmentOutput, context: context)
        type = Types::CreateDevEnvironmentOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.vpc_connection_name = params[:vpc_connection_name] unless params[:vpc_connection_name].nil?
        type
      end
    end

    class CreateProjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateProjectInput, context: context)
        type = Types::CreateProjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.display_name = params[:display_name] unless params[:display_name].nil?
        type.description = params[:description] unless params[:description].nil?
        type
      end
    end

    class CreateProjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateProjectOutput, context: context)
        type = Types::CreateProjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.name = params[:name] unless params[:name].nil?
        type.display_name = params[:display_name] unless params[:display_name].nil?
        type.description = params[:description] unless params[:description].nil?
        type
      end
    end

    class CreateSourceRepositoryBranchInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateSourceRepositoryBranchInput, context: context)
        type = Types::CreateSourceRepositoryBranchInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.source_repository_name = params[:source_repository_name] unless params[:source_repository_name].nil?
        type.name = params[:name] unless params[:name].nil?
        type.head_commit_id = params[:head_commit_id] unless params[:head_commit_id].nil?
        type
      end
    end

    class CreateSourceRepositoryBranchOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateSourceRepositoryBranchOutput, context: context)
        type = Types::CreateSourceRepositoryBranchOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.ref = params[:ref] unless params[:ref].nil?
        type.name = params[:name] unless params[:name].nil?
        type.last_updated_time = params[:last_updated_time] unless params[:last_updated_time].nil?
        type.head_commit_id = params[:head_commit_id] unless params[:head_commit_id].nil?
        type
      end
    end

    class CreateSourceRepositoryInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateSourceRepositoryInput, context: context)
        type = Types::CreateSourceRepositoryInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.name = params[:name] unless params[:name].nil?
        type.description = params[:description] unless params[:description].nil?
        type
      end
    end

    class CreateSourceRepositoryOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::CreateSourceRepositoryOutput, context: context)
        type = Types::CreateSourceRepositoryOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.name = params[:name] unless params[:name].nil?
        type.description = params[:description] unless params[:description].nil?
        type
      end
    end

    class DeleteAccessTokenInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteAccessTokenInput, context: context)
        type = Types::DeleteAccessTokenInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type
      end
    end

    class DeleteAccessTokenOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteAccessTokenOutput, context: context)
        type = Types::DeleteAccessTokenOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class DeleteDevEnvironmentInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteDevEnvironmentInput, context: context)
        type = Types::DeleteDevEnvironmentInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type
      end
    end

    class DeleteDevEnvironmentOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteDevEnvironmentOutput, context: context)
        type = Types::DeleteDevEnvironmentOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type
      end
    end

    class DeleteProjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteProjectInput, context: context)
        type = Types::DeleteProjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.name = params[:name] unless params[:name].nil?
        type
      end
    end

    class DeleteProjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteProjectOutput, context: context)
        type = Types::DeleteProjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.name = params[:name] unless params[:name].nil?
        type.display_name = params[:display_name] unless params[:display_name].nil?
        type
      end
    end

    class DeleteSourceRepositoryInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteSourceRepositoryInput, context: context)
        type = Types::DeleteSourceRepositoryInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.name = params[:name] unless params[:name].nil?
        type
      end
    end

    class DeleteSourceRepositoryOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteSourceRepositoryOutput, context: context)
        type = Types::DeleteSourceRepositoryOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.name = params[:name] unless params[:name].nil?
        type
      end
    end

    class DeleteSpaceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteSpaceInput, context: context)
        type = Types::DeleteSpaceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type
      end
    end

    class DeleteSpaceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DeleteSpaceOutput, context: context)
        type = Types::DeleteSpaceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.display_name = params[:display_name] unless params[:display_name].nil?
        type
      end
    end

    class DevEnvironmentAccessDetails
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DevEnvironmentAccessDetails, context: context)
        type = Types::DevEnvironmentAccessDetails.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.stream_url = params[:stream_url] unless params[:stream_url].nil?
        type.token_value = params[:token_value] unless params[:token_value].nil?
        type
      end
    end

    class DevEnvironmentRepositorySummaries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DevEnvironmentRepositorySummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class DevEnvironmentRepositorySummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DevEnvironmentRepositorySummary, context: context)
        type = Types::DevEnvironmentRepositorySummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.repository_name = params[:repository_name] unless params[:repository_name].nil?
        type.branch_name = params[:branch_name] unless params[:branch_name].nil?
        type
      end
    end

    class DevEnvironmentSessionConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DevEnvironmentSessionConfiguration, context: context)
        type = Types::DevEnvironmentSessionConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.session_type = params[:session_type] unless params[:session_type].nil?
        type.execute_command_session_configuration = ExecuteCommandSessionConfiguration.build(params[:execute_command_session_configuration], context: "#{context}[:execute_command_session_configuration]") unless params[:execute_command_session_configuration].nil?
        type
      end
    end

    class DevEnvironmentSessionSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DevEnvironmentSessionSummary, context: context)
        type = Types::DevEnvironmentSessionSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.dev_environment_id = params[:dev_environment_id] unless params[:dev_environment_id].nil?
        type.started_time = params[:started_time] unless params[:started_time].nil?
        type.id = params[:id] unless params[:id].nil?
        type
      end
    end

    class DevEnvironmentSessionsSummaryList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DevEnvironmentSessionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class DevEnvironmentSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::DevEnvironmentSummary, context: context)
        type = Types::DevEnvironmentSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.last_updated_time = params[:last_updated_time] unless params[:last_updated_time].nil?
        type.creator_id = params[:creator_id] unless params[:creator_id].nil?
        type.status = params[:status] unless params[:status].nil?
        type.status_reason = params[:status_reason] unless params[:status_reason].nil?
        type.repositories = DevEnvironmentRepositorySummaries.build(params[:repositories], context: "#{context}[:repositories]") unless params[:repositories].nil?
        type.alias = params[:alias] unless params[:alias].nil?
        type.ides = Ides.build(params[:ides], context: "#{context}[:ides]") unless params[:ides].nil?
        type.instance_type = params[:instance_type] unless params[:instance_type].nil?
        type.inactivity_timeout_minutes = params[:inactivity_timeout_minutes] unless params[:inactivity_timeout_minutes].nil?
        type.persistent_storage = PersistentStorage.build(params[:persistent_storage], context: "#{context}[:persistent_storage]") unless params[:persistent_storage].nil?
        type.vpc_connection_name = params[:vpc_connection_name] unless params[:vpc_connection_name].nil?
        type
      end
    end

    class DevEnvironmentSummaryList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DevEnvironmentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class EmailAddress
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EmailAddress, context: context)
        type = Types::EmailAddress.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.email = params[:email] unless params[:email].nil?
        type.verified = params[:verified] unless params[:verified].nil?
        type
      end
    end

    class EventLogEntries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventLogEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class EventLogEntry
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EventLogEntry, context: context)
        type = Types::EventLogEntry.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.event_name = params[:event_name] unless params[:event_name].nil?
        type.event_type = params[:event_type] unless params[:event_type].nil?
        type.event_category = params[:event_category] unless params[:event_category].nil?
        type.event_source = params[:event_source] unless params[:event_source].nil?
        type.event_time = params[:event_time] unless params[:event_time].nil?
        type.operation_type = params[:operation_type] unless params[:operation_type].nil?
        type.user_identity = UserIdentity.build(params[:user_identity], context: "#{context}[:user_identity]") unless params[:user_identity].nil?
        type.project_information = ProjectInformation.build(params[:project_information], context: "#{context}[:project_information]") unless params[:project_information].nil?
        type.request_id = params[:request_id] unless params[:request_id].nil?
        type.request_payload = EventPayload.build(params[:request_payload], context: "#{context}[:request_payload]") unless params[:request_payload].nil?
        type.response_payload = EventPayload.build(params[:response_payload], context: "#{context}[:response_payload]") unless params[:response_payload].nil?
        type.error_code = params[:error_code] unless params[:error_code].nil?
        type.source_ip_address = params[:source_ip_address] unless params[:source_ip_address].nil?
        type.user_agent = params[:user_agent] unless params[:user_agent].nil?
        type
      end
    end

    class EventPayload
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::EventPayload, context: context)
        type = Types::EventPayload.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.content_type = params[:content_type] unless params[:content_type].nil?
        type.data = params[:data] unless params[:data].nil?
        type
      end
    end

    class ExecuteCommandSessionConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ExecuteCommandSessionConfiguration, context: context)
        type = Types::ExecuteCommandSessionConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.command = params[:command] unless params[:command].nil?
        type.arguments = ExecuteCommandSessionConfigurationArguments.build(params[:arguments], context: "#{context}[:arguments]") unless params[:arguments].nil?
        type
      end
    end

    class ExecuteCommandSessionConfigurationArguments
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class Filter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key] unless params[:key].nil?
        type.member_values = StringList.build(params[:member_values], context: "#{context}[:member_values]") unless params[:member_values].nil?
        type.comparison_operator = params[:comparison_operator] unless params[:comparison_operator].nil?
        type
      end
    end

    class Filters
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class GetDevEnvironmentInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetDevEnvironmentInput, context: context)
        type = Types::GetDevEnvironmentInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type
      end
    end

    class GetDevEnvironmentOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetDevEnvironmentOutput, context: context)
        type = Types::GetDevEnvironmentOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.last_updated_time = params[:last_updated_time] unless params[:last_updated_time].nil?
        type.creator_id = params[:creator_id] unless params[:creator_id].nil?
        type.status = params[:status] unless params[:status].nil?
        type.status_reason = params[:status_reason] unless params[:status_reason].nil?
        type.repositories = DevEnvironmentRepositorySummaries.build(params[:repositories], context: "#{context}[:repositories]") unless params[:repositories].nil?
        type.alias = params[:alias] unless params[:alias].nil?
        type.ides = Ides.build(params[:ides], context: "#{context}[:ides]") unless params[:ides].nil?
        type.instance_type = params[:instance_type] unless params[:instance_type].nil?
        type.inactivity_timeout_minutes = params[:inactivity_timeout_minutes] unless params[:inactivity_timeout_minutes].nil?
        type.persistent_storage = PersistentStorage.build(params[:persistent_storage], context: "#{context}[:persistent_storage]") unless params[:persistent_storage].nil?
        type.vpc_connection_name = params[:vpc_connection_name] unless params[:vpc_connection_name].nil?
        type
      end
    end

    class GetProjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetProjectInput, context: context)
        type = Types::GetProjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.name = params[:name] unless params[:name].nil?
        type
      end
    end

    class GetProjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetProjectOutput, context: context)
        type = Types::GetProjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.name = params[:name] unless params[:name].nil?
        type.display_name = params[:display_name] unless params[:display_name].nil?
        type.description = params[:description] unless params[:description].nil?
        type
      end
    end

    class GetSourceRepositoryCloneUrlsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetSourceRepositoryCloneUrlsInput, context: context)
        type = Types::GetSourceRepositoryCloneUrlsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.source_repository_name = params[:source_repository_name] unless params[:source_repository_name].nil?
        type
      end
    end

    class GetSourceRepositoryCloneUrlsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetSourceRepositoryCloneUrlsOutput, context: context)
        type = Types::GetSourceRepositoryCloneUrlsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.https = params[:https] unless params[:https].nil?
        type
      end
    end

    class GetSourceRepositoryInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetSourceRepositoryInput, context: context)
        type = Types::GetSourceRepositoryInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.name = params[:name] unless params[:name].nil?
        type
      end
    end

    class GetSourceRepositoryOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetSourceRepositoryOutput, context: context)
        type = Types::GetSourceRepositoryOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.name = params[:name] unless params[:name].nil?
        type.description = params[:description] unless params[:description].nil?
        type.last_updated_time = params[:last_updated_time] unless params[:last_updated_time].nil?
        type.created_time = params[:created_time] unless params[:created_time].nil?
        type
      end
    end

    class GetSpaceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetSpaceInput, context: context)
        type = Types::GetSpaceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type
      end
    end

    class GetSpaceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetSpaceOutput, context: context)
        type = Types::GetSpaceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.region_name = params[:region_name] unless params[:region_name].nil?
        type.display_name = params[:display_name] unless params[:display_name].nil?
        type.description = params[:description] unless params[:description].nil?
        type
      end
    end

    class GetSubscriptionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetSubscriptionInput, context: context)
        type = Types::GetSubscriptionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type
      end
    end

    class GetSubscriptionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetSubscriptionOutput, context: context)
        type = Types::GetSubscriptionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.subscription_type = params[:subscription_type] unless params[:subscription_type].nil?
        type.aws_account_name = params[:aws_account_name] unless params[:aws_account_name].nil?
        type.pending_subscription_type = params[:pending_subscription_type] unless params[:pending_subscription_type].nil?
        type.pending_subscription_start_time = params[:pending_subscription_start_time] unless params[:pending_subscription_start_time].nil?
        type
      end
    end

    class GetUserDetailsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetUserDetailsInput, context: context)
        type = Types::GetUserDetailsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.user_name = params[:user_name] unless params[:user_name].nil?
        type
      end
    end

    class GetUserDetailsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetUserDetailsOutput, context: context)
        type = Types::GetUserDetailsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.user_id = params[:user_id] unless params[:user_id].nil?
        type.user_name = params[:user_name] unless params[:user_name].nil?
        type.display_name = params[:display_name] unless params[:display_name].nil?
        type.primary_email = EmailAddress.build(params[:primary_email], context: "#{context}[:primary_email]") unless params[:primary_email].nil?
        type.version = params[:version] unless params[:version].nil?
        type
      end
    end

    class GetWorkflowInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetWorkflowInput, context: context)
        type = Types::GetWorkflowInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type
      end
    end

    class GetWorkflowOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetWorkflowOutput, context: context)
        type = Types::GetWorkflowOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.name = params[:name] unless params[:name].nil?
        type.source_repository_name = params[:source_repository_name] unless params[:source_repository_name].nil?
        type.source_branch_name = params[:source_branch_name] unless params[:source_branch_name].nil?
        type.definition = WorkflowDefinition.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.created_time = params[:created_time] unless params[:created_time].nil?
        type.last_updated_time = params[:last_updated_time] unless params[:last_updated_time].nil?
        type.run_mode = params[:run_mode] unless params[:run_mode].nil?
        type.status = params[:status] unless params[:status].nil?
        type
      end
    end

    class GetWorkflowRunInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetWorkflowRunInput, context: context)
        type = Types::GetWorkflowRunInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type
      end
    end

    class GetWorkflowRunOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::GetWorkflowRunOutput, context: context)
        type = Types::GetWorkflowRunOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.workflow_id = params[:workflow_id] unless params[:workflow_id].nil?
        type.status = params[:status] unless params[:status].nil?
        type.status_reasons = WorkflowRunStatusReasons.build(params[:status_reasons], context: "#{context}[:status_reasons]") unless params[:status_reasons].nil?
        type.start_time = params[:start_time] unless params[:start_time].nil?
        type.end_time = params[:end_time] unless params[:end_time].nil?
        type.last_updated_time = params[:last_updated_time] unless params[:last_updated_time].nil?
        type
      end
    end

    class Ide
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::Ide, context: context)
        type = Types::Ide.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.runtime = params[:runtime] unless params[:runtime].nil?
        type.name = params[:name] unless params[:name].nil?
        type
      end
    end

    class IdeConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::IdeConfiguration, context: context)
        type = Types::IdeConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.runtime = params[:runtime] unless params[:runtime].nil?
        type.name = params[:name] unless params[:name].nil?
        type
      end
    end

    class IdeConfigurationList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IdeConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class Ides
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Ide.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ListAccessTokensInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListAccessTokensInput, context: context)
        type = Types::ListAccessTokensInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListAccessTokensOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListAccessTokensOutput, context: context)
        type = Types::ListAccessTokensOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.items = AccessTokenSummaries.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListDevEnvironmentSessionsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListDevEnvironmentSessionsInput, context: context)
        type = Types::ListDevEnvironmentSessionsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.dev_environment_id = params[:dev_environment_id] unless params[:dev_environment_id].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type
      end
    end

    class ListDevEnvironmentSessionsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListDevEnvironmentSessionsOutput, context: context)
        type = Types::ListDevEnvironmentSessionsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.items = DevEnvironmentSessionsSummaryList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListDevEnvironmentsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListDevEnvironmentsInput, context: context)
        type = Types::ListDevEnvironmentsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type
      end
    end

    class ListDevEnvironmentsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListDevEnvironmentsOutput, context: context)
        type = Types::ListDevEnvironmentsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.items = DevEnvironmentSummaryList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListEventLogsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListEventLogsInput, context: context)
        type = Types::ListEventLogsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.start_time = params[:start_time] unless params[:start_time].nil?
        type.end_time = params[:end_time] unless params[:end_time].nil?
        type.event_name = params[:event_name] unless params[:event_name].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type
      end
    end

    class ListEventLogsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListEventLogsOutput, context: context)
        type = Types::ListEventLogsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.items = EventLogEntries.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    class ListProjectsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListProjectsInput, context: context)
        type = Types::ListProjectsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type.filters = ProjectListFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    class ListProjectsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListProjectsOutput, context: context)
        type = Types::ListProjectsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.items = ProjectSummaries.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    class ListSourceRepositoriesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListSourceRepositoriesInput, context: context)
        type = Types::ListSourceRepositoriesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type
      end
    end

    class ListSourceRepositoriesItem
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListSourceRepositoriesItem, context: context)
        type = Types::ListSourceRepositoriesItem.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.name = params[:name] unless params[:name].nil?
        type.description = params[:description] unless params[:description].nil?
        type.last_updated_time = params[:last_updated_time] unless params[:last_updated_time].nil?
        type.created_time = params[:created_time] unless params[:created_time].nil?
        type
      end
    end

    class ListSourceRepositoriesItems
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListSourceRepositoriesItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ListSourceRepositoriesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListSourceRepositoriesOutput, context: context)
        type = Types::ListSourceRepositoriesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.items = ListSourceRepositoriesItems.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListSourceRepositoryBranchesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListSourceRepositoryBranchesInput, context: context)
        type = Types::ListSourceRepositoryBranchesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.source_repository_name = params[:source_repository_name] unless params[:source_repository_name].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type
      end
    end

    class ListSourceRepositoryBranchesItem
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListSourceRepositoryBranchesItem, context: context)
        type = Types::ListSourceRepositoryBranchesItem.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.ref = params[:ref] unless params[:ref].nil?
        type.name = params[:name] unless params[:name].nil?
        type.last_updated_time = params[:last_updated_time] unless params[:last_updated_time].nil?
        type.head_commit_id = params[:head_commit_id] unless params[:head_commit_id].nil?
        type
      end
    end

    class ListSourceRepositoryBranchesItems
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListSourceRepositoryBranchesItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ListSourceRepositoryBranchesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListSourceRepositoryBranchesOutput, context: context)
        type = Types::ListSourceRepositoryBranchesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.items = ListSourceRepositoryBranchesItems.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    class ListSpacesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListSpacesInput, context: context)
        type = Types::ListSpacesInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type
      end
    end

    class ListSpacesOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListSpacesOutput, context: context)
        type = Types::ListSpacesOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.items = SpaceSummaries.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    class ListWorkflowRunsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListWorkflowRunsInput, context: context)
        type = Types::ListWorkflowRunsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.workflow_id = params[:workflow_id] unless params[:workflow_id].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type.member_sort_by = WorkflowRunSortCriteriaList.build(params[:member_sort_by], context: "#{context}[:member_sort_by]") unless params[:member_sort_by].nil?
        type
      end
    end

    class ListWorkflowRunsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListWorkflowRunsOutput, context: context)
        type = Types::ListWorkflowRunsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.items = WorkflowRunSummaries.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    class ListWorkflowsInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListWorkflowsInput, context: context)
        type = Types::ListWorkflowsInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.max_results = params[:max_results] unless params[:max_results].nil?
        type.member_sort_by = WorkflowSortCriteriaList.build(params[:member_sort_by], context: "#{context}[:member_sort_by]") unless params[:member_sort_by].nil?
        type
      end
    end

    class ListWorkflowsOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ListWorkflowsOutput, context: context)
        type = Types::ListWorkflowsOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.next_token = params[:next_token] unless params[:next_token].nil?
        type.items = WorkflowSummaries.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    class PersistentStorage
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PersistentStorage, context: context)
        type = Types::PersistentStorage.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.size_in_gi_b = params[:size_in_gi_b] unless params[:size_in_gi_b].nil?
        type
      end
    end

    class PersistentStorageConfiguration
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::PersistentStorageConfiguration, context: context)
        type = Types::PersistentStorageConfiguration.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.size_in_gi_b = params[:size_in_gi_b] unless params[:size_in_gi_b].nil?
        type
      end
    end

    class ProjectInformation
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ProjectInformation, context: context)
        type = Types::ProjectInformation.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.project_id = params[:project_id] unless params[:project_id].nil?
        type
      end
    end

    class ProjectListFilter
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ProjectListFilter, context: context)
        type = Types::ProjectListFilter.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.key = params[:key] unless params[:key].nil?
        type.member_values = StringList.build(params[:member_values], context: "#{context}[:member_values]") unless params[:member_values].nil?
        type.comparison_operator = params[:comparison_operator] unless params[:comparison_operator].nil?
        type
      end
    end

    class ProjectListFilters
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectListFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ProjectSummaries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProjectSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class ProjectSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ProjectSummary, context: context)
        type = Types::ProjectSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.display_name = params[:display_name] unless params[:display_name].nil?
        type.description = params[:description] unless params[:description].nil?
        type
      end
    end

    class RepositoriesInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RepositoryInput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class RepositoryInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::RepositoryInput, context: context)
        type = Types::RepositoryInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.repository_name = params[:repository_name] unless params[:repository_name].nil?
        type.branch_name = params[:branch_name] unless params[:branch_name].nil?
        type
      end
    end

    class ResourceNotFoundException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class ServiceQuotaExceededException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class SpaceSummaries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SpaceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class SpaceSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::SpaceSummary, context: context)
        type = Types::SpaceSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.region_name = params[:region_name] unless params[:region_name].nil?
        type.display_name = params[:display_name] unless params[:display_name].nil?
        type.description = params[:description] unless params[:description].nil?
        type
      end
    end

    class StartDevEnvironmentInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartDevEnvironmentInput, context: context)
        type = Types::StartDevEnvironmentInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.ides = IdeConfigurationList.build(params[:ides], context: "#{context}[:ides]") unless params[:ides].nil?
        type.instance_type = params[:instance_type] unless params[:instance_type].nil?
        type.inactivity_timeout_minutes = params[:inactivity_timeout_minutes] unless params[:inactivity_timeout_minutes].nil?
        type
      end
    end

    class StartDevEnvironmentOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartDevEnvironmentOutput, context: context)
        type = Types::StartDevEnvironmentOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.status = params[:status] unless params[:status].nil?
        type
      end
    end

    class StartDevEnvironmentSessionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartDevEnvironmentSessionInput, context: context)
        type = Types::StartDevEnvironmentSessionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.session_configuration = DevEnvironmentSessionConfiguration.build(params[:session_configuration], context: "#{context}[:session_configuration]") unless params[:session_configuration].nil?
        type
      end
    end

    class StartDevEnvironmentSessionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartDevEnvironmentSessionOutput, context: context)
        type = Types::StartDevEnvironmentSessionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.access_details = DevEnvironmentAccessDetails.build(params[:access_details], context: "#{context}[:access_details]") unless params[:access_details].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type
      end
    end

    class StartWorkflowRunInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartWorkflowRunInput, context: context)
        type = Types::StartWorkflowRunInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.workflow_id = params[:workflow_id] unless params[:workflow_id].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    class StartWorkflowRunOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StartWorkflowRunOutput, context: context)
        type = Types::StartWorkflowRunOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.workflow_id = params[:workflow_id] unless params[:workflow_id].nil?
        type
      end
    end

    class StopDevEnvironmentInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StopDevEnvironmentInput, context: context)
        type = Types::StopDevEnvironmentInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type
      end
    end

    class StopDevEnvironmentOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StopDevEnvironmentOutput, context: context)
        type = Types::StopDevEnvironmentOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.status = params[:status] unless params[:status].nil?
        type
      end
    end

    class StopDevEnvironmentSessionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StopDevEnvironmentSessionInput, context: context)
        type = Types::StopDevEnvironmentSessionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type
      end
    end

    class StopDevEnvironmentSessionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::StopDevEnvironmentSessionOutput, context: context)
        type = Types::StopDevEnvironmentSessionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.session_id = params[:session_id] unless params[:session_id].nil?
        type
      end
    end

    class StringList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    class ThrottlingException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class UpdateDevEnvironmentInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateDevEnvironmentInput, context: context)
        type = Types::UpdateDevEnvironmentInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.id = params[:id] unless params[:id].nil?
        type.alias = params[:alias] unless params[:alias].nil?
        type.ides = IdeConfigurationList.build(params[:ides], context: "#{context}[:ides]") unless params[:ides].nil?
        type.instance_type = params[:instance_type] unless params[:instance_type].nil?
        type.inactivity_timeout_minutes = params[:inactivity_timeout_minutes] unless params[:inactivity_timeout_minutes].nil?
        type.client_token = params[:client_token] unless params[:client_token].nil?
        type
      end
    end

    class UpdateDevEnvironmentOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateDevEnvironmentOutput, context: context)
        type = Types::UpdateDevEnvironmentOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.project_name = params[:project_name] unless params[:project_name].nil?
        type.alias = params[:alias] unless params[:alias].nil?
        type.ides = IdeConfigurationList.build(params[:ides], context: "#{context}[:ides]") unless params[:ides].nil?
        type.instance_type = params[:instance_type] unless params[:instance_type].nil?
        type.inactivity_timeout_minutes = params[:inactivity_timeout_minutes] unless params[:inactivity_timeout_minutes].nil?
        type.client_token = params[:client_token] unless params[:client_token].nil?
        type
      end
    end

    class UpdateProjectInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateProjectInput, context: context)
        type = Types::UpdateProjectInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.name = params[:name] unless params[:name].nil?
        type.description = params[:description] unless params[:description].nil?
        type
      end
    end

    class UpdateProjectOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateProjectOutput, context: context)
        type = Types::UpdateProjectOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.space_name = params[:space_name] unless params[:space_name].nil?
        type.name = params[:name] unless params[:name].nil?
        type.display_name = params[:display_name] unless params[:display_name].nil?
        type.description = params[:description] unless params[:description].nil?
        type
      end
    end

    class UpdateSpaceInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateSpaceInput, context: context)
        type = Types::UpdateSpaceInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.description = params[:description] unless params[:description].nil?
        type
      end
    end

    class UpdateSpaceOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UpdateSpaceOutput, context: context)
        type = Types::UpdateSpaceOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.name = params[:name] unless params[:name].nil?
        type.display_name = params[:display_name] unless params[:display_name].nil?
        type.description = params[:description] unless params[:description].nil?
        type
      end
    end

    class UserIdentity
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::UserIdentity, context: context)
        type = Types::UserIdentity.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.user_type = params[:user_type] unless params[:user_type].nil?
        type.principal_id = params[:principal_id] unless params[:principal_id].nil?
        type.user_name = params[:user_name] unless params[:user_name].nil?
        type.aws_account_id = params[:aws_account_id] unless params[:aws_account_id].nil?
        type
      end
    end

    class ValidationException
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.message = params[:message] unless params[:message].nil?
        type
      end
    end

    class VerifySessionInput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::VerifySessionInput, context: context)
        type = Types::VerifySessionInput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class VerifySessionOutput
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::VerifySessionOutput, context: context)
        type = Types::VerifySessionOutput.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.identity = params[:identity] unless params[:identity].nil?
        type
      end
    end

    class WorkflowDefinition
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::WorkflowDefinition, context: context)
        type = Types::WorkflowDefinition.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.path = params[:path] unless params[:path].nil?
        type
      end
    end

    class WorkflowDefinitionSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::WorkflowDefinitionSummary, context: context)
        type = Types::WorkflowDefinitionSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.path = params[:path] unless params[:path].nil?
        type
      end
    end

    class WorkflowRunSortCriteria
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::WorkflowRunSortCriteria, context: context)
        type = Types::WorkflowRunSortCriteria.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class WorkflowRunSortCriteriaList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkflowRunSortCriteria.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class WorkflowRunStatusReason
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::WorkflowRunStatusReason, context: context)
        type = Types::WorkflowRunStatusReason.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class WorkflowRunStatusReasons
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkflowRunStatusReason.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class WorkflowRunSummaries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkflowRunSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class WorkflowRunSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::WorkflowRunSummary, context: context)
        type = Types::WorkflowRunSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.workflow_id = params[:workflow_id] unless params[:workflow_id].nil?
        type.workflow_name = params[:workflow_name] unless params[:workflow_name].nil?
        type.status = params[:status] unless params[:status].nil?
        type.status_reasons = WorkflowRunStatusReasons.build(params[:status_reasons], context: "#{context}[:status_reasons]") unless params[:status_reasons].nil?
        type.start_time = params[:start_time] unless params[:start_time].nil?
        type.end_time = params[:end_time] unless params[:end_time].nil?
        type.last_updated_time = params[:last_updated_time] unless params[:last_updated_time].nil?
        type
      end
    end

    class WorkflowSortCriteria
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::WorkflowSortCriteria, context: context)
        type = Types::WorkflowSortCriteria.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type
      end
    end

    class WorkflowSortCriteriaList
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkflowSortCriteria.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class WorkflowSummaries
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkflowSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    class WorkflowSummary
      def self.build(params, context:)
        Hearth::Validator.validate_types!(params, ::Hash, Types::WorkflowSummary, context: context)
        type = Types::WorkflowSummary.new
        Hearth::Validator.validate_unknown!(type, params, context: context) if params.is_a?(Hash)
        type.id = params[:id] unless params[:id].nil?
        type.name = params[:name] unless params[:name].nil?
        type.source_repository_name = params[:source_repository_name] unless params[:source_repository_name].nil?
        type.source_branch_name = params[:source_branch_name] unless params[:source_branch_name].nil?
        type.definition = WorkflowDefinitionSummary.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.created_time = params[:created_time] unless params[:created_time].nil?
        type.last_updated_time = params[:last_updated_time] unless params[:last_updated_time].nil?
        type.run_mode = params[:run_mode] unless params[:run_mode].nil?
        type.status = params[:status] unless params[:status].nil?
        type
      end
    end

  end
end
