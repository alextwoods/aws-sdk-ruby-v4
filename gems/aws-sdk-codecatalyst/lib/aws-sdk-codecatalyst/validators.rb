# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CodeCatalyst
  # @api private
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate_required!(input.message, context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class AccessTokenSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AccessTokenSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AccessTokenSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::AccessTokenSummary, context: context)
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.expires_time, ::Time, context: "#{context}[:expires_time]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate_required!(input.message, context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class CreateAccessTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateAccessTokenInput, context: context)
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.expires_time, ::Time, context: "#{context}[:expires_time]")
      end
    end

    class CreateAccessTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateAccessTokenOutput, context: context)
        Hearth::Validator.validate_required!(input.secret, context: "#{context}[:secret]")
        Hearth::Validator.validate_types!(input.secret, ::String, context: "#{context}[:secret]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_required!(input.expires_time, context: "#{context}[:expires_time]")
        Hearth::Validator.validate_types!(input.expires_time, ::Time, context: "#{context}[:expires_time]")
        Hearth::Validator.validate_required!(input.access_token_id, context: "#{context}[:access_token_id]")
        Hearth::Validator.validate_types!(input.access_token_id, ::String, context: "#{context}[:access_token_id]")
      end
    end

    class CreateDevEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateDevEnvironmentInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        RepositoriesInput.validate!(input.repositories, context: "#{context}[:repositories]") unless input.repositories.nil?
        Hearth::Validator.validate_types!(input.client_token, ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate_types!(input.alias, ::String, context: "#{context}[:alias]")
        IdeConfigurationList.validate!(input.ides, context: "#{context}[:ides]") unless input.ides.nil?
        Hearth::Validator.validate_required!(input.instance_type, context: "#{context}[:instance_type]")
        Hearth::Validator.validate_types!(input.instance_type, ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate_types!(input.inactivity_timeout_minutes, ::Integer, context: "#{context}[:inactivity_timeout_minutes]")
        Hearth::Validator.validate_required!(input.persistent_storage, context: "#{context}[:persistent_storage]")
        PersistentStorageConfiguration.validate!(input.persistent_storage, context: "#{context}[:persistent_storage]") unless input.persistent_storage.nil?
        Hearth::Validator.validate_types!(input.vpc_connection_name, ::String, context: "#{context}[:vpc_connection_name]")
      end
    end

    class CreateDevEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateDevEnvironmentOutput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.vpc_connection_name, ::String, context: "#{context}[:vpc_connection_name]")
      end
    end

    class CreateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateProjectInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.display_name, context: "#{context}[:display_name]")
        Hearth::Validator.validate_types!(input.display_name, ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate_types!(input.description, ::String, context: "#{context}[:description]")
      end
    end

    class CreateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateProjectOutput, context: context)
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.display_name, ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate_types!(input.description, ::String, context: "#{context}[:description]")
      end
    end

    class CreateSourceRepositoryBranchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateSourceRepositoryBranchInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.source_repository_name, context: "#{context}[:source_repository_name]")
        Hearth::Validator.validate_types!(input.source_repository_name, ::String, context: "#{context}[:source_repository_name]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.head_commit_id, ::String, context: "#{context}[:head_commit_id]")
      end
    end

    class CreateSourceRepositoryBranchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateSourceRepositoryBranchOutput, context: context)
        Hearth::Validator.validate_types!(input.ref, ::String, context: "#{context}[:ref]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.last_updated_time, ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_types!(input.head_commit_id, ::String, context: "#{context}[:head_commit_id]")
      end
    end

    class CreateSourceRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateSourceRepositoryInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.description, ::String, context: "#{context}[:description]")
      end
    end

    class CreateSourceRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::CreateSourceRepositoryOutput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.description, ::String, context: "#{context}[:description]")
      end
    end

    class DeleteAccessTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteAccessTokenInput, context: context)
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
      end
    end

    class DeleteAccessTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteAccessTokenOutput, context: context)
      end
    end

    class DeleteDevEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteDevEnvironmentInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
      end
    end

    class DeleteDevEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteDevEnvironmentOutput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
      end
    end

    class DeleteProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteProjectInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
      end
    end

    class DeleteProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteProjectOutput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.display_name, ::String, context: "#{context}[:display_name]")
      end
    end

    class DeleteSourceRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteSourceRepositoryInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
      end
    end

    class DeleteSourceRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteSourceRepositoryOutput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
      end
    end

    class DeleteSpaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteSpaceInput, context: context)
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
      end
    end

    class DeleteSpaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DeleteSpaceOutput, context: context)
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.display_name, ::String, context: "#{context}[:display_name]")
      end
    end

    class DevEnvironmentAccessDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DevEnvironmentAccessDetails, context: context)
        Hearth::Validator.validate_required!(input.stream_url, context: "#{context}[:stream_url]")
        Hearth::Validator.validate_types!(input.stream_url, ::String, context: "#{context}[:stream_url]")
        Hearth::Validator.validate_required!(input.token_value, context: "#{context}[:token_value]")
        Hearth::Validator.validate_types!(input.token_value, ::String, context: "#{context}[:token_value]")
      end
    end

    class DevEnvironmentRepositorySummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DevEnvironmentRepositorySummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DevEnvironmentRepositorySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DevEnvironmentRepositorySummary, context: context)
        Hearth::Validator.validate_required!(input.repository_name, context: "#{context}[:repository_name]")
        Hearth::Validator.validate_types!(input.repository_name, ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate_types!(input.branch_name, ::String, context: "#{context}[:branch_name]")
      end
    end

    class DevEnvironmentSessionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DevEnvironmentSessionConfiguration, context: context)
        Hearth::Validator.validate_required!(input.session_type, context: "#{context}[:session_type]")
        Hearth::Validator.validate_types!(input.session_type, ::String, context: "#{context}[:session_type]")
        ExecuteCommandSessionConfiguration.validate!(input.execute_command_session_configuration, context: "#{context}[:execute_command_session_configuration]") unless input.execute_command_session_configuration.nil?
      end
    end

    class DevEnvironmentSessionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DevEnvironmentSessionSummary, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.dev_environment_id, context: "#{context}[:dev_environment_id]")
        Hearth::Validator.validate_types!(input.dev_environment_id, ::String, context: "#{context}[:dev_environment_id]")
        Hearth::Validator.validate_required!(input.started_time, context: "#{context}[:started_time]")
        Hearth::Validator.validate_types!(input.started_time, ::Time, context: "#{context}[:started_time]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
      end
    end

    class DevEnvironmentSessionsSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DevEnvironmentSessionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DevEnvironmentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::DevEnvironmentSummary, context: context)
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.last_updated_time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_types!(input.last_updated_time, ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_required!(input.creator_id, context: "#{context}[:creator_id]")
        Hearth::Validator.validate_types!(input.creator_id, ::String, context: "#{context}[:creator_id]")
        Hearth::Validator.validate_required!(input.status, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input.status, ::String, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input.status_reason, ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate_required!(input.repositories, context: "#{context}[:repositories]")
        DevEnvironmentRepositorySummaries.validate!(input.repositories, context: "#{context}[:repositories]") unless input.repositories.nil?
        Hearth::Validator.validate_types!(input.alias, ::String, context: "#{context}[:alias]")
        Ides.validate!(input.ides, context: "#{context}[:ides]") unless input.ides.nil?
        Hearth::Validator.validate_required!(input.instance_type, context: "#{context}[:instance_type]")
        Hearth::Validator.validate_types!(input.instance_type, ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate_required!(input.inactivity_timeout_minutes, context: "#{context}[:inactivity_timeout_minutes]")
        Hearth::Validator.validate_types!(input.inactivity_timeout_minutes, ::Integer, context: "#{context}[:inactivity_timeout_minutes]")
        Hearth::Validator.validate_required!(input.persistent_storage, context: "#{context}[:persistent_storage]")
        PersistentStorage.validate!(input.persistent_storage, context: "#{context}[:persistent_storage]") unless input.persistent_storage.nil?
        Hearth::Validator.validate_types!(input.vpc_connection_name, ::String, context: "#{context}[:vpc_connection_name]")
      end
    end

    class DevEnvironmentSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DevEnvironmentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EmailAddress
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EmailAddress, context: context)
        Hearth::Validator.validate_types!(input.email, ::String, context: "#{context}[:email]")
        Hearth::Validator.validate_types!(input.verified, ::TrueClass, ::FalseClass, context: "#{context}[:verified]")
      end
    end

    class EventLogEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventLogEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventLogEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EventLogEntry, context: context)
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.event_name, context: "#{context}[:event_name]")
        Hearth::Validator.validate_types!(input.event_name, ::String, context: "#{context}[:event_name]")
        Hearth::Validator.validate_required!(input.event_type, context: "#{context}[:event_type]")
        Hearth::Validator.validate_types!(input.event_type, ::String, context: "#{context}[:event_type]")
        Hearth::Validator.validate_required!(input.event_category, context: "#{context}[:event_category]")
        Hearth::Validator.validate_types!(input.event_category, ::String, context: "#{context}[:event_category]")
        Hearth::Validator.validate_required!(input.event_source, context: "#{context}[:event_source]")
        Hearth::Validator.validate_types!(input.event_source, ::String, context: "#{context}[:event_source]")
        Hearth::Validator.validate_required!(input.event_time, context: "#{context}[:event_time]")
        Hearth::Validator.validate_types!(input.event_time, ::Time, context: "#{context}[:event_time]")
        Hearth::Validator.validate_required!(input.operation_type, context: "#{context}[:operation_type]")
        Hearth::Validator.validate_types!(input.operation_type, ::String, context: "#{context}[:operation_type]")
        Hearth::Validator.validate_required!(input.user_identity, context: "#{context}[:user_identity]")
        UserIdentity.validate!(input.user_identity, context: "#{context}[:user_identity]") unless input.user_identity.nil?
        ProjectInformation.validate!(input.project_information, context: "#{context}[:project_information]") unless input.project_information.nil?
        Hearth::Validator.validate_types!(input.request_id, ::String, context: "#{context}[:request_id]")
        EventPayload.validate!(input.request_payload, context: "#{context}[:request_payload]") unless input.request_payload.nil?
        EventPayload.validate!(input.response_payload, context: "#{context}[:response_payload]") unless input.response_payload.nil?
        Hearth::Validator.validate_types!(input.error_code, ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate_types!(input.source_ip_address, ::String, context: "#{context}[:source_ip_address]")
        Hearth::Validator.validate_types!(input.user_agent, ::String, context: "#{context}[:user_agent]")
      end
    end

    class EventPayload
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::EventPayload, context: context)
        Hearth::Validator.validate_types!(input.content_type, ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate_types!(input.data, ::String, context: "#{context}[:data]")
      end
    end

    class ExecuteCommandSessionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ExecuteCommandSessionConfiguration, context: context)
        Hearth::Validator.validate_required!(input.command, context: "#{context}[:command]")
        Hearth::Validator.validate_types!(input.command, ::String, context: "#{context}[:command]")
        ExecuteCommandSessionConfigurationArguments.validate!(input.arguments, context: "#{context}[:arguments]") unless input.arguments.nil?
      end
    end

    class ExecuteCommandSessionConfigurationArguments
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Filter, context: context)
        Hearth::Validator.validate_required!(input.key, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input.key, ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_required!(input.values, context: "#{context}[:values]")
        StringList.validate!(input.values, context: "#{context}[:values]") unless input.values.nil?
        Hearth::Validator.validate_types!(input.comparison_operator, ::String, context: "#{context}[:comparison_operator]")
      end
    end

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetDevEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetDevEnvironmentInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
      end
    end

    class GetDevEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetDevEnvironmentOutput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.last_updated_time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_types!(input.last_updated_time, ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_required!(input.creator_id, context: "#{context}[:creator_id]")
        Hearth::Validator.validate_types!(input.creator_id, ::String, context: "#{context}[:creator_id]")
        Hearth::Validator.validate_required!(input.status, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input.status, ::String, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input.status_reason, ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate_required!(input.repositories, context: "#{context}[:repositories]")
        DevEnvironmentRepositorySummaries.validate!(input.repositories, context: "#{context}[:repositories]") unless input.repositories.nil?
        Hearth::Validator.validate_types!(input.alias, ::String, context: "#{context}[:alias]")
        Ides.validate!(input.ides, context: "#{context}[:ides]") unless input.ides.nil?
        Hearth::Validator.validate_required!(input.instance_type, context: "#{context}[:instance_type]")
        Hearth::Validator.validate_types!(input.instance_type, ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate_required!(input.inactivity_timeout_minutes, context: "#{context}[:inactivity_timeout_minutes]")
        Hearth::Validator.validate_types!(input.inactivity_timeout_minutes, ::Integer, context: "#{context}[:inactivity_timeout_minutes]")
        Hearth::Validator.validate_required!(input.persistent_storage, context: "#{context}[:persistent_storage]")
        PersistentStorage.validate!(input.persistent_storage, context: "#{context}[:persistent_storage]") unless input.persistent_storage.nil?
        Hearth::Validator.validate_types!(input.vpc_connection_name, ::String, context: "#{context}[:vpc_connection_name]")
      end
    end

    class GetProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetProjectInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
      end
    end

    class GetProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetProjectOutput, context: context)
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.display_name, ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate_types!(input.description, ::String, context: "#{context}[:description]")
      end
    end

    class GetSourceRepositoryCloneUrlsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetSourceRepositoryCloneUrlsInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.source_repository_name, context: "#{context}[:source_repository_name]")
        Hearth::Validator.validate_types!(input.source_repository_name, ::String, context: "#{context}[:source_repository_name]")
      end
    end

    class GetSourceRepositoryCloneUrlsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetSourceRepositoryCloneUrlsOutput, context: context)
        Hearth::Validator.validate_required!(input.https, context: "#{context}[:https]")
        Hearth::Validator.validate_types!(input.https, ::String, context: "#{context}[:https]")
      end
    end

    class GetSourceRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetSourceRepositoryInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
      end
    end

    class GetSourceRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetSourceRepositoryOutput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.description, ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_required!(input.last_updated_time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_types!(input.last_updated_time, ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_required!(input.created_time, context: "#{context}[:created_time]")
        Hearth::Validator.validate_types!(input.created_time, ::Time, context: "#{context}[:created_time]")
      end
    end

    class GetSpaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetSpaceInput, context: context)
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
      end
    end

    class GetSpaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetSpaceOutput, context: context)
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_required!(input.region_name, context: "#{context}[:region_name]")
        Hearth::Validator.validate_types!(input.region_name, ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate_types!(input.display_name, ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate_types!(input.description, ::String, context: "#{context}[:description]")
      end
    end

    class GetSubscriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetSubscriptionInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
      end
    end

    class GetSubscriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetSubscriptionOutput, context: context)
        Hearth::Validator.validate_types!(input.subscription_type, ::String, context: "#{context}[:subscription_type]")
        Hearth::Validator.validate_types!(input.aws_account_name, ::String, context: "#{context}[:aws_account_name]")
        Hearth::Validator.validate_types!(input.pending_subscription_type, ::String, context: "#{context}[:pending_subscription_type]")
        Hearth::Validator.validate_types!(input.pending_subscription_start_time, ::Time, context: "#{context}[:pending_subscription_start_time]")
      end
    end

    class GetUserDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetUserDetailsInput, context: context)
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.user_name, ::String, context: "#{context}[:user_name]")
      end
    end

    class GetUserDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetUserDetailsOutput, context: context)
        Hearth::Validator.validate_types!(input.user_id, ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate_types!(input.user_name, ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate_types!(input.display_name, ::String, context: "#{context}[:display_name]")
        EmailAddress.validate!(input.primary_email, context: "#{context}[:primary_email]") unless input.primary_email.nil?
        Hearth::Validator.validate_types!(input.version, ::String, context: "#{context}[:version]")
      end
    end

    class GetWorkflowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetWorkflowInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
      end
    end

    class GetWorkflowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetWorkflowOutput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.source_repository_name, ::String, context: "#{context}[:source_repository_name]")
        Hearth::Validator.validate_types!(input.source_branch_name, ::String, context: "#{context}[:source_branch_name]")
        Hearth::Validator.validate_required!(input.definition, context: "#{context}[:definition]")
        WorkflowDefinition.validate!(input.definition, context: "#{context}[:definition]") unless input.definition.nil?
        Hearth::Validator.validate_required!(input.created_time, context: "#{context}[:created_time]")
        Hearth::Validator.validate_types!(input.created_time, ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate_required!(input.last_updated_time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_types!(input.last_updated_time, ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_required!(input.run_mode, context: "#{context}[:run_mode]")
        Hearth::Validator.validate_types!(input.run_mode, ::String, context: "#{context}[:run_mode]")
        Hearth::Validator.validate_required!(input.status, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input.status, ::String, context: "#{context}[:status]")
      end
    end

    class GetWorkflowRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetWorkflowRunInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
      end
    end

    class GetWorkflowRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::GetWorkflowRunOutput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.workflow_id, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate_types!(input.workflow_id, ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate_required!(input.status, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input.status, ::String, context: "#{context}[:status]")
        WorkflowRunStatusReasons.validate!(input.status_reasons, context: "#{context}[:status_reasons]") unless input.status_reasons.nil?
        Hearth::Validator.validate_required!(input.start_time, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input.start_time, ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input.end_time, ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate_required!(input.last_updated_time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_types!(input.last_updated_time, ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class Ide
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::Ide, context: context)
        Hearth::Validator.validate_types!(input.runtime, ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
      end
    end

    class IdeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::IdeConfiguration, context: context)
        Hearth::Validator.validate_types!(input.runtime, ::String, context: "#{context}[:runtime]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
      end
    end

    class IdeConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IdeConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Ides
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Ide.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListAccessTokensInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListAccessTokensInput, context: context)
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAccessTokensOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListAccessTokensOutput, context: context)
        Hearth::Validator.validate_required!(input.items, context: "#{context}[:items]")
        AccessTokenSummaries.validate!(input.items, context: "#{context}[:items]") unless input.items.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevEnvironmentSessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListDevEnvironmentSessionsInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.dev_environment_id, context: "#{context}[:dev_environment_id]")
        Hearth::Validator.validate_types!(input.dev_environment_id, ::String, context: "#{context}[:dev_environment_id]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDevEnvironmentSessionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListDevEnvironmentSessionsOutput, context: context)
        Hearth::Validator.validate_required!(input.items, context: "#{context}[:items]")
        DevEnvironmentSessionsSummaryList.validate!(input.items, context: "#{context}[:items]") unless input.items.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDevEnvironmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListDevEnvironmentsInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Filters.validate!(input.filters, context: "#{context}[:filters]") unless input.filters.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDevEnvironmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListDevEnvironmentsOutput, context: context)
        Hearth::Validator.validate_required!(input.items, context: "#{context}[:items]")
        DevEnvironmentSummaryList.validate!(input.items, context: "#{context}[:items]") unless input.items.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEventLogsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListEventLogsInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.start_time, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input.start_time, ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate_required!(input.end_time, context: "#{context}[:end_time]")
        Hearth::Validator.validate_types!(input.end_time, ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate_types!(input.event_name, ::String, context: "#{context}[:event_name]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEventLogsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListEventLogsOutput, context: context)
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_required!(input.items, context: "#{context}[:items]")
        EventLogEntries.validate!(input.items, context: "#{context}[:items]") unless input.items.nil?
      end
    end

    class ListProjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListProjectsInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
        ProjectListFilters.validate!(input.filters, context: "#{context}[:filters]") unless input.filters.nil?
      end
    end

    class ListProjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListProjectsOutput, context: context)
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        ProjectSummaries.validate!(input.items, context: "#{context}[:items]") unless input.items.nil?
      end
    end

    class ListSourceRepositoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListSourceRepositoriesInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSourceRepositoriesItem
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListSourceRepositoriesItem, context: context)
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.description, ::String, context: "#{context}[:description]")
        Hearth::Validator.validate_required!(input.last_updated_time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_types!(input.last_updated_time, ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_required!(input.created_time, context: "#{context}[:created_time]")
        Hearth::Validator.validate_types!(input.created_time, ::Time, context: "#{context}[:created_time]")
      end
    end

    class ListSourceRepositoriesItems
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListSourceRepositoriesItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListSourceRepositoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListSourceRepositoriesOutput, context: context)
        ListSourceRepositoriesItems.validate!(input.items, context: "#{context}[:items]") unless input.items.nil?
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSourceRepositoryBranchesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListSourceRepositoryBranchesInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.source_repository_name, context: "#{context}[:source_repository_name]")
        Hearth::Validator.validate_types!(input.source_repository_name, ::String, context: "#{context}[:source_repository_name]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListSourceRepositoryBranchesItem
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListSourceRepositoryBranchesItem, context: context)
        Hearth::Validator.validate_types!(input.ref, ::String, context: "#{context}[:ref]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.last_updated_time, ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_types!(input.head_commit_id, ::String, context: "#{context}[:head_commit_id]")
      end
    end

    class ListSourceRepositoryBranchesItems
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListSourceRepositoryBranchesItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListSourceRepositoryBranchesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListSourceRepositoryBranchesOutput, context: context)
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_required!(input.items, context: "#{context}[:items]")
        ListSourceRepositoryBranchesItems.validate!(input.items, context: "#{context}[:items]") unless input.items.nil?
      end
    end

    class ListSpacesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListSpacesInput, context: context)
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
      end
    end

    class ListSpacesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListSpacesOutput, context: context)
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        SpaceSummaries.validate!(input.items, context: "#{context}[:items]") unless input.items.nil?
      end
    end

    class ListWorkflowRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListWorkflowRunsInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.workflow_id, ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
        WorkflowRunSortCriteriaList.validate!(input.sort_by, context: "#{context}[:sort_by]") unless input.sort_by.nil?
      end
    end

    class ListWorkflowRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListWorkflowRunsOutput, context: context)
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        WorkflowRunSummaries.validate!(input.items, context: "#{context}[:items]") unless input.items.nil?
      end
    end

    class ListWorkflowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListWorkflowsInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate_types!(input.max_results, ::Integer, context: "#{context}[:max_results]")
        WorkflowSortCriteriaList.validate!(input.sort_by, context: "#{context}[:sort_by]") unless input.sort_by.nil?
      end
    end

    class ListWorkflowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ListWorkflowsOutput, context: context)
        Hearth::Validator.validate_types!(input.next_token, ::String, context: "#{context}[:next_token]")
        WorkflowSummaries.validate!(input.items, context: "#{context}[:items]") unless input.items.nil?
      end
    end

    class PersistentStorage
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PersistentStorage, context: context)
        Hearth::Validator.validate_required!(input.size_in_gi_b, context: "#{context}[:size_in_gi_b]")
        Hearth::Validator.validate_types!(input.size_in_gi_b, ::Integer, context: "#{context}[:size_in_gi_b]")
      end
    end

    class PersistentStorageConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::PersistentStorageConfiguration, context: context)
        Hearth::Validator.validate_required!(input.size_in_gi_b, context: "#{context}[:size_in_gi_b]")
        Hearth::Validator.validate_types!(input.size_in_gi_b, ::Integer, context: "#{context}[:size_in_gi_b]")
      end
    end

    class ProjectInformation
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ProjectInformation, context: context)
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.project_id, ::String, context: "#{context}[:project_id]")
      end
    end

    class ProjectListFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ProjectListFilter, context: context)
        Hearth::Validator.validate_required!(input.key, context: "#{context}[:key]")
        Hearth::Validator.validate_types!(input.key, ::String, context: "#{context}[:key]")
        Hearth::Validator.validate_required!(input.values, context: "#{context}[:values]")
        StringList.validate!(input.values, context: "#{context}[:values]") unless input.values.nil?
        Hearth::Validator.validate_types!(input.comparison_operator, ::String, context: "#{context}[:comparison_operator]")
      end
    end

    class ProjectListFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProjectListFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProjectSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProjectSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProjectSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ProjectSummary, context: context)
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.display_name, ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate_types!(input.description, ::String, context: "#{context}[:description]")
      end
    end

    class RepositoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RepositoryInput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::RepositoryInput, context: context)
        Hearth::Validator.validate_required!(input.repository_name, context: "#{context}[:repository_name]")
        Hearth::Validator.validate_types!(input.repository_name, ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate_types!(input.branch_name, ::String, context: "#{context}[:branch_name]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate_required!(input.message, context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate_required!(input.message, context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class SpaceSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SpaceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SpaceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::SpaceSummary, context: context)
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_required!(input.region_name, context: "#{context}[:region_name]")
        Hearth::Validator.validate_types!(input.region_name, ::String, context: "#{context}[:region_name]")
        Hearth::Validator.validate_types!(input.display_name, ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate_types!(input.description, ::String, context: "#{context}[:description]")
      end
    end

    class StartDevEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartDevEnvironmentInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        IdeConfigurationList.validate!(input.ides, context: "#{context}[:ides]") unless input.ides.nil?
        Hearth::Validator.validate_types!(input.instance_type, ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate_types!(input.inactivity_timeout_minutes, ::Integer, context: "#{context}[:inactivity_timeout_minutes]")
      end
    end

    class StartDevEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartDevEnvironmentOutput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.status, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input.status, ::String, context: "#{context}[:status]")
      end
    end

    class StartDevEnvironmentSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartDevEnvironmentSessionInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.session_configuration, context: "#{context}[:session_configuration]")
        DevEnvironmentSessionConfiguration.validate!(input.session_configuration, context: "#{context}[:session_configuration]") unless input.session_configuration.nil?
      end
    end

    class StartDevEnvironmentSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartDevEnvironmentSessionOutput, context: context)
        Hearth::Validator.validate_required!(input.access_details, context: "#{context}[:access_details]")
        DevEnvironmentAccessDetails.validate!(input.access_details, context: "#{context}[:access_details]") unless input.access_details.nil?
        Hearth::Validator.validate_types!(input.session_id, ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
      end
    end

    class StartWorkflowRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartWorkflowRunInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.workflow_id, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate_types!(input.workflow_id, ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate_types!(input.client_token, ::String, context: "#{context}[:client_token]")
      end
    end

    class StartWorkflowRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StartWorkflowRunOutput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.workflow_id, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate_types!(input.workflow_id, ::String, context: "#{context}[:workflow_id]")
      end
    end

    class StopDevEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StopDevEnvironmentInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
      end
    end

    class StopDevEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StopDevEnvironmentOutput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.status, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input.status, ::String, context: "#{context}[:status]")
      end
    end

    class StopDevEnvironmentSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StopDevEnvironmentSessionInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.session_id, context: "#{context}[:session_id]")
        Hearth::Validator.validate_types!(input.session_id, ::String, context: "#{context}[:session_id]")
      end
    end

    class StopDevEnvironmentSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::StopDevEnvironmentSessionOutput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.session_id, context: "#{context}[:session_id]")
        Hearth::Validator.validate_types!(input.session_id, ::String, context: "#{context}[:session_id]")
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate_types!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate_required!(input.message, context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class UpdateDevEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateDevEnvironmentInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.alias, ::String, context: "#{context}[:alias]")
        IdeConfigurationList.validate!(input.ides, context: "#{context}[:ides]") unless input.ides.nil?
        Hearth::Validator.validate_types!(input.instance_type, ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate_types!(input.inactivity_timeout_minutes, ::Integer, context: "#{context}[:inactivity_timeout_minutes]")
        Hearth::Validator.validate_types!(input.client_token, ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateDevEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateDevEnvironmentOutput, context: context)
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.project_name, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.project_name, ::String, context: "#{context}[:project_name]")
        Hearth::Validator.validate_types!(input.alias, ::String, context: "#{context}[:alias]")
        IdeConfigurationList.validate!(input.ides, context: "#{context}[:ides]") unless input.ides.nil?
        Hearth::Validator.validate_types!(input.instance_type, ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate_types!(input.inactivity_timeout_minutes, ::Integer, context: "#{context}[:inactivity_timeout_minutes]")
        Hearth::Validator.validate_types!(input.client_token, ::String, context: "#{context}[:client_token]")
      end
    end

    class UpdateProjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateProjectInput, context: context)
        Hearth::Validator.validate_required!(input.space_name, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.description, ::String, context: "#{context}[:description]")
      end
    end

    class UpdateProjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateProjectOutput, context: context)
        Hearth::Validator.validate_types!(input.space_name, ::String, context: "#{context}[:space_name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.display_name, ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate_types!(input.description, ::String, context: "#{context}[:description]")
      end
    end

    class UpdateSpaceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateSpaceInput, context: context)
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.description, ::String, context: "#{context}[:description]")
      end
    end

    class UpdateSpaceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UpdateSpaceOutput, context: context)
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.display_name, ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate_types!(input.description, ::String, context: "#{context}[:description]")
      end
    end

    class UserIdentity
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::UserIdentity, context: context)
        Hearth::Validator.validate_required!(input.user_type, context: "#{context}[:user_type]")
        Hearth::Validator.validate_types!(input.user_type, ::String, context: "#{context}[:user_type]")
        Hearth::Validator.validate_required!(input.principal_id, context: "#{context}[:principal_id]")
        Hearth::Validator.validate_types!(input.principal_id, ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate_types!(input.user_name, ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate_types!(input.aws_account_id, ::String, context: "#{context}[:aws_account_id]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate_required!(input.message, context: "#{context}[:message]")
        Hearth::Validator.validate_types!(input.message, ::String, context: "#{context}[:message]")
      end
    end

    class VerifySessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::VerifySessionInput, context: context)
      end
    end

    class VerifySessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::VerifySessionOutput, context: context)
        Hearth::Validator.validate_types!(input.identity, ::String, context: "#{context}[:identity]")
      end
    end

    class WorkflowDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::WorkflowDefinition, context: context)
        Hearth::Validator.validate_required!(input.path, context: "#{context}[:path]")
        Hearth::Validator.validate_types!(input.path, ::String, context: "#{context}[:path]")
      end
    end

    class WorkflowDefinitionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::WorkflowDefinitionSummary, context: context)
        Hearth::Validator.validate_required!(input.path, context: "#{context}[:path]")
        Hearth::Validator.validate_types!(input.path, ::String, context: "#{context}[:path]")
      end
    end

    class WorkflowRunSortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::WorkflowRunSortCriteria, context: context)
      end
    end

    class WorkflowRunSortCriteriaList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorkflowRunSortCriteria.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkflowRunStatusReason
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::WorkflowRunStatusReason, context: context)
      end
    end

    class WorkflowRunStatusReasons
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorkflowRunStatusReason.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkflowRunSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorkflowRunSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkflowRunSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::WorkflowRunSummary, context: context)
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.workflow_id, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate_types!(input.workflow_id, ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate_required!(input.workflow_name, context: "#{context}[:workflow_name]")
        Hearth::Validator.validate_types!(input.workflow_name, ::String, context: "#{context}[:workflow_name]")
        Hearth::Validator.validate_required!(input.status, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input.status, ::String, context: "#{context}[:status]")
        WorkflowRunStatusReasons.validate!(input.status_reasons, context: "#{context}[:status_reasons]") unless input.status_reasons.nil?
        Hearth::Validator.validate_required!(input.start_time, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input.start_time, ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate_types!(input.end_time, ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate_required!(input.last_updated_time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_types!(input.last_updated_time, ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class WorkflowSortCriteria
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::WorkflowSortCriteria, context: context)
      end
    end

    class WorkflowSortCriteriaList
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorkflowSortCriteria.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkflowSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          WorkflowSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkflowSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate_types!(input, Types::WorkflowSummary, context: context)
        Hearth::Validator.validate_required!(input.id, context: "#{context}[:id]")
        Hearth::Validator.validate_types!(input.id, ::String, context: "#{context}[:id]")
        Hearth::Validator.validate_required!(input.name, context: "#{context}[:name]")
        Hearth::Validator.validate_types!(input.name, ::String, context: "#{context}[:name]")
        Hearth::Validator.validate_required!(input.source_repository_name, context: "#{context}[:source_repository_name]")
        Hearth::Validator.validate_types!(input.source_repository_name, ::String, context: "#{context}[:source_repository_name]")
        Hearth::Validator.validate_required!(input.source_branch_name, context: "#{context}[:source_branch_name]")
        Hearth::Validator.validate_types!(input.source_branch_name, ::String, context: "#{context}[:source_branch_name]")
        Hearth::Validator.validate_required!(input.definition, context: "#{context}[:definition]")
        WorkflowDefinitionSummary.validate!(input.definition, context: "#{context}[:definition]") unless input.definition.nil?
        Hearth::Validator.validate_required!(input.created_time, context: "#{context}[:created_time]")
        Hearth::Validator.validate_types!(input.created_time, ::Time, context: "#{context}[:created_time]")
        Hearth::Validator.validate_required!(input.last_updated_time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_types!(input.last_updated_time, ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate_required!(input.run_mode, context: "#{context}[:run_mode]")
        Hearth::Validator.validate_types!(input.run_mode, ::String, context: "#{context}[:run_mode]")
        Hearth::Validator.validate_required!(input.status, context: "#{context}[:status]")
        Hearth::Validator.validate_types!(input.status, ::String, context: "#{context}[:status]")
      end
    end

  end
end
