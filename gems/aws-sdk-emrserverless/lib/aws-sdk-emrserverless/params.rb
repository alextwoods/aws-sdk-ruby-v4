# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::EMRServerless
  module Params

    module Application
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Application, context: context)
        type = Types::Application.new
        type.application_id = params[:application_id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.release_label = params[:release_label]
        type.type = params[:type]
        type.state = params[:state]
        type.state_details = params[:state_details]
        type.initial_capacity = InitialCapacityConfigMap.build(params[:initial_capacity], context: "#{context}[:initial_capacity]") unless params[:initial_capacity].nil?
        type.maximum_capacity = MaximumAllowedResources.build(params[:maximum_capacity], context: "#{context}[:maximum_capacity]") unless params[:maximum_capacity].nil?
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.auto_start_configuration = AutoStartConfig.build(params[:auto_start_configuration], context: "#{context}[:auto_start_configuration]") unless params[:auto_start_configuration].nil?
        type.auto_stop_configuration = AutoStopConfig.build(params[:auto_stop_configuration], context: "#{context}[:auto_stop_configuration]") unless params[:auto_stop_configuration].nil?
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type
      end
    end

    module ApplicationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationStateSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ApplicationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationSummary, context: context)
        type = Types::ApplicationSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.release_label = params[:release_label]
        type.type = params[:type]
        type.state = params[:state]
        type.state_details = params[:state_details]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module AutoStartConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoStartConfig, context: context)
        type = Types::AutoStartConfig.new
        type.enabled = params[:enabled]
        type
      end
    end

    module AutoStopConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoStopConfig, context: context)
        type = Types::AutoStopConfig.new
        type.enabled = params[:enabled]
        type.idle_timeout_minutes = params[:idle_timeout_minutes]
        type
      end
    end

    module CancelJobRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobRunInput, context: context)
        type = Types::CancelJobRunInput.new
        type.application_id = params[:application_id]
        type.job_run_id = params[:job_run_id]
        type
      end
    end

    module CancelJobRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobRunOutput, context: context)
        type = Types::CancelJobRunOutput.new
        type.application_id = params[:application_id]
        type.job_run_id = params[:job_run_id]
        type
      end
    end

    module Configuration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Configuration, context: context)
        type = Types::Configuration.new
        type.classification = params[:classification]
        type.properties = SensitivePropertiesMap.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.configurations = ConfigurationList.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type
      end
    end

    module ConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Configuration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfigurationOverrides
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfigurationOverrides, context: context)
        type = Types::ConfigurationOverrides.new
        type.application_configuration = ConfigurationList.build(params[:application_configuration], context: "#{context}[:application_configuration]") unless params[:application_configuration].nil?
        type.monitoring_configuration = MonitoringConfiguration.build(params[:monitoring_configuration], context: "#{context}[:monitoring_configuration]") unless params[:monitoring_configuration].nil?
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInput, context: context)
        type = Types::CreateApplicationInput.new
        type.name = params[:name]
        type.release_label = params[:release_label]
        type.type = params[:type]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.initial_capacity = InitialCapacityConfigMap.build(params[:initial_capacity], context: "#{context}[:initial_capacity]") unless params[:initial_capacity].nil?
        type.maximum_capacity = MaximumAllowedResources.build(params[:maximum_capacity], context: "#{context}[:maximum_capacity]") unless params[:maximum_capacity].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.auto_start_configuration = AutoStartConfig.build(params[:auto_start_configuration], context: "#{context}[:auto_start_configuration]") unless params[:auto_start_configuration].nil?
        type.auto_stop_configuration = AutoStopConfig.build(params[:auto_stop_configuration], context: "#{context}[:auto_stop_configuration]") unless params[:auto_stop_configuration].nil?
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type
      end
    end

    module CreateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationOutput, context: context)
        type = Types::CreateApplicationOutput.new
        type.application_id = params[:application_id]
        type.name = params[:name]
        type.arn = params[:arn]
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

    module EntryPointArguments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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
        type.application = Application.build(params[:application], context: "#{context}[:application]") unless params[:application].nil?
        type
      end
    end

    module GetJobRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobRunInput, context: context)
        type = Types::GetJobRunInput.new
        type.application_id = params[:application_id]
        type.job_run_id = params[:job_run_id]
        type
      end
    end

    module GetJobRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobRunOutput, context: context)
        type = Types::GetJobRunOutput.new
        type.job_run = JobRun.build(params[:job_run], context: "#{context}[:job_run]") unless params[:job_run].nil?
        type
      end
    end

    module Hive
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Hive, context: context)
        type = Types::Hive.new
        type.query = params[:query]
        type.init_query_file = params[:init_query_file]
        type.parameters = params[:parameters]
        type
      end
    end

    module InitialCapacityConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitialCapacityConfig, context: context)
        type = Types::InitialCapacityConfig.new
        type.worker_count = params[:worker_count]
        type.worker_configuration = WorkerResourceConfig.build(params[:worker_configuration], context: "#{context}[:worker_configuration]") unless params[:worker_configuration].nil?
        type
      end
    end

    module InitialCapacityConfigMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = InitialCapacityConfig.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module JobDriver
      def self.build(params, context: '')
        return params if params.is_a?(Types::JobDriver)
        Hearth::Validator.validate!(params, ::Hash, Types::JobDriver, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :spark_submit
          Types::JobDriver::SparkSubmit.new(
            (SparkSubmit.build(params[:spark_submit], context: "#{context}[:spark_submit]") unless params[:spark_submit].nil?)
          )
        when :hive
          Types::JobDriver::Hive.new(
            (Hive.build(params[:hive], context: "#{context}[:hive]") unless params[:hive].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :spark_submit, :hive set"
        end
      end
    end

    module JobRun
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobRun, context: context)
        type = Types::JobRun.new
        type.application_id = params[:application_id]
        type.job_run_id = params[:job_run_id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.created_by = params[:created_by]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.execution_role = params[:execution_role]
        type.state = params[:state]
        type.state_details = params[:state_details]
        type.release_label = params[:release_label]
        type.configuration_overrides = ConfigurationOverrides.build(params[:configuration_overrides], context: "#{context}[:configuration_overrides]") unless params[:configuration_overrides].nil?
        type.job_driver = JobDriver.build(params[:job_driver], context: "#{context}[:job_driver]") unless params[:job_driver].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.total_resource_utilization = TotalResourceUtilization.build(params[:total_resource_utilization], context: "#{context}[:total_resource_utilization]") unless params[:total_resource_utilization].nil?
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.total_execution_duration_seconds = params[:total_execution_duration_seconds]
        type
      end
    end

    module JobRunStateSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module JobRunSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobRunSummary, context: context)
        type = Types::JobRunSummary.new
        type.application_id = params[:application_id]
        type.id = params[:id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.created_by = params[:created_by]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.execution_role = params[:execution_role]
        type.state = params[:state]
        type.state_details = params[:state_details]
        type.release_label = params[:release_label]
        type.type = params[:type]
        type
      end
    end

    module JobRuns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobRunSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsInput, context: context)
        type = Types::ListApplicationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.states = ApplicationStateSet.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type
      end
    end

    module ListApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsOutput, context: context)
        type = Types::ListApplicationsOutput.new
        type.applications = ApplicationList.build(params[:applications], context: "#{context}[:applications]") unless params[:applications].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobRunsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobRunsInput, context: context)
        type = Types::ListJobRunsInput.new
        type.application_id = params[:application_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.created_at_after = params[:created_at_after]
        type.created_at_before = params[:created_at_before]
        type.states = JobRunStateSet.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type
      end
    end

    module ListJobRunsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobRunsOutput, context: context)
        type = Types::ListJobRunsOutput.new
        type.job_runs = JobRuns.build(params[:job_runs], context: "#{context}[:job_runs]") unless params[:job_runs].nil?
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

    module ManagedPersistenceMonitoringConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManagedPersistenceMonitoringConfiguration, context: context)
        type = Types::ManagedPersistenceMonitoringConfiguration.new
        type.enabled = params[:enabled]
        type.encryption_key_arn = params[:encryption_key_arn]
        type
      end
    end

    module MaximumAllowedResources
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaximumAllowedResources, context: context)
        type = Types::MaximumAllowedResources.new
        type.cpu = params[:cpu]
        type.memory = params[:memory]
        type.disk = params[:disk]
        type
      end
    end

    module MonitoringConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MonitoringConfiguration, context: context)
        type = Types::MonitoringConfiguration.new
        type.s3_monitoring_configuration = S3MonitoringConfiguration.build(params[:s3_monitoring_configuration], context: "#{context}[:s3_monitoring_configuration]") unless params[:s3_monitoring_configuration].nil?
        type.managed_persistence_monitoring_configuration = ManagedPersistenceMonitoringConfiguration.build(params[:managed_persistence_monitoring_configuration], context: "#{context}[:managed_persistence_monitoring_configuration]") unless params[:managed_persistence_monitoring_configuration].nil?
        type
      end
    end

    module NetworkConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkConfiguration, context: context)
        type = Types::NetworkConfiguration.new
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIds.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
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

    module S3MonitoringConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3MonitoringConfiguration, context: context)
        type = Types::S3MonitoringConfiguration.new
        type.log_uri = params[:log_uri]
        type.encryption_key_arn = params[:encryption_key_arn]
        type
      end
    end

    module SecurityGroupIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SensitivePropertiesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SparkSubmit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SparkSubmit, context: context)
        type = Types::SparkSubmit.new
        type.entry_point = params[:entry_point]
        type.entry_point_arguments = EntryPointArguments.build(params[:entry_point_arguments], context: "#{context}[:entry_point_arguments]") unless params[:entry_point_arguments].nil?
        type.spark_submit_parameters = params[:spark_submit_parameters]
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

    module StartJobRunInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartJobRunInput, context: context)
        type = Types::StartJobRunInput.new
        type.application_id = params[:application_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.execution_role_arn = params[:execution_role_arn]
        type.job_driver = JobDriver.build(params[:job_driver], context: "#{context}[:job_driver]") unless params[:job_driver].nil?
        type.configuration_overrides = ConfigurationOverrides.build(params[:configuration_overrides], context: "#{context}[:configuration_overrides]") unless params[:configuration_overrides].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.execution_timeout_minutes = params[:execution_timeout_minutes]
        type.name = params[:name]
        type
      end
    end

    module StartJobRunOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartJobRunOutput, context: context)
        type = Types::StartJobRunOutput.new
        type.application_id = params[:application_id]
        type.job_run_id = params[:job_run_id]
        type.arn = params[:arn]
        type
      end
    end

    module StopApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopApplicationInput, context: context)
        type = Types::StopApplicationInput.new
        type.application_id = params[:application_id]
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

    module SubnetIds
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

    module TotalResourceUtilization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TotalResourceUtilization, context: context)
        type = Types::TotalResourceUtilization.new
        type.v_cpu_hour = params[:v_cpu_hour]
        type.memory_gb_hour = params[:memory_gb_hour]
        type.storage_gb_hour = params[:storage_gb_hour]
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
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.initial_capacity = InitialCapacityConfigMap.build(params[:initial_capacity], context: "#{context}[:initial_capacity]") unless params[:initial_capacity].nil?
        type.maximum_capacity = MaximumAllowedResources.build(params[:maximum_capacity], context: "#{context}[:maximum_capacity]") unless params[:maximum_capacity].nil?
        type.auto_start_configuration = AutoStartConfig.build(params[:auto_start_configuration], context: "#{context}[:auto_start_configuration]") unless params[:auto_start_configuration].nil?
        type.auto_stop_configuration = AutoStopConfig.build(params[:auto_stop_configuration], context: "#{context}[:auto_stop_configuration]") unless params[:auto_stop_configuration].nil?
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type
      end
    end

    module UpdateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApplicationOutput, context: context)
        type = Types::UpdateApplicationOutput.new
        type.application = Application.build(params[:application], context: "#{context}[:application]") unless params[:application].nil?
        type
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

    module WorkerResourceConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkerResourceConfig, context: context)
        type = Types::WorkerResourceConfig.new
        type.cpu = params[:cpu]
        type.memory = params[:memory]
        type.disk = params[:disk]
        type
      end
    end

  end
end
