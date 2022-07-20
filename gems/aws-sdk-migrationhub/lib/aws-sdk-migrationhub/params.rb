# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MigrationHub
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module ApplicationIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ApplicationState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationState, context: context)
        type = Types::ApplicationState.new
        type.application_id = params[:application_id]
        type.application_status = params[:application_status]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module ApplicationStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationState.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociateCreatedArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateCreatedArtifactInput, context: context)
        type = Types::AssociateCreatedArtifactInput.new
        type.progress_update_stream = params[:progress_update_stream]
        type.migration_task_name = params[:migration_task_name]
        type.created_artifact = CreatedArtifact.build(params[:created_artifact], context: "#{context}[:created_artifact]") unless params[:created_artifact].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AssociateCreatedArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateCreatedArtifactOutput, context: context)
        type = Types::AssociateCreatedArtifactOutput.new
        type
      end
    end

    module AssociateDiscoveredResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDiscoveredResourceInput, context: context)
        type = Types::AssociateDiscoveredResourceInput.new
        type.progress_update_stream = params[:progress_update_stream]
        type.migration_task_name = params[:migration_task_name]
        type.discovered_resource = DiscoveredResource.build(params[:discovered_resource], context: "#{context}[:discovered_resource]") unless params[:discovered_resource].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module AssociateDiscoveredResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateDiscoveredResourceOutput, context: context)
        type = Types::AssociateDiscoveredResourceOutput.new
        type
      end
    end

    module CreateProgressUpdateStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProgressUpdateStreamInput, context: context)
        type = Types::CreateProgressUpdateStreamInput.new
        type.progress_update_stream_name = params[:progress_update_stream_name]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module CreateProgressUpdateStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProgressUpdateStreamOutput, context: context)
        type = Types::CreateProgressUpdateStreamOutput.new
        type
      end
    end

    module CreatedArtifact
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatedArtifact, context: context)
        type = Types::CreatedArtifact.new
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module CreatedArtifactList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CreatedArtifact.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteProgressUpdateStreamInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProgressUpdateStreamInput, context: context)
        type = Types::DeleteProgressUpdateStreamInput.new
        type.progress_update_stream_name = params[:progress_update_stream_name]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DeleteProgressUpdateStreamOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProgressUpdateStreamOutput, context: context)
        type = Types::DeleteProgressUpdateStreamOutput.new
        type
      end
    end

    module DescribeApplicationStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationStateInput, context: context)
        type = Types::DescribeApplicationStateInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DescribeApplicationStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeApplicationStateOutput, context: context)
        type = Types::DescribeApplicationStateOutput.new
        type.application_status = params[:application_status]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module DescribeMigrationTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMigrationTaskInput, context: context)
        type = Types::DescribeMigrationTaskInput.new
        type.progress_update_stream = params[:progress_update_stream]
        type.migration_task_name = params[:migration_task_name]
        type
      end
    end

    module DescribeMigrationTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMigrationTaskOutput, context: context)
        type = Types::DescribeMigrationTaskOutput.new
        type.migration_task = MigrationTask.build(params[:migration_task], context: "#{context}[:migration_task]") unless params[:migration_task].nil?
        type
      end
    end

    module DisassociateCreatedArtifactInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateCreatedArtifactInput, context: context)
        type = Types::DisassociateCreatedArtifactInput.new
        type.progress_update_stream = params[:progress_update_stream]
        type.migration_task_name = params[:migration_task_name]
        type.created_artifact_name = params[:created_artifact_name]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisassociateCreatedArtifactOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateCreatedArtifactOutput, context: context)
        type = Types::DisassociateCreatedArtifactOutput.new
        type
      end
    end

    module DisassociateDiscoveredResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDiscoveredResourceInput, context: context)
        type = Types::DisassociateDiscoveredResourceInput.new
        type.progress_update_stream = params[:progress_update_stream]
        type.migration_task_name = params[:migration_task_name]
        type.configuration_id = params[:configuration_id]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module DisassociateDiscoveredResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateDiscoveredResourceOutput, context: context)
        type = Types::DisassociateDiscoveredResourceOutput.new
        type
      end
    end

    module DiscoveredResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DiscoveredResource, context: context)
        type = Types::DiscoveredResource.new
        type.configuration_id = params[:configuration_id]
        type.description = params[:description]
        type
      end
    end

    module DiscoveredResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DiscoveredResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DryRunOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DryRunOperation, context: context)
        type = Types::DryRunOperation.new
        type.message = params[:message]
        type
      end
    end

    module HomeRegionNotSetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HomeRegionNotSetException, context: context)
        type = Types::HomeRegionNotSetException.new
        type.message = params[:message]
        type
      end
    end

    module ImportMigrationTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportMigrationTaskInput, context: context)
        type = Types::ImportMigrationTaskInput.new
        type.progress_update_stream = params[:progress_update_stream]
        type.migration_task_name = params[:migration_task_name]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module ImportMigrationTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportMigrationTaskOutput, context: context)
        type = Types::ImportMigrationTaskOutput.new
        type
      end
    end

    module InternalServerError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerError, context: context)
        type = Types::InternalServerError.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type
      end
    end

    module LatestResourceAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListApplicationStatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationStatesInput, context: context)
        type = Types::ListApplicationStatesInput.new
        type.application_ids = ApplicationIds.build(params[:application_ids], context: "#{context}[:application_ids]") unless params[:application_ids].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListApplicationStatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationStatesOutput, context: context)
        type = Types::ListApplicationStatesOutput.new
        type.application_state_list = ApplicationStateList.build(params[:application_state_list], context: "#{context}[:application_state_list]") unless params[:application_state_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCreatedArtifactsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCreatedArtifactsInput, context: context)
        type = Types::ListCreatedArtifactsInput.new
        type.progress_update_stream = params[:progress_update_stream]
        type.migration_task_name = params[:migration_task_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListCreatedArtifactsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCreatedArtifactsOutput, context: context)
        type = Types::ListCreatedArtifactsOutput.new
        type.next_token = params[:next_token]
        type.created_artifact_list = CreatedArtifactList.build(params[:created_artifact_list], context: "#{context}[:created_artifact_list]") unless params[:created_artifact_list].nil?
        type
      end
    end

    module ListDiscoveredResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDiscoveredResourcesInput, context: context)
        type = Types::ListDiscoveredResourcesInput.new
        type.progress_update_stream = params[:progress_update_stream]
        type.migration_task_name = params[:migration_task_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDiscoveredResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDiscoveredResourcesOutput, context: context)
        type = Types::ListDiscoveredResourcesOutput.new
        type.next_token = params[:next_token]
        type.discovered_resource_list = DiscoveredResourceList.build(params[:discovered_resource_list], context: "#{context}[:discovered_resource_list]") unless params[:discovered_resource_list].nil?
        type
      end
    end

    module ListMigrationTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMigrationTasksInput, context: context)
        type = Types::ListMigrationTasksInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module ListMigrationTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMigrationTasksOutput, context: context)
        type = Types::ListMigrationTasksOutput.new
        type.next_token = params[:next_token]
        type.migration_task_summary_list = MigrationTaskSummaryList.build(params[:migration_task_summary_list], context: "#{context}[:migration_task_summary_list]") unless params[:migration_task_summary_list].nil?
        type
      end
    end

    module ListProgressUpdateStreamsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProgressUpdateStreamsInput, context: context)
        type = Types::ListProgressUpdateStreamsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProgressUpdateStreamsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProgressUpdateStreamsOutput, context: context)
        type = Types::ListProgressUpdateStreamsOutput.new
        type.progress_update_stream_summary_list = ProgressUpdateStreamSummaryList.build(params[:progress_update_stream_summary_list], context: "#{context}[:progress_update_stream_summary_list]") unless params[:progress_update_stream_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MigrationTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MigrationTask, context: context)
        type = Types::MigrationTask.new
        type.progress_update_stream = params[:progress_update_stream]
        type.migration_task_name = params[:migration_task_name]
        type.task = Task.build(params[:task], context: "#{context}[:task]") unless params[:task].nil?
        type.update_date_time = params[:update_date_time]
        type.resource_attribute_list = LatestResourceAttributeList.build(params[:resource_attribute_list], context: "#{context}[:resource_attribute_list]") unless params[:resource_attribute_list].nil?
        type
      end
    end

    module MigrationTaskSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MigrationTaskSummary, context: context)
        type = Types::MigrationTaskSummary.new
        type.progress_update_stream = params[:progress_update_stream]
        type.migration_task_name = params[:migration_task_name]
        type.status = params[:status]
        type.progress_percent = params[:progress_percent]
        type.status_detail = params[:status_detail]
        type.update_date_time = params[:update_date_time]
        type
      end
    end

    module MigrationTaskSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MigrationTaskSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotifyApplicationStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyApplicationStateInput, context: context)
        type = Types::NotifyApplicationStateInput.new
        type.application_id = params[:application_id]
        type.status = params[:status]
        type.update_date_time = params[:update_date_time]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module NotifyApplicationStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyApplicationStateOutput, context: context)
        type = Types::NotifyApplicationStateOutput.new
        type
      end
    end

    module NotifyMigrationTaskStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyMigrationTaskStateInput, context: context)
        type = Types::NotifyMigrationTaskStateInput.new
        type.progress_update_stream = params[:progress_update_stream]
        type.migration_task_name = params[:migration_task_name]
        type.task = Task.build(params[:task], context: "#{context}[:task]") unless params[:task].nil?
        type.update_date_time = params[:update_date_time]
        type.next_update_seconds = params[:next_update_seconds]
        type.dry_run = params[:dry_run]
        type
      end
    end

    module NotifyMigrationTaskStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyMigrationTaskStateOutput, context: context)
        type = Types::NotifyMigrationTaskStateOutput.new
        type
      end
    end

    module PolicyErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PolicyErrorException, context: context)
        type = Types::PolicyErrorException.new
        type.message = params[:message]
        type
      end
    end

    module ProgressUpdateStreamSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProgressUpdateStreamSummary, context: context)
        type = Types::ProgressUpdateStreamSummary.new
        type.progress_update_stream_name = params[:progress_update_stream_name]
        type
      end
    end

    module ProgressUpdateStreamSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProgressUpdateStreamSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutResourceAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourceAttributesInput, context: context)
        type = Types::PutResourceAttributesInput.new
        type.progress_update_stream = params[:progress_update_stream]
        type.migration_task_name = params[:migration_task_name]
        type.resource_attribute_list = ResourceAttributeList.build(params[:resource_attribute_list], context: "#{context}[:resource_attribute_list]") unless params[:resource_attribute_list].nil?
        type.dry_run = params[:dry_run]
        type
      end
    end

    module PutResourceAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourceAttributesOutput, context: context)
        type = Types::PutResourceAttributesOutput.new
        type
      end
    end

    module ResourceAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAttribute, context: context)
        type = Types::ResourceAttribute.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module ResourceAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module Task
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Task, context: context)
        type = Types::Task.new
        type.status = params[:status]
        type.status_detail = params[:status_detail]
        type.progress_percent = params[:progress_percent]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module UnauthorizedOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedOperation, context: context)
        type = Types::UnauthorizedOperation.new
        type.message = params[:message]
        type
      end
    end

  end
end
