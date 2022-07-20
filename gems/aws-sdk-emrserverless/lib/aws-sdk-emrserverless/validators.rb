# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::EMRServerless
  module Validators

    class Application
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Application, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:release_label], ::String, context: "#{context}[:release_label]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_details], ::String, context: "#{context}[:state_details]")
        InitialCapacityConfigMap.validate!(input[:initial_capacity], context: "#{context}[:initial_capacity]") unless input[:initial_capacity].nil?
        MaximumAllowedResources.validate!(input[:maximum_capacity], context: "#{context}[:maximum_capacity]") unless input[:maximum_capacity].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        AutoStartConfig.validate!(input[:auto_start_configuration], context: "#{context}[:auto_start_configuration]") unless input[:auto_start_configuration].nil?
        AutoStopConfig.validate!(input[:auto_stop_configuration], context: "#{context}[:auto_stop_configuration]") unless input[:auto_stop_configuration].nil?
        NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
      end
    end

    class ApplicationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApplicationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationStateSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ApplicationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:release_label], ::String, context: "#{context}[:release_label]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_details], ::String, context: "#{context}[:state_details]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class AutoStartConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoStartConfig, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class AutoStopConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoStopConfig, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:idle_timeout_minutes], ::Integer, context: "#{context}[:idle_timeout_minutes]")
      end
    end

    class CancelJobRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobRunInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:job_run_id], ::String, context: "#{context}[:job_run_id]")
      end
    end

    class CancelJobRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobRunOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:job_run_id], ::String, context: "#{context}[:job_run_id]")
      end
    end

    class Configuration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Configuration, context: context)
        Hearth::Validator.validate!(input[:classification], ::String, context: "#{context}[:classification]")
        SensitivePropertiesMap.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        ConfigurationList.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
      end
    end

    class ConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Configuration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfigurationOverrides
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfigurationOverrides, context: context)
        ConfigurationList.validate!(input[:application_configuration], context: "#{context}[:application_configuration]") unless input[:application_configuration].nil?
        MonitoringConfiguration.validate!(input[:monitoring_configuration], context: "#{context}[:monitoring_configuration]") unless input[:monitoring_configuration].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:release_label], ::String, context: "#{context}[:release_label]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        InitialCapacityConfigMap.validate!(input[:initial_capacity], context: "#{context}[:initial_capacity]") unless input[:initial_capacity].nil?
        MaximumAllowedResources.validate!(input[:maximum_capacity], context: "#{context}[:maximum_capacity]") unless input[:maximum_capacity].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        AutoStartConfig.validate!(input[:auto_start_configuration], context: "#{context}[:auto_start_configuration]") unless input[:auto_start_configuration].nil?
        AutoStopConfig.validate!(input[:auto_stop_configuration], context: "#{context}[:auto_stop_configuration]") unless input[:auto_stop_configuration].nil?
        NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
      end
    end

    class CreateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
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

    class EntryPointArguments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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
        Application.validate!(input[:application], context: "#{context}[:application]") unless input[:application].nil?
      end
    end

    class GetJobRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobRunInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:job_run_id], ::String, context: "#{context}[:job_run_id]")
      end
    end

    class GetJobRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobRunOutput, context: context)
        JobRun.validate!(input[:job_run], context: "#{context}[:job_run]") unless input[:job_run].nil?
      end
    end

    class Hive
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Hive, context: context)
        Hearth::Validator.validate!(input[:query], ::String, context: "#{context}[:query]")
        Hearth::Validator.validate!(input[:init_query_file], ::String, context: "#{context}[:init_query_file]")
        Hearth::Validator.validate!(input[:parameters], ::String, context: "#{context}[:parameters]")
      end
    end

    class InitialCapacityConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitialCapacityConfig, context: context)
        Hearth::Validator.validate!(input[:worker_count], ::Integer, context: "#{context}[:worker_count]")
        WorkerResourceConfig.validate!(input[:worker_configuration], context: "#{context}[:worker_configuration]") unless input[:worker_configuration].nil?
      end
    end

    class InitialCapacityConfigMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          InitialCapacityConfig.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobDriver
      def self.validate!(input, context:)
        case input
        when Types::JobDriver::SparkSubmit
          SparkSubmit.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        when Types::JobDriver::Hive
          Hive.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::JobDriver, got #{input.class}."
        end
      end

      class SparkSubmit
        def self.validate!(input, context:)
          Validators::SparkSubmit.validate!(input, context: context) unless input.nil?
        end
      end

      class Hive
        def self.validate!(input, context:)
          Validators::Hive.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class JobRun
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobRun, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:job_run_id], ::String, context: "#{context}[:job_run_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:execution_role], ::String, context: "#{context}[:execution_role]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_details], ::String, context: "#{context}[:state_details]")
        Hearth::Validator.validate!(input[:release_label], ::String, context: "#{context}[:release_label]")
        ConfigurationOverrides.validate!(input[:configuration_overrides], context: "#{context}[:configuration_overrides]") unless input[:configuration_overrides].nil?
        JobDriver.validate!(input[:job_driver], context: "#{context}[:job_driver]") unless input[:job_driver].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        TotalResourceUtilization.validate!(input[:total_resource_utilization], context: "#{context}[:total_resource_utilization]") unless input[:total_resource_utilization].nil?
        NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        Hearth::Validator.validate!(input[:total_execution_duration_seconds], ::Integer, context: "#{context}[:total_execution_duration_seconds]")
      end
    end

    class JobRunStateSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class JobRunSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobRunSummary, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:execution_role], ::String, context: "#{context}[:execution_role]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_details], ::String, context: "#{context}[:state_details]")
        Hearth::Validator.validate!(input[:release_label], ::String, context: "#{context}[:release_label]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class JobRuns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobRunSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        ApplicationStateSet.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
      end
    end

    class ListApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsOutput, context: context)
        ApplicationList.validate!(input[:applications], context: "#{context}[:applications]") unless input[:applications].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobRunsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobRunsInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:created_at_after], ::Time, context: "#{context}[:created_at_after]")
        Hearth::Validator.validate!(input[:created_at_before], ::Time, context: "#{context}[:created_at_before]")
        JobRunStateSet.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
      end
    end

    class ListJobRunsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobRunsOutput, context: context)
        JobRuns.validate!(input[:job_runs], context: "#{context}[:job_runs]") unless input[:job_runs].nil?
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ManagedPersistenceMonitoringConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManagedPersistenceMonitoringConfiguration, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:encryption_key_arn], ::String, context: "#{context}[:encryption_key_arn]")
      end
    end

    class MaximumAllowedResources
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaximumAllowedResources, context: context)
        Hearth::Validator.validate!(input[:cpu], ::String, context: "#{context}[:cpu]")
        Hearth::Validator.validate!(input[:memory], ::String, context: "#{context}[:memory]")
        Hearth::Validator.validate!(input[:disk], ::String, context: "#{context}[:disk]")
      end
    end

    class MonitoringConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MonitoringConfiguration, context: context)
        S3MonitoringConfiguration.validate!(input[:s3_monitoring_configuration], context: "#{context}[:s3_monitoring_configuration]") unless input[:s3_monitoring_configuration].nil?
        ManagedPersistenceMonitoringConfiguration.validate!(input[:managed_persistence_monitoring_configuration], context: "#{context}[:managed_persistence_monitoring_configuration]") unless input[:managed_persistence_monitoring_configuration].nil?
      end
    end

    class NetworkConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkConfiguration, context: context)
        SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        SecurityGroupIds.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3MonitoringConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3MonitoringConfiguration, context: context)
        Hearth::Validator.validate!(input[:log_uri], ::String, context: "#{context}[:log_uri]")
        Hearth::Validator.validate!(input[:encryption_key_arn], ::String, context: "#{context}[:encryption_key_arn]")
      end
    end

    class SecurityGroupIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SensitivePropertiesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SparkSubmit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SparkSubmit, context: context)
        Hearth::Validator.validate!(input[:entry_point], ::String, context: "#{context}[:entry_point]")
        EntryPointArguments.validate!(input[:entry_point_arguments], context: "#{context}[:entry_point_arguments]") unless input[:entry_point_arguments].nil?
        Hearth::Validator.validate!(input[:spark_submit_parameters], ::String, context: "#{context}[:spark_submit_parameters]")
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

    class StartJobRunInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartJobRunInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        JobDriver.validate!(input[:job_driver], context: "#{context}[:job_driver]") unless input[:job_driver].nil?
        ConfigurationOverrides.validate!(input[:configuration_overrides], context: "#{context}[:configuration_overrides]") unless input[:configuration_overrides].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:execution_timeout_minutes], ::Integer, context: "#{context}[:execution_timeout_minutes]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class StartJobRunOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartJobRunOutput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:job_run_id], ::String, context: "#{context}[:job_run_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class StopApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopApplicationInput, context: context)
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
      end
    end

    class StopApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopApplicationOutput, context: context)
      end
    end

    class SubnetIds
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TotalResourceUtilization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TotalResourceUtilization, context: context)
        Hearth::Validator.validate!(input[:v_cpu_hour], ::Float, context: "#{context}[:v_cpu_hour]")
        Hearth::Validator.validate!(input[:memory_gb_hour], ::Float, context: "#{context}[:memory_gb_hour]")
        Hearth::Validator.validate!(input[:storage_gb_hour], ::Float, context: "#{context}[:storage_gb_hour]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
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
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        InitialCapacityConfigMap.validate!(input[:initial_capacity], context: "#{context}[:initial_capacity]") unless input[:initial_capacity].nil?
        MaximumAllowedResources.validate!(input[:maximum_capacity], context: "#{context}[:maximum_capacity]") unless input[:maximum_capacity].nil?
        AutoStartConfig.validate!(input[:auto_start_configuration], context: "#{context}[:auto_start_configuration]") unless input[:auto_start_configuration].nil?
        AutoStopConfig.validate!(input[:auto_stop_configuration], context: "#{context}[:auto_stop_configuration]") unless input[:auto_stop_configuration].nil?
        NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
      end
    end

    class UpdateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApplicationOutput, context: context)
        Application.validate!(input[:application], context: "#{context}[:application]") unless input[:application].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class WorkerResourceConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkerResourceConfig, context: context)
        Hearth::Validator.validate!(input[:cpu], ::String, context: "#{context}[:cpu]")
        Hearth::Validator.validate!(input[:memory], ::String, context: "#{context}[:memory]")
        Hearth::Validator.validate!(input[:disk], ::String, context: "#{context}[:disk]")
      end
    end

  end
end
