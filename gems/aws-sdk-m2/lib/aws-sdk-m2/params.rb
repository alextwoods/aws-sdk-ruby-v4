# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::M2
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AlternateKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlternateKey, context: context)
        type = Types::AlternateKey.new
        type.name = params[:name]
        type.offset = params[:offset]
        type.length = params[:length]
        type.allow_duplicates = params[:allow_duplicates]
        type
      end
    end

    module AlternateKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AlternateKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationSummary, context: context)
        type = Types::ApplicationSummary.new
        type.name = params[:name]
        type.description = params[:description]
        type.application_id = params[:application_id]
        type.application_arn = params[:application_arn]
        type.application_version = params[:application_version]
        type.status = params[:status]
        type.engine_type = params[:engine_type]
        type.creation_time = params[:creation_time]
        type.environment_id = params[:environment_id]
        type.last_start_time = params[:last_start_time]
        type.version_status = params[:version_status]
        type.deployment_status = params[:deployment_status]
        type
      end
    end

    module ApplicationSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationVersionSummary, context: context)
        type = Types::ApplicationVersionSummary.new
        type.application_version = params[:application_version]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module ApplicationVersionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationVersionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BatchJobDefinition
      def self.build(params, context: '')
        return params if params.is_a?(Types::BatchJobDefinition)
        Hearth::Validator.validate!(params, ::Hash, Types::BatchJobDefinition, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :file_batch_job_definition
          Types::BatchJobDefinition::FileBatchJobDefinition.new(
            (FileBatchJobDefinition.build(params[:file_batch_job_definition], context: "#{context}[:file_batch_job_definition]") unless params[:file_batch_job_definition].nil?)
          )
        when :script_batch_job_definition
          Types::BatchJobDefinition::ScriptBatchJobDefinition.new(
            (ScriptBatchJobDefinition.build(params[:script_batch_job_definition], context: "#{context}[:script_batch_job_definition]") unless params[:script_batch_job_definition].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :file_batch_job_definition, :script_batch_job_definition set"
        end
      end
    end

    module BatchJobDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchJobDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchJobExecutionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchJobExecutionSummary, context: context)
        type = Types::BatchJobExecutionSummary.new
        type.execution_id = params[:execution_id]
        type.application_id = params[:application_id]
        type.job_id = params[:job_id]
        type.job_name = params[:job_name]
        type.job_type = params[:job_type]
        type.status = params[:status]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module BatchJobExecutionSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchJobExecutionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchJobIdentifier
      def self.build(params, context: '')
        return params if params.is_a?(Types::BatchJobIdentifier)
        Hearth::Validator.validate!(params, ::Hash, Types::BatchJobIdentifier, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :file_batch_job_identifier
          Types::BatchJobIdentifier::FileBatchJobIdentifier.new(
            (FileBatchJobIdentifier.build(params[:file_batch_job_identifier], context: "#{context}[:file_batch_job_identifier]") unless params[:file_batch_job_identifier].nil?)
          )
        when :script_batch_job_identifier
          Types::BatchJobIdentifier::ScriptBatchJobIdentifier.new(
            (ScriptBatchJobIdentifier.build(params[:script_batch_job_identifier], context: "#{context}[:script_batch_job_identifier]") unless params[:script_batch_job_identifier].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :file_batch_job_identifier, :script_batch_job_identifier set"
        end
      end
    end

    module BatchJobParametersMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module CancelBatchJobExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelBatchJobExecutionInput, context: context)
        type = Types::CancelBatchJobExecutionInput.new
        type.application_id = params[:application_id]
        type.execution_id = params[:execution_id]
        type
      end
    end

    module CancelBatchJobExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelBatchJobExecutionOutput, context: context)
        type = Types::CancelBatchJobExecutionOutput.new
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module CreateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInput, context: context)
        type = Types::CreateApplicationInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.engine_type = params[:engine_type]
        type.definition = Definition.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationOutput, context: context)
        type = Types::CreateApplicationOutput.new
        type.application_arn = params[:application_arn]
        type.application_id = params[:application_id]
        type.application_version = params[:application_version]
        type
      end
    end

    module CreateDataSetImportTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSetImportTaskInput, context: context)
        type = Types::CreateDataSetImportTaskInput.new
        type.application_id = params[:application_id]
        type.import_config = DataSetImportConfig.build(params[:import_config], context: "#{context}[:import_config]") unless params[:import_config].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateDataSetImportTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSetImportTaskOutput, context: context)
        type = Types::CreateDataSetImportTaskOutput.new
        type.task_id = params[:task_id]
        type
      end
    end

    module CreateDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentInput, context: context)
        type = Types::CreateDeploymentInput.new
        type.environment_id = params[:environment_id]
        type.application_id = params[:application_id]
        type.application_version = params[:application_version]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentOutput, context: context)
        type = Types::CreateDeploymentOutput.new
        type.deployment_id = params[:deployment_id]
        type
      end
    end

    module CreateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentInput, context: context)
        type = Types::CreateEnvironmentInput.new
        type.name = params[:name]
        type.instance_type = params[:instance_type]
        type.description = params[:description]
        type.engine_type = params[:engine_type]
        type.engine_version = params[:engine_version]
        type.subnet_ids = String50List.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = String50List.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.storage_configurations = StorageConfigurationList.build(params[:storage_configurations], context: "#{context}[:storage_configurations]") unless params[:storage_configurations].nil?
        type.publicly_accessible = params[:publicly_accessible]
        type.high_availability_config = HighAvailabilityConfig.build(params[:high_availability_config], context: "#{context}[:high_availability_config]") unless params[:high_availability_config].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentOutput, context: context)
        type = Types::CreateEnvironmentOutput.new
        type.environment_id = params[:environment_id]
        type
      end
    end

    module DataSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSet, context: context)
        type = Types::DataSet.new
        type.storage_type = params[:storage_type]
        type.dataset_name = params[:dataset_name]
        type.dataset_org = DatasetOrgAttributes.build(params[:dataset_org], context: "#{context}[:dataset_org]") unless params[:dataset_org].nil?
        type.relative_path = params[:relative_path]
        type.record_length = RecordLength.build(params[:record_length], context: "#{context}[:record_length]") unless params[:record_length].nil?
        type
      end
    end

    module DataSetImportConfig
      def self.build(params, context: '')
        return params if params.is_a?(Types::DataSetImportConfig)
        Hearth::Validator.validate!(params, ::Hash, Types::DataSetImportConfig, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :s3_location
          Types::DataSetImportConfig::S3Location.new(
            params[:s3_location]
          )
        when :data_sets
          Types::DataSetImportConfig::DataSets.new(
            (DataSetImportList.build(params[:data_sets], context: "#{context}[:data_sets]") unless params[:data_sets].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :s3_location, :data_sets set"
        end
      end
    end

    module DataSetImportItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSetImportItem, context: context)
        type = Types::DataSetImportItem.new
        type.data_set = DataSet.build(params[:data_set], context: "#{context}[:data_set]") unless params[:data_set].nil?
        type.external_location = ExternalLocation.build(params[:external_location], context: "#{context}[:external_location]") unless params[:external_location].nil?
        type
      end
    end

    module DataSetImportList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSetImportItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataSetImportSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSetImportSummary, context: context)
        type = Types::DataSetImportSummary.new
        type.total = params[:total]
        type.succeeded = params[:succeeded]
        type.failed = params[:failed]
        type.pending = params[:pending]
        type.in_progress = params[:in_progress]
        type
      end
    end

    module DataSetImportTask
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSetImportTask, context: context)
        type = Types::DataSetImportTask.new
        type.task_id = params[:task_id]
        type.status = params[:status]
        type.summary = DataSetImportSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module DataSetImportTaskList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSetImportTask.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataSetSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSetSummary, context: context)
        type = Types::DataSetSummary.new
        type.data_set_name = params[:data_set_name]
        type.data_set_org = params[:data_set_org]
        type.format = params[:format]
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type.last_referenced_time = params[:last_referenced_time]
        type
      end
    end

    module DataSetsSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSetSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DatasetDetailOrgAttributes
      def self.build(params, context: '')
        return params if params.is_a?(Types::DatasetDetailOrgAttributes)
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetDetailOrgAttributes, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :vsam
          Types::DatasetDetailOrgAttributes::Vsam.new(
            (VsamDetailAttributes.build(params[:vsam], context: "#{context}[:vsam]") unless params[:vsam].nil?)
          )
        when :gdg
          Types::DatasetDetailOrgAttributes::Gdg.new(
            (GdgDetailAttributes.build(params[:gdg], context: "#{context}[:gdg]") unless params[:gdg].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :vsam, :gdg set"
        end
      end
    end

    module DatasetOrgAttributes
      def self.build(params, context: '')
        return params if params.is_a?(Types::DatasetOrgAttributes)
        Hearth::Validator.validate!(params, ::Hash, Types::DatasetOrgAttributes, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :vsam
          Types::DatasetOrgAttributes::Vsam.new(
            (VsamAttributes.build(params[:vsam], context: "#{context}[:vsam]") unless params[:vsam].nil?)
          )
        when :gdg
          Types::DatasetOrgAttributes::Gdg.new(
            (GdgAttributes.build(params[:gdg], context: "#{context}[:gdg]") unless params[:gdg].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :vsam, :gdg set"
        end
      end
    end

    module Definition
      def self.build(params, context: '')
        return params if params.is_a?(Types::Definition)
        Hearth::Validator.validate!(params, ::Hash, Types::Definition, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :s3_location
          Types::Definition::S3Location.new(
            params[:s3_location]
          )
        when :content
          Types::Definition::Content.new(
            params[:content]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :s3_location, :content set"
        end
      end
    end

    module DeleteApplicationFromEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationFromEnvironmentInput, context: context)
        type = Types::DeleteApplicationFromEnvironmentInput.new
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type
      end
    end

    module DeleteApplicationFromEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationFromEnvironmentOutput, context: context)
        type = Types::DeleteApplicationFromEnvironmentOutput.new
        type
      end
    end

    module DeleteApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationInput, context: context)
        type = Types::DeleteApplicationInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module DeleteApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationOutput, context: context)
        type = Types::DeleteApplicationOutput.new
        type
      end
    end

    module DeleteEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentInput, context: context)
        type = Types::DeleteEnvironmentInput.new
        type.environment_id = params[:environment_id]
        type
      end
    end

    module DeleteEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentOutput, context: context)
        type = Types::DeleteEnvironmentOutput.new
        type
      end
    end

    module DeployedVersionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeployedVersionSummary, context: context)
        type = Types::DeployedVersionSummary.new
        type.application_version = params[:application_version]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module DeploymentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeploymentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeploymentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentSummary, context: context)
        type = Types::DeploymentSummary.new
        type.deployment_id = params[:deployment_id]
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.application_version = params[:application_version]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module EfsStorageConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EfsStorageConfiguration, context: context)
        type = Types::EfsStorageConfiguration.new
        type.file_system_id = params[:file_system_id]
        type.mount_point = params[:mount_point]
        type
      end
    end

    module EngineVersionsSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EngineVersionsSummary, context: context)
        type = Types::EngineVersionsSummary.new
        type.engine_type = params[:engine_type]
        type.engine_version = params[:engine_version]
        type
      end
    end

    module EngineVersionsSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EngineVersionsSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EntityNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EnvironmentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentSummary, context: context)
        type = Types::EnvironmentSummary.new
        type.name = params[:name]
        type.environment_arn = params[:environment_arn]
        type.environment_id = params[:environment_id]
        type.instance_type = params[:instance_type]
        type.status = params[:status]
        type.engine_type = params[:engine_type]
        type.engine_version = params[:engine_version]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module EnvironmentSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExternalLocation
      def self.build(params, context: '')
        return params if params.is_a?(Types::ExternalLocation)
        Hearth::Validator.validate!(params, ::Hash, Types::ExternalLocation, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :s3_location
          Types::ExternalLocation::S3Location.new(
            params[:s3_location]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :s3_location set"
        end
      end
    end

    module FileBatchJobDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileBatchJobDefinition, context: context)
        type = Types::FileBatchJobDefinition.new
        type.file_name = params[:file_name]
        type.folder_path = params[:folder_path]
        type
      end
    end

    module FileBatchJobIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileBatchJobIdentifier, context: context)
        type = Types::FileBatchJobIdentifier.new
        type.file_name = params[:file_name]
        type.folder_path = params[:folder_path]
        type
      end
    end

    module FsxStorageConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FsxStorageConfiguration, context: context)
        type = Types::FsxStorageConfiguration.new
        type.file_system_id = params[:file_system_id]
        type.mount_point = params[:mount_point]
        type
      end
    end

    module GdgAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GdgAttributes, context: context)
        type = Types::GdgAttributes.new
        type.limit = params[:limit]
        type.roll_disposition = params[:roll_disposition]
        type
      end
    end

    module GdgDetailAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GdgDetailAttributes, context: context)
        type = Types::GdgDetailAttributes.new
        type.limit = params[:limit]
        type.roll_disposition = params[:roll_disposition]
        type
      end
    end

    module GetApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationInput, context: context)
        type = Types::GetApplicationInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module GetApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationOutput, context: context)
        type = Types::GetApplicationOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.application_id = params[:application_id]
        type.application_arn = params[:application_arn]
        type.status = params[:status]
        type.latest_version = ApplicationVersionSummary.build(params[:latest_version], context: "#{context}[:latest_version]") unless params[:latest_version].nil?
        type.deployed_version = DeployedVersionSummary.build(params[:deployed_version], context: "#{context}[:deployed_version]") unless params[:deployed_version].nil?
        type.engine_type = params[:engine_type]
        type.log_groups = LogGroupSummaries.build(params[:log_groups], context: "#{context}[:log_groups]") unless params[:log_groups].nil?
        type.creation_time = params[:creation_time]
        type.last_start_time = params[:last_start_time]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.environment_id = params[:environment_id]
        type.target_group_arns = ArnList.build(params[:target_group_arns], context: "#{context}[:target_group_arns]") unless params[:target_group_arns].nil?
        type.listener_arns = ArnList.build(params[:listener_arns], context: "#{context}[:listener_arns]") unless params[:listener_arns].nil?
        type.listener_ports = PortList.build(params[:listener_ports], context: "#{context}[:listener_ports]") unless params[:listener_ports].nil?
        type.load_balancer_dns_name = params[:load_balancer_dns_name]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module GetApplicationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationVersionInput, context: context)
        type = Types::GetApplicationVersionInput.new
        type.application_id = params[:application_id]
        type.application_version = params[:application_version]
        type
      end
    end

    module GetApplicationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationVersionOutput, context: context)
        type = Types::GetApplicationVersionOutput.new
        type.name = params[:name]
        type.application_version = params[:application_version]
        type.description = params[:description]
        type.definition_content = params[:definition_content]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module GetBatchJobExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBatchJobExecutionInput, context: context)
        type = Types::GetBatchJobExecutionInput.new
        type.application_id = params[:application_id]
        type.execution_id = params[:execution_id]
        type
      end
    end

    module GetBatchJobExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBatchJobExecutionOutput, context: context)
        type = Types::GetBatchJobExecutionOutput.new
        type.execution_id = params[:execution_id]
        type.application_id = params[:application_id]
        type.job_id = params[:job_id]
        type.job_name = params[:job_name]
        type.job_user = params[:job_user]
        type.job_type = params[:job_type]
        type.status = params[:status]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module GetDataSetDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataSetDetailsInput, context: context)
        type = Types::GetDataSetDetailsInput.new
        type.application_id = params[:application_id]
        type.data_set_name = params[:data_set_name]
        type
      end
    end

    module GetDataSetDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataSetDetailsOutput, context: context)
        type = Types::GetDataSetDetailsOutput.new
        type.data_set_name = params[:data_set_name]
        type.data_set_org = DatasetDetailOrgAttributes.build(params[:data_set_org], context: "#{context}[:data_set_org]") unless params[:data_set_org].nil?
        type.record_length = params[:record_length]
        type.location = params[:location]
        type.blocksize = params[:blocksize]
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type.last_referenced_time = params[:last_referenced_time]
        type
      end
    end

    module GetDataSetImportTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataSetImportTaskInput, context: context)
        type = Types::GetDataSetImportTaskInput.new
        type.application_id = params[:application_id]
        type.task_id = params[:task_id]
        type
      end
    end

    module GetDataSetImportTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataSetImportTaskOutput, context: context)
        type = Types::GetDataSetImportTaskOutput.new
        type.task_id = params[:task_id]
        type.status = params[:status]
        type.summary = DataSetImportSummary.build(params[:summary], context: "#{context}[:summary]") unless params[:summary].nil?
        type
      end
    end

    module GetDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentInput, context: context)
        type = Types::GetDeploymentInput.new
        type.deployment_id = params[:deployment_id]
        type.application_id = params[:application_id]
        type
      end
    end

    module GetDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentOutput, context: context)
        type = Types::GetDeploymentOutput.new
        type.deployment_id = params[:deployment_id]
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.application_version = params[:application_version]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.status_reason = params[:status_reason]
        type
      end
    end

    module GetEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentInput, context: context)
        type = Types::GetEnvironmentInput.new
        type.environment_id = params[:environment_id]
        type
      end
    end

    module GetEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentOutput, context: context)
        type = Types::GetEnvironmentOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.environment_arn = params[:environment_arn]
        type.environment_id = params[:environment_id]
        type.instance_type = params[:instance_type]
        type.status = params[:status]
        type.engine_type = params[:engine_type]
        type.engine_version = params[:engine_version]
        type.vpc_id = params[:vpc_id]
        type.subnet_ids = String50List.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = String50List.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.creation_time = params[:creation_time]
        type.storage_configurations = StorageConfigurationList.build(params[:storage_configurations], context: "#{context}[:storage_configurations]") unless params[:storage_configurations].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.high_availability_config = HighAvailabilityConfig.build(params[:high_availability_config], context: "#{context}[:high_availability_config]") unless params[:high_availability_config].nil?
        type.publicly_accessible = params[:publicly_accessible]
        type.actual_capacity = params[:actual_capacity]
        type.load_balancer_arn = params[:load_balancer_arn]
        type.status_reason = params[:status_reason]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.pending_maintenance = PendingMaintenance.build(params[:pending_maintenance], context: "#{context}[:pending_maintenance]") unless params[:pending_maintenance].nil?
        type
      end
    end

    module HighAvailabilityConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HighAvailabilityConfig, context: context)
        type = Types::HighAvailabilityConfig.new
        type.desired_capacity = params[:desired_capacity]
        type
      end
    end

    module IdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module ListApplicationVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationVersionsInput, context: context)
        type = Types::ListApplicationVersionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.application_id = params[:application_id]
        type
      end
    end

    module ListApplicationVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationVersionsOutput, context: context)
        type = Types::ListApplicationVersionsOutput.new
        type.application_versions = ApplicationVersionSummaryList.build(params[:application_versions], context: "#{context}[:application_versions]") unless params[:application_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsInput, context: context)
        type = Types::ListApplicationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.names = EntityNameList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.environment_id = params[:environment_id]
        type
      end
    end

    module ListApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsOutput, context: context)
        type = Types::ListApplicationsOutput.new
        type.applications = ApplicationSummaryList.build(params[:applications], context: "#{context}[:applications]") unless params[:applications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBatchJobDefinitionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBatchJobDefinitionsInput, context: context)
        type = Types::ListBatchJobDefinitionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.application_id = params[:application_id]
        type.prefix = params[:prefix]
        type
      end
    end

    module ListBatchJobDefinitionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBatchJobDefinitionsOutput, context: context)
        type = Types::ListBatchJobDefinitionsOutput.new
        type.batch_job_definitions = BatchJobDefinitions.build(params[:batch_job_definitions], context: "#{context}[:batch_job_definitions]") unless params[:batch_job_definitions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBatchJobExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBatchJobExecutionsInput, context: context)
        type = Types::ListBatchJobExecutionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.application_id = params[:application_id]
        type.execution_ids = IdentifierList.build(params[:execution_ids], context: "#{context}[:execution_ids]") unless params[:execution_ids].nil?
        type.job_name = params[:job_name]
        type.status = params[:status]
        type.started_after = params[:started_after]
        type.started_before = params[:started_before]
        type
      end
    end

    module ListBatchJobExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBatchJobExecutionsOutput, context: context)
        type = Types::ListBatchJobExecutionsOutput.new
        type.batch_job_executions = BatchJobExecutionSummaryList.build(params[:batch_job_executions], context: "#{context}[:batch_job_executions]") unless params[:batch_job_executions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDataSetImportHistoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSetImportHistoryInput, context: context)
        type = Types::ListDataSetImportHistoryInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.application_id = params[:application_id]
        type
      end
    end

    module ListDataSetImportHistoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSetImportHistoryOutput, context: context)
        type = Types::ListDataSetImportHistoryOutput.new
        type.data_set_import_tasks = DataSetImportTaskList.build(params[:data_set_import_tasks], context: "#{context}[:data_set_import_tasks]") unless params[:data_set_import_tasks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDataSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSetsInput, context: context)
        type = Types::ListDataSetsInput.new
        type.application_id = params[:application_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.prefix = params[:prefix]
        type
      end
    end

    module ListDataSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSetsOutput, context: context)
        type = Types::ListDataSetsOutput.new
        type.data_sets = DataSetsSummaryList.build(params[:data_sets], context: "#{context}[:data_sets]") unless params[:data_sets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDeploymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentsInput, context: context)
        type = Types::ListDeploymentsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.application_id = params[:application_id]
        type
      end
    end

    module ListDeploymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDeploymentsOutput, context: context)
        type = Types::ListDeploymentsOutput.new
        type.deployments = DeploymentList.build(params[:deployments], context: "#{context}[:deployments]") unless params[:deployments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEngineVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEngineVersionsInput, context: context)
        type = Types::ListEngineVersionsInput.new
        type.engine_type = params[:engine_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEngineVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEngineVersionsOutput, context: context)
        type = Types::ListEngineVersionsOutput.new
        type.engine_versions = EngineVersionsSummaryList.build(params[:engine_versions], context: "#{context}[:engine_versions]") unless params[:engine_versions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEnvironmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentsInput, context: context)
        type = Types::ListEnvironmentsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.names = EntityNameList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.engine_type = params[:engine_type]
        type
      end
    end

    module ListEnvironmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentsOutput, context: context)
        type = Types::ListEnvironmentsOutput.new
        type.environments = EnvironmentSummaryList.build(params[:environments], context: "#{context}[:environments]") unless params[:environments].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LogGroupSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LogGroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LogGroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogGroupSummary, context: context)
        type = Types::LogGroupSummary.new
        type.log_type = params[:log_type]
        type.log_group_name = params[:log_group_name]
        type
      end
    end

    module MaintenanceSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaintenanceSchedule, context: context)
        type = Types::MaintenanceSchedule.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module PendingMaintenance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PendingMaintenance, context: context)
        type = Types::PendingMaintenance.new
        type.schedule = MaintenanceSchedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.engine_version = params[:engine_version]
        type
      end
    end

    module PortList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PrimaryKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrimaryKey, context: context)
        type = Types::PrimaryKey.new
        type.name = params[:name]
        type.offset = params[:offset]
        type.length = params[:length]
        type
      end
    end

    module RecordLength
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecordLength, context: context)
        type = Types::RecordLength.new
        type.min = params[:min]
        type.max = params[:max]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ScriptBatchJobDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScriptBatchJobDefinition, context: context)
        type = Types::ScriptBatchJobDefinition.new
        type.script_name = params[:script_name]
        type
      end
    end

    module ScriptBatchJobIdentifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScriptBatchJobIdentifier, context: context)
        type = Types::ScriptBatchJobIdentifier.new
        type.script_name = params[:script_name]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type
      end
    end

    module StartApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartApplicationInput, context: context)
        type = Types::StartApplicationInput.new
        type.application_id = params[:application_id]
        type
      end
    end

    module StartApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartApplicationOutput, context: context)
        type = Types::StartApplicationOutput.new
        type
      end
    end

    module StartBatchJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBatchJobInput, context: context)
        type = Types::StartBatchJobInput.new
        type.application_id = params[:application_id]
        type.batch_job_identifier = BatchJobIdentifier.build(params[:batch_job_identifier], context: "#{context}[:batch_job_identifier]") unless params[:batch_job_identifier].nil?
        type.job_params = BatchJobParametersMap.build(params[:job_params], context: "#{context}[:job_params]") unless params[:job_params].nil?
        type
      end
    end

    module StartBatchJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartBatchJobOutput, context: context)
        type = Types::StartBatchJobOutput.new
        type.execution_id = params[:execution_id]
        type
      end
    end

    module StopApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopApplicationInput, context: context)
        type = Types::StopApplicationInput.new
        type.application_id = params[:application_id]
        type.force_stop = params[:force_stop]
        type
      end
    end

    module StopApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopApplicationOutput, context: context)
        type = Types::StopApplicationOutput.new
        type
      end
    end

    module StorageConfiguration
      def self.build(params, context: '')
        return params if params.is_a?(Types::StorageConfiguration)
        Hearth::Validator.validate!(params, ::Hash, Types::StorageConfiguration, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :efs
          Types::StorageConfiguration::Efs.new(
            (EfsStorageConfiguration.build(params[:efs], context: "#{context}[:efs]") unless params[:efs].nil?)
          )
        when :fsx
          Types::StorageConfiguration::Fsx.new(
            (FsxStorageConfiguration.build(params[:fsx], context: "#{context}[:fsx]") unless params[:fsx].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :efs, :fsx set"
        end
      end
    end

    module StorageConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StorageConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module String50List
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.service_code = params[:service_code]
        type.quota_code = params[:quota_code]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationInput, context: context)
        type = Types::UpdateApplicationInput.new
        type.application_id = params[:application_id]
        type.description = params[:description]
        type.current_application_version = params[:current_application_version]
        type.definition = Definition.build(params[:definition], context: "#{context}[:definition]") unless params[:definition].nil?
        type
      end
    end

    module UpdateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationOutput, context: context)
        type = Types::UpdateApplicationOutput.new
        type.application_version = params[:application_version]
        type
      end
    end

    module UpdateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentInput, context: context)
        type = Types::UpdateEnvironmentInput.new
        type.environment_id = params[:environment_id]
        type.desired_capacity = params[:desired_capacity]
        type.instance_type = params[:instance_type]
        type.engine_version = params[:engine_version]
        type.preferred_maintenance_window = params[:preferred_maintenance_window]
        type.apply_during_maintenance_window = params[:apply_during_maintenance_window]
        type
      end
    end

    module UpdateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentOutput, context: context)
        type = Types::UpdateEnvironmentOutput.new
        type.environment_id = params[:environment_id]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.field_list = ValidationExceptionFieldList.build(params[:field_list], context: "#{context}[:field_list]") unless params[:field_list].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VsamAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VsamAttributes, context: context)
        type = Types::VsamAttributes.new
        type.format = params[:format]
        type.encoding = params[:encoding]
        type.compressed = params[:compressed]
        type.primary_key = PrimaryKey.build(params[:primary_key], context: "#{context}[:primary_key]") unless params[:primary_key].nil?
        type.alternate_keys = AlternateKeyList.build(params[:alternate_keys], context: "#{context}[:alternate_keys]") unless params[:alternate_keys].nil?
        type
      end
    end

    module VsamDetailAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VsamDetailAttributes, context: context)
        type = Types::VsamDetailAttributes.new
        type.encoding = params[:encoding]
        type.record_format = params[:record_format]
        type.compressed = params[:compressed]
        type.cache_at_startup = params[:cache_at_startup]
        type.primary_key = PrimaryKey.build(params[:primary_key], context: "#{context}[:primary_key]") unless params[:primary_key].nil?
        type.alternate_keys = AlternateKeyList.build(params[:alternate_keys], context: "#{context}[:alternate_keys]") unless params[:alternate_keys].nil?
        type
      end
    end

  end
end
