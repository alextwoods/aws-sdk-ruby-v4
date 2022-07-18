# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::MigrationHub
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApplicationIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ApplicationState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationState, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:application_status], ::String, context: "#{context}[:application_status]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class ApplicationStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApplicationState.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociateCreatedArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateCreatedArtifactInput, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream], ::String, context: "#{context}[:progress_update_stream]")
        Hearth::Validator.validate!(input[:migration_task_name], ::String, context: "#{context}[:migration_task_name]")
        CreatedArtifact.validate!(input[:created_artifact], context: "#{context}[:created_artifact]") unless input[:created_artifact].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AssociateCreatedArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateCreatedArtifactOutput, context: context)
      end
    end

    class AssociateDiscoveredResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDiscoveredResourceInput, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream], ::String, context: "#{context}[:progress_update_stream]")
        Hearth::Validator.validate!(input[:migration_task_name], ::String, context: "#{context}[:migration_task_name]")
        DiscoveredResource.validate!(input[:discovered_resource], context: "#{context}[:discovered_resource]") unless input[:discovered_resource].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class AssociateDiscoveredResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateDiscoveredResourceOutput, context: context)
      end
    end

    class CreateProgressUpdateStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProgressUpdateStreamInput, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream_name], ::String, context: "#{context}[:progress_update_stream_name]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class CreateProgressUpdateStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProgressUpdateStreamOutput, context: context)
      end
    end

    class CreatedArtifact
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatedArtifact, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class CreatedArtifactList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CreatedArtifact.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteProgressUpdateStreamInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProgressUpdateStreamInput, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream_name], ::String, context: "#{context}[:progress_update_stream_name]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DeleteProgressUpdateStreamOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProgressUpdateStreamOutput, context: context)
      end
    end

    class DescribeApplicationStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationStateInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DescribeApplicationStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeApplicationStateOutput, context: context)
        Hearth::Validator.validate!(input[:application_status], ::String, context: "#{context}[:application_status]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class DescribeMigrationTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMigrationTaskInput, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream], ::String, context: "#{context}[:progress_update_stream]")
        Hearth::Validator.validate!(input[:migration_task_name], ::String, context: "#{context}[:migration_task_name]")
      end
    end

    class DescribeMigrationTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMigrationTaskOutput, context: context)
        MigrationTask.validate!(input[:migration_task], context: "#{context}[:migration_task]") unless input[:migration_task].nil?
      end
    end

    class DisassociateCreatedArtifactInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateCreatedArtifactInput, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream], ::String, context: "#{context}[:progress_update_stream]")
        Hearth::Validator.validate!(input[:migration_task_name], ::String, context: "#{context}[:migration_task_name]")
        Hearth::Validator.validate!(input[:created_artifact_name], ::String, context: "#{context}[:created_artifact_name]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisassociateCreatedArtifactOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateCreatedArtifactOutput, context: context)
      end
    end

    class DisassociateDiscoveredResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDiscoveredResourceInput, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream], ::String, context: "#{context}[:progress_update_stream]")
        Hearth::Validator.validate!(input[:migration_task_name], ::String, context: "#{context}[:migration_task_name]")
        Hearth::Validator.validate!(input[:configuration_id], ::String, context: "#{context}[:configuration_id]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class DisassociateDiscoveredResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateDiscoveredResourceOutput, context: context)
      end
    end

    class DiscoveredResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DiscoveredResource, context: context)
        Hearth::Validator.validate!(input[:configuration_id], ::String, context: "#{context}[:configuration_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class DiscoveredResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DiscoveredResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DryRunOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DryRunOperation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HomeRegionNotSetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HomeRegionNotSetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ImportMigrationTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportMigrationTaskInput, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream], ::String, context: "#{context}[:progress_update_stream]")
        Hearth::Validator.validate!(input[:migration_task_name], ::String, context: "#{context}[:migration_task_name]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class ImportMigrationTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportMigrationTaskOutput, context: context)
      end
    end

    class InternalServerError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LatestResourceAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListApplicationStatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationStatesInput, context: context)
        ApplicationIds.validate!(input[:application_ids], context: "#{context}[:application_ids]") unless input[:application_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListApplicationStatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationStatesOutput, context: context)
        ApplicationStateList.validate!(input[:application_state_list], context: "#{context}[:application_state_list]") unless input[:application_state_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCreatedArtifactsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCreatedArtifactsInput, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream], ::String, context: "#{context}[:progress_update_stream]")
        Hearth::Validator.validate!(input[:migration_task_name], ::String, context: "#{context}[:migration_task_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListCreatedArtifactsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCreatedArtifactsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        CreatedArtifactList.validate!(input[:created_artifact_list], context: "#{context}[:created_artifact_list]") unless input[:created_artifact_list].nil?
      end
    end

    class ListDiscoveredResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDiscoveredResourcesInput, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream], ::String, context: "#{context}[:progress_update_stream]")
        Hearth::Validator.validate!(input[:migration_task_name], ::String, context: "#{context}[:migration_task_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDiscoveredResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDiscoveredResourcesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        DiscoveredResourceList.validate!(input[:discovered_resource_list], context: "#{context}[:discovered_resource_list]") unless input[:discovered_resource_list].nil?
      end
    end

    class ListMigrationTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMigrationTasksInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class ListMigrationTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMigrationTasksOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        MigrationTaskSummaryList.validate!(input[:migration_task_summary_list], context: "#{context}[:migration_task_summary_list]") unless input[:migration_task_summary_list].nil?
      end
    end

    class ListProgressUpdateStreamsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProgressUpdateStreamsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProgressUpdateStreamsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProgressUpdateStreamsOutput, context: context)
        ProgressUpdateStreamSummaryList.validate!(input[:progress_update_stream_summary_list], context: "#{context}[:progress_update_stream_summary_list]") unless input[:progress_update_stream_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MigrationTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MigrationTask, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream], ::String, context: "#{context}[:progress_update_stream]")
        Hearth::Validator.validate!(input[:migration_task_name], ::String, context: "#{context}[:migration_task_name]")
        Task.validate!(input[:task], context: "#{context}[:task]") unless input[:task].nil?
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
        LatestResourceAttributeList.validate!(input[:resource_attribute_list], context: "#{context}[:resource_attribute_list]") unless input[:resource_attribute_list].nil?
      end
    end

    class MigrationTaskSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MigrationTaskSummary, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream], ::String, context: "#{context}[:progress_update_stream]")
        Hearth::Validator.validate!(input[:migration_task_name], ::String, context: "#{context}[:migration_task_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:progress_percent], ::Integer, context: "#{context}[:progress_percent]")
        Hearth::Validator.validate!(input[:status_detail], ::String, context: "#{context}[:status_detail]")
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
      end
    end

    class MigrationTaskSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MigrationTaskSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotifyApplicationStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyApplicationStateInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class NotifyApplicationStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyApplicationStateOutput, context: context)
      end
    end

    class NotifyMigrationTaskStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyMigrationTaskStateInput, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream], ::String, context: "#{context}[:progress_update_stream]")
        Hearth::Validator.validate!(input[:migration_task_name], ::String, context: "#{context}[:migration_task_name]")
        Task.validate!(input[:task], context: "#{context}[:task]") unless input[:task].nil?
        Hearth::Validator.validate!(input[:update_date_time], ::Time, context: "#{context}[:update_date_time]")
        Hearth::Validator.validate!(input[:next_update_seconds], ::Integer, context: "#{context}[:next_update_seconds]")
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class NotifyMigrationTaskStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyMigrationTaskStateOutput, context: context)
      end
    end

    class PolicyErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PolicyErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProgressUpdateStreamSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProgressUpdateStreamSummary, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream_name], ::String, context: "#{context}[:progress_update_stream_name]")
      end
    end

    class ProgressUpdateStreamSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProgressUpdateStreamSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutResourceAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourceAttributesInput, context: context)
        Hearth::Validator.validate!(input[:progress_update_stream], ::String, context: "#{context}[:progress_update_stream]")
        Hearth::Validator.validate!(input[:migration_task_name], ::String, context: "#{context}[:migration_task_name]")
        ResourceAttributeList.validate!(input[:resource_attribute_list], context: "#{context}[:resource_attribute_list]") unless input[:resource_attribute_list].nil?
        Hearth::Validator.validate!(input[:dry_run], ::TrueClass, ::FalseClass, context: "#{context}[:dry_run]")
      end
    end

    class PutResourceAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourceAttributesOutput, context: context)
      end
    end

    class ResourceAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAttribute, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class ResourceAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Task
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Task, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_detail], ::String, context: "#{context}[:status_detail]")
        Hearth::Validator.validate!(input[:progress_percent], ::Integer, context: "#{context}[:progress_percent]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class UnauthorizedOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedOperation, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
