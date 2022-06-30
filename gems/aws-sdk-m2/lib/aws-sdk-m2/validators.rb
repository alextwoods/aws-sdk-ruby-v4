# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::M2
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AlternateKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlternateKey, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:offset], ::Integer, context: "#{context}[:offset]")
        Hearth::Validator.validate!(input[:length], ::Integer, context: "#{context}[:length]")
        Hearth::Validator.validate!(input[:allow_duplicates], ::TrueClass, ::FalseClass, context: "#{context}[:allow_duplicates]")
      end
    end

    class AlternateKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AlternateKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_version], ::Integer, context: "#{context}[:application_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:last_start_time], ::Time, context: "#{context}[:last_start_time]")
        Hearth::Validator.validate!(input[:version_status], ::String, context: "#{context}[:version_status]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
      end
    end

    class ApplicationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ApplicationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationVersionSummary, context: context)
        Hearth::Validator.validate!(input[:application_version], ::Integer, context: "#{context}[:application_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class ApplicationVersionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ApplicationVersionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BatchJobDefinition
      def self.validate!(input, context:)
        case input
        when Types::BatchJobDefinition::FileBatchJobDefinition
          Validators::FileBatchJobDefinition.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::BatchJobDefinition::ScriptBatchJobDefinition
          Validators::ScriptBatchJobDefinition.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::BatchJobDefinition, got #{input.class}."
        end
      end

      class FileBatchJobDefinition
        def self.validate!(input, context:)
          Validators::FileBatchJobDefinition.validate!(input, context: context) unless input.nil?
        end
      end

      class ScriptBatchJobDefinition
        def self.validate!(input, context:)
          Validators::ScriptBatchJobDefinition.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class BatchJobDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchJobDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchJobExecutionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchJobExecutionSummary, context: context)
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class BatchJobExecutionSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchJobExecutionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchJobIdentifier
      def self.validate!(input, context:)
        case input
        when Types::BatchJobIdentifier::FileBatchJobIdentifier
          Validators::FileBatchJobIdentifier.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::BatchJobIdentifier::ScriptBatchJobIdentifier
          Validators::ScriptBatchJobIdentifier.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::BatchJobIdentifier, got #{input.class}."
        end
      end

      class FileBatchJobIdentifier
        def self.validate!(input, context:)
          Validators::FileBatchJobIdentifier.validate!(input, context: context) unless input.nil?
        end
      end

      class ScriptBatchJobIdentifier
        def self.validate!(input, context:)
          Validators::ScriptBatchJobIdentifier.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class BatchJobParametersMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class CancelBatchJobExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelBatchJobExecutionInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
      end
    end

    class CancelBatchJobExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelBatchJobExecutionOutput, context: context)
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class CreateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Validators::Definition.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:application_version], ::Integer, context: "#{context}[:application_version]")
      end
    end

    class CreateDataSetImportTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSetImportTaskInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::DataSetImportConfig.validate!(input[:import_config], context: "#{context}[:import_config]") unless input[:import_config].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateDataSetImportTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSetImportTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class CreateDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:application_version], ::Integer, context: "#{context}[:application_version]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class CreateEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Validators::String50List.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::String50List.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Validators::StorageConfigurationList.validate!(input[:storage_configurations], context: "#{context}[:storage_configurations]") unless input[:storage_configurations].nil?
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Validators::HighAvailabilityConfig.validate!(input[:high_availability_config], context: "#{context}[:high_availability_config]") unless input[:high_availability_config].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
      end
    end

    class DataSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSet, context: context)
        Hearth::Validator.validate!(input[:storage_type], ::String, context: "#{context}[:storage_type]")
        Hearth::Validator.validate!(input[:dataset_name], ::String, context: "#{context}[:dataset_name]")
        Validators::DatasetOrgAttributes.validate!(input[:dataset_org], context: "#{context}[:dataset_org]") unless input[:dataset_org].nil?
        Hearth::Validator.validate!(input[:relative_path], ::String, context: "#{context}[:relative_path]")
        Validators::RecordLength.validate!(input[:record_length], context: "#{context}[:record_length]") unless input[:record_length].nil?
      end
    end

    class DataSetImportConfig
      def self.validate!(input, context:)
        case input
        when Types::DataSetImportConfig::S3Location
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::DataSetImportConfig::DataSets
          Validators::DataSetImportList.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::DataSetImportConfig, got #{input.class}."
        end
      end

      class S3Location
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class DataSets
        def self.validate!(input, context:)
          Validators::DataSetImportList.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class DataSetImportItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSetImportItem, context: context)
        Validators::DataSet.validate!(input[:data_set], context: "#{context}[:data_set]") unless input[:data_set].nil?
        Validators::ExternalLocation.validate!(input[:external_location], context: "#{context}[:external_location]") unless input[:external_location].nil?
      end
    end

    class DataSetImportList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataSetImportItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataSetImportSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSetImportSummary, context: context)
        Hearth::Validator.validate!(input[:total], ::Integer, context: "#{context}[:total]")
        Hearth::Validator.validate!(input[:succeeded], ::Integer, context: "#{context}[:succeeded]")
        Hearth::Validator.validate!(input[:failed], ::Integer, context: "#{context}[:failed]")
        Hearth::Validator.validate!(input[:pending], ::Integer, context: "#{context}[:pending]")
        Hearth::Validator.validate!(input[:in_progress], ::Integer, context: "#{context}[:in_progress]")
      end
    end

    class DataSetImportTask
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSetImportTask, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::DataSetImportSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class DataSetImportTaskList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataSetImportTask.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataSetSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSetSummary, context: context)
        Hearth::Validator.validate!(input[:data_set_name], ::String, context: "#{context}[:data_set_name]")
        Hearth::Validator.validate!(input[:data_set_org], ::String, context: "#{context}[:data_set_org]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:last_referenced_time], ::Time, context: "#{context}[:last_referenced_time]")
      end
    end

    class DataSetsSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataSetSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DatasetDetailOrgAttributes
      def self.validate!(input, context:)
        case input
        when Types::DatasetDetailOrgAttributes::Vsam
          Validators::VsamDetailAttributes.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DatasetDetailOrgAttributes::Gdg
          Validators::GdgDetailAttributes.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::DatasetDetailOrgAttributes, got #{input.class}."
        end
      end

      class Vsam
        def self.validate!(input, context:)
          Validators::VsamDetailAttributes.validate!(input, context: context) unless input.nil?
        end
      end

      class Gdg
        def self.validate!(input, context:)
          Validators::GdgDetailAttributes.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class DatasetOrgAttributes
      def self.validate!(input, context:)
        case input
        when Types::DatasetOrgAttributes::Vsam
          Validators::VsamAttributes.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::DatasetOrgAttributes::Gdg
          Validators::GdgAttributes.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::DatasetOrgAttributes, got #{input.class}."
        end
      end

      class Vsam
        def self.validate!(input, context:)
          Validators::VsamAttributes.validate!(input, context: context) unless input.nil?
        end
      end

      class Gdg
        def self.validate!(input, context:)
          Validators::GdgAttributes.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class Definition
      def self.validate!(input, context:)
        case input
        when Types::Definition::S3Location
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        when Types::Definition::Content
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::Definition, got #{input.class}."
        end
      end

      class S3Location
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end

      class Content
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class DeleteApplicationFromEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationFromEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
      end
    end

    class DeleteApplicationFromEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationFromEnvironmentOutput, context: context)
      end
    end

    class DeleteApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class DeleteApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationOutput, context: context)
      end
    end

    class DeleteEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
      end
    end

    class DeleteEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentOutput, context: context)
      end
    end

    class DeployedVersionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeployedVersionSummary, context: context)
        Hearth::Validator.validate!(input[:application_version], ::Integer, context: "#{context}[:application_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class DeploymentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DeploymentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeploymentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentSummary, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:application_version], ::Integer, context: "#{context}[:application_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class EfsStorageConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EfsStorageConfiguration, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:mount_point], ::String, context: "#{context}[:mount_point]")
      end
    end

    class EngineVersionsSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EngineVersionsSummary, context: context)
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
      end
    end

    class EngineVersionsSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EngineVersionsSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EntityNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EnvironmentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:environment_arn], ::String, context: "#{context}[:environment_arn]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class EnvironmentSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EnvironmentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExternalLocation
      def self.validate!(input, context:)
        case input
        when Types::ExternalLocation::S3Location
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::ExternalLocation, got #{input.class}."
        end
      end

      class S3Location
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class FileBatchJobDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileBatchJobDefinition, context: context)
        Hearth::Validator.validate!(input[:file_name], ::String, context: "#{context}[:file_name]")
        Hearth::Validator.validate!(input[:folder_path], ::String, context: "#{context}[:folder_path]")
      end
    end

    class FileBatchJobIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileBatchJobIdentifier, context: context)
        Hearth::Validator.validate!(input[:file_name], ::String, context: "#{context}[:file_name]")
        Hearth::Validator.validate!(input[:folder_path], ::String, context: "#{context}[:folder_path]")
      end
    end

    class FsxStorageConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FsxStorageConfiguration, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:mount_point], ::String, context: "#{context}[:mount_point]")
      end
    end

    class GdgAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GdgAttributes, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:roll_disposition], ::String, context: "#{context}[:roll_disposition]")
      end
    end

    class GdgDetailAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GdgDetailAttributes, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:roll_disposition], ::String, context: "#{context}[:roll_disposition]")
      end
    end

    class GetApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:application_arn], ::String, context: "#{context}[:application_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ApplicationVersionSummary.validate!(input[:latest_version], context: "#{context}[:latest_version]") unless input[:latest_version].nil?
        Validators::DeployedVersionSummary.validate!(input[:deployed_version], context: "#{context}[:deployed_version]") unless input[:deployed_version].nil?
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Validators::LogGroupSummaries.validate!(input[:log_groups], context: "#{context}[:log_groups]") unless input[:log_groups].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_start_time], ::Time, context: "#{context}[:last_start_time]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Validators::ArnList.validate!(input[:target_group_arns], context: "#{context}[:target_group_arns]") unless input[:target_group_arns].nil?
        Validators::ArnList.validate!(input[:listener_arns], context: "#{context}[:listener_arns]") unless input[:listener_arns].nil?
        Validators::PortList.validate!(input[:listener_ports], context: "#{context}[:listener_ports]") unless input[:listener_ports].nil?
        Hearth::Validator.validate!(input[:load_balancer_dns_name], ::String, context: "#{context}[:load_balancer_dns_name]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class GetApplicationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationVersionInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:application_version], ::Integer, context: "#{context}[:application_version]")
      end
    end

    class GetApplicationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationVersionOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:application_version], ::Integer, context: "#{context}[:application_version]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:definition_content], ::String, context: "#{context}[:definition_content]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class GetBatchJobExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBatchJobExecutionInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
      end
    end

    class GetBatchJobExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBatchJobExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:job_user], ::String, context: "#{context}[:job_user]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class GetDataSetDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataSetDetailsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:data_set_name], ::String, context: "#{context}[:data_set_name]")
      end
    end

    class GetDataSetDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataSetDetailsOutput, context: context)
        Hearth::Validator.validate!(input[:data_set_name], ::String, context: "#{context}[:data_set_name]")
        Validators::DatasetDetailOrgAttributes.validate!(input[:data_set_org], context: "#{context}[:data_set_org]") unless input[:data_set_org].nil?
        Hearth::Validator.validate!(input[:record_length], ::Integer, context: "#{context}[:record_length]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:blocksize], ::Integer, context: "#{context}[:blocksize]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:last_referenced_time], ::Time, context: "#{context}[:last_referenced_time]")
      end
    end

    class GetDataSetImportTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataSetImportTaskInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
      end
    end

    class GetDataSetImportTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataSetImportTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_id], ::String, context: "#{context}[:task_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::DataSetImportSummary.validate!(input[:summary], context: "#{context}[:summary]") unless input[:summary].nil?
      end
    end

    class GetDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class GetDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:application_version], ::Integer, context: "#{context}[:application_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
      end
    end

    class GetEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
      end
    end

    class GetEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:environment_arn], ::String, context: "#{context}[:environment_arn]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Validators::String50List.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::String50List.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Validators::StorageConfigurationList.validate!(input[:storage_configurations], context: "#{context}[:storage_configurations]") unless input[:storage_configurations].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::HighAvailabilityConfig.validate!(input[:high_availability_config], context: "#{context}[:high_availability_config]") unless input[:high_availability_config].nil?
        Hearth::Validator.validate!(input[:publicly_accessible], ::TrueClass, ::FalseClass, context: "#{context}[:publicly_accessible]")
        Hearth::Validator.validate!(input[:actual_capacity], ::Integer, context: "#{context}[:actual_capacity]")
        Hearth::Validator.validate!(input[:load_balancer_arn], ::String, context: "#{context}[:load_balancer_arn]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Validators::PendingMaintenance.validate!(input[:pending_maintenance], context: "#{context}[:pending_maintenance]") unless input[:pending_maintenance].nil?
      end
    end

    class HighAvailabilityConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HighAvailabilityConfig, context: context)
        Hearth::Validator.validate!(input[:desired_capacity], ::Integer, context: "#{context}[:desired_capacity]")
      end
    end

    class IdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class ListApplicationVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationVersionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class ListApplicationVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationVersionsOutput, context: context)
        Validators::ApplicationVersionSummaryList.validate!(input[:application_versions], context: "#{context}[:application_versions]") unless input[:application_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::EntityNameList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
      end
    end

    class ListApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsOutput, context: context)
        Validators::ApplicationSummaryList.validate!(input[:applications], context: "#{context}[:applications]") unless input[:applications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBatchJobDefinitionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBatchJobDefinitionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class ListBatchJobDefinitionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBatchJobDefinitionsOutput, context: context)
        Validators::BatchJobDefinitions.validate!(input[:batch_job_definitions], context: "#{context}[:batch_job_definitions]") unless input[:batch_job_definitions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBatchJobExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBatchJobExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::IdentifierList.validate!(input[:execution_ids], context: "#{context}[:execution_ids]") unless input[:execution_ids].nil?
        Hearth::Validator.validate!(input[:job_name], ::String, context: "#{context}[:job_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:started_after], ::Time, context: "#{context}[:started_after]")
        Hearth::Validator.validate!(input[:started_before], ::Time, context: "#{context}[:started_before]")
      end
    end

    class ListBatchJobExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBatchJobExecutionsOutput, context: context)
        Validators::BatchJobExecutionSummaryList.validate!(input[:batch_job_executions], context: "#{context}[:batch_job_executions]") unless input[:batch_job_executions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDataSetImportHistoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSetImportHistoryInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class ListDataSetImportHistoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSetImportHistoryOutput, context: context)
        Validators::DataSetImportTaskList.validate!(input[:data_set_import_tasks], context: "#{context}[:data_set_import_tasks]") unless input[:data_set_import_tasks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDataSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSetsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:prefix], ::String, context: "#{context}[:prefix]")
      end
    end

    class ListDataSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSetsOutput, context: context)
        Validators::DataSetsSummaryList.validate!(input[:data_sets], context: "#{context}[:data_sets]") unless input[:data_sets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDeploymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class ListDeploymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDeploymentsOutput, context: context)
        Validators::DeploymentList.validate!(input[:deployments], context: "#{context}[:deployments]") unless input[:deployments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEngineVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEngineVersionsInput, context: context)
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEngineVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEngineVersionsOutput, context: context)
        Validators::EngineVersionsSummaryList.validate!(input[:engine_versions], context: "#{context}[:engine_versions]") unless input[:engine_versions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEnvironmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::EntityNameList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:engine_type], ::String, context: "#{context}[:engine_type]")
      end
    end

    class ListEnvironmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentsOutput, context: context)
        Validators::EnvironmentSummaryList.validate!(input[:environments], context: "#{context}[:environments]") unless input[:environments].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LogGroupSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LogGroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LogGroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogGroupSummary, context: context)
        Hearth::Validator.validate!(input[:log_type], ::String, context: "#{context}[:log_type]")
        Hearth::Validator.validate!(input[:log_group_name], ::String, context: "#{context}[:log_group_name]")
      end
    end

    class MaintenanceSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaintenanceSchedule, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class PendingMaintenance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PendingMaintenance, context: context)
        Validators::MaintenanceSchedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
      end
    end

    class PortList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class PrimaryKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrimaryKey, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:offset], ::Integer, context: "#{context}[:offset]")
        Hearth::Validator.validate!(input[:length], ::Integer, context: "#{context}[:length]")
      end
    end

    class RecordLength
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecordLength, context: context)
        Hearth::Validator.validate!(input[:min], ::Integer, context: "#{context}[:min]")
        Hearth::Validator.validate!(input[:max], ::Integer, context: "#{context}[:max]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ScriptBatchJobDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScriptBatchJobDefinition, context: context)
        Hearth::Validator.validate!(input[:script_name], ::String, context: "#{context}[:script_name]")
      end
    end

    class ScriptBatchJobIdentifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScriptBatchJobIdentifier, context: context)
        Hearth::Validator.validate!(input[:script_name], ::String, context: "#{context}[:script_name]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
      end
    end

    class StartApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class StartApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartApplicationOutput, context: context)
      end
    end

    class StartBatchJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBatchJobInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Validators::BatchJobIdentifier.validate!(input[:batch_job_identifier], context: "#{context}[:batch_job_identifier]") unless input[:batch_job_identifier].nil?
        Validators::BatchJobParametersMap.validate!(input[:job_params], context: "#{context}[:job_params]") unless input[:job_params].nil?
      end
    end

    class StartBatchJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartBatchJobOutput, context: context)
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
      end
    end

    class StopApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:force_stop], ::TrueClass, ::FalseClass, context: "#{context}[:force_stop]")
      end
    end

    class StopApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopApplicationOutput, context: context)
      end
    end

    class StorageConfiguration
      def self.validate!(input, context:)
        case input
        when Types::StorageConfiguration::Efs
          Validators::EfsStorageConfiguration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::StorageConfiguration::Fsx
          Validators::FsxStorageConfiguration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::StorageConfiguration, got #{input.class}."
        end
      end

      class Efs
        def self.validate!(input, context:)
          Validators::EfsStorageConfiguration.validate!(input, context: context) unless input.nil?
        end
      end

      class Fsx
        def self.validate!(input, context:)
          Validators::FsxStorageConfiguration.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class StorageConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::StorageConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class String50List
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:current_application_version], ::Integer, context: "#{context}[:current_application_version]")
        Validators::Definition.validate!(input[:definition], context: "#{context}[:definition]") unless input[:definition].nil?
      end
    end

    class UpdateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:application_version], ::Integer, context: "#{context}[:application_version]")
      end
    end

    class UpdateEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:desired_capacity], ::Integer, context: "#{context}[:desired_capacity]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:engine_version], ::String, context: "#{context}[:engine_version]")
        Hearth::Validator.validate!(input[:preferred_maintenance_window], ::String, context: "#{context}[:preferred_maintenance_window]")
        Hearth::Validator.validate!(input[:apply_during_maintenance_window], ::TrueClass, ::FalseClass, context: "#{context}[:apply_during_maintenance_window]")
      end
    end

    class UpdateEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:field_list], context: "#{context}[:field_list]") unless input[:field_list].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VsamAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VsamAttributes, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:encoding], ::String, context: "#{context}[:encoding]")
        Hearth::Validator.validate!(input[:compressed], ::TrueClass, ::FalseClass, context: "#{context}[:compressed]")
        Validators::PrimaryKey.validate!(input[:primary_key], context: "#{context}[:primary_key]") unless input[:primary_key].nil?
        Validators::AlternateKeyList.validate!(input[:alternate_keys], context: "#{context}[:alternate_keys]") unless input[:alternate_keys].nil?
      end
    end

    class VsamDetailAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VsamDetailAttributes, context: context)
        Hearth::Validator.validate!(input[:encoding], ::String, context: "#{context}[:encoding]")
        Hearth::Validator.validate!(input[:record_format], ::String, context: "#{context}[:record_format]")
        Hearth::Validator.validate!(input[:compressed], ::TrueClass, ::FalseClass, context: "#{context}[:compressed]")
        Hearth::Validator.validate!(input[:cache_at_startup], ::TrueClass, ::FalseClass, context: "#{context}[:cache_at_startup]")
        Validators::PrimaryKey.validate!(input[:primary_key], context: "#{context}[:primary_key]") unless input[:primary_key].nil?
        Validators::AlternateKeyList.validate!(input[:alternate_keys], context: "#{context}[:alternate_keys]") unless input[:alternate_keys].nil?
      end
    end

  end
end
