# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MWAA
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AirflowConfigurationOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class CreateCliTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCliTokenInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateCliTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCliTokenOutput, context: context)
        Hearth::Validator.validate!(input[:cli_token], ::String, context: "#{context}[:cli_token]")
        Hearth::Validator.validate!(input[:web_server_hostname], ::String, context: "#{context}[:web_server_hostname]")
      end
    end

    class CreateEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:source_bucket_arn], ::String, context: "#{context}[:source_bucket_arn]")
        Hearth::Validator.validate!(input[:dag_s3_path], ::String, context: "#{context}[:dag_s3_path]")
        Validators::NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        Hearth::Validator.validate!(input[:plugins_s3_path], ::String, context: "#{context}[:plugins_s3_path]")
        Hearth::Validator.validate!(input[:plugins_s3_object_version], ::String, context: "#{context}[:plugins_s3_object_version]")
        Hearth::Validator.validate!(input[:requirements_s3_path], ::String, context: "#{context}[:requirements_s3_path]")
        Hearth::Validator.validate!(input[:requirements_s3_object_version], ::String, context: "#{context}[:requirements_s3_object_version]")
        Validators::AirflowConfigurationOptions.validate!(input[:airflow_configuration_options], context: "#{context}[:airflow_configuration_options]") unless input[:airflow_configuration_options].nil?
        Hearth::Validator.validate!(input[:environment_class], ::String, context: "#{context}[:environment_class]")
        Hearth::Validator.validate!(input[:max_workers], ::Integer, context: "#{context}[:max_workers]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:airflow_version], ::String, context: "#{context}[:airflow_version]")
        Validators::LoggingConfigurationInput.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
        Hearth::Validator.validate!(input[:weekly_maintenance_window_start], ::String, context: "#{context}[:weekly_maintenance_window_start]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:webserver_access_mode], ::String, context: "#{context}[:webserver_access_mode]")
        Hearth::Validator.validate!(input[:min_workers], ::Integer, context: "#{context}[:min_workers]")
        Hearth::Validator.validate!(input[:schedulers], ::Integer, context: "#{context}[:schedulers]")
      end
    end

    class CreateEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class CreateWebLoginTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWebLoginTokenInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateWebLoginTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWebLoginTokenOutput, context: context)
        Hearth::Validator.validate!(input[:web_token], ::String, context: "#{context}[:web_token]")
        Hearth::Validator.validate!(input[:web_server_hostname], ::String, context: "#{context}[:web_server_hostname]")
      end
    end

    class DeleteEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentOutput, context: context)
      end
    end

    class Dimension
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Dimension, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Dimensions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Dimension.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Environment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Environment, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:webserver_url], ::String, context: "#{context}[:webserver_url]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:service_role_arn], ::String, context: "#{context}[:service_role_arn]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:airflow_version], ::String, context: "#{context}[:airflow_version]")
        Hearth::Validator.validate!(input[:source_bucket_arn], ::String, context: "#{context}[:source_bucket_arn]")
        Hearth::Validator.validate!(input[:dag_s3_path], ::String, context: "#{context}[:dag_s3_path]")
        Hearth::Validator.validate!(input[:plugins_s3_path], ::String, context: "#{context}[:plugins_s3_path]")
        Hearth::Validator.validate!(input[:plugins_s3_object_version], ::String, context: "#{context}[:plugins_s3_object_version]")
        Hearth::Validator.validate!(input[:requirements_s3_path], ::String, context: "#{context}[:requirements_s3_path]")
        Hearth::Validator.validate!(input[:requirements_s3_object_version], ::String, context: "#{context}[:requirements_s3_object_version]")
        Validators::AirflowConfigurationOptions.validate!(input[:airflow_configuration_options], context: "#{context}[:airflow_configuration_options]") unless input[:airflow_configuration_options].nil?
        Hearth::Validator.validate!(input[:environment_class], ::String, context: "#{context}[:environment_class]")
        Hearth::Validator.validate!(input[:max_workers], ::Integer, context: "#{context}[:max_workers]")
        Validators::NetworkConfiguration.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        Validators::LoggingConfiguration.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
        Validators::LastUpdate.validate!(input[:last_update], context: "#{context}[:last_update]") unless input[:last_update].nil?
        Hearth::Validator.validate!(input[:weekly_maintenance_window_start], ::String, context: "#{context}[:weekly_maintenance_window_start]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:webserver_access_mode], ::String, context: "#{context}[:webserver_access_mode]")
        Hearth::Validator.validate!(input[:min_workers], ::Integer, context: "#{context}[:min_workers]")
        Hearth::Validator.validate!(input[:schedulers], ::Integer, context: "#{context}[:schedulers]")
      end
    end

    class EnvironmentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentOutput, context: context)
        Validators::Environment.validate!(input[:environment], context: "#{context}[:environment]") unless input[:environment].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LastUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LastUpdate, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Validators::UpdateError.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
      end
    end

    class ListEnvironmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEnvironmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentsOutput, context: context)
        Validators::EnvironmentList.validate!(input[:environments], context: "#{context}[:environments]") unless input[:environments].nil?
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

    class LoggingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingConfiguration, context: context)
        Validators::ModuleLoggingConfiguration.validate!(input[:dag_processing_logs], context: "#{context}[:dag_processing_logs]") unless input[:dag_processing_logs].nil?
        Validators::ModuleLoggingConfiguration.validate!(input[:scheduler_logs], context: "#{context}[:scheduler_logs]") unless input[:scheduler_logs].nil?
        Validators::ModuleLoggingConfiguration.validate!(input[:webserver_logs], context: "#{context}[:webserver_logs]") unless input[:webserver_logs].nil?
        Validators::ModuleLoggingConfiguration.validate!(input[:worker_logs], context: "#{context}[:worker_logs]") unless input[:worker_logs].nil?
        Validators::ModuleLoggingConfiguration.validate!(input[:task_logs], context: "#{context}[:task_logs]") unless input[:task_logs].nil?
      end
    end

    class LoggingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LoggingConfigurationInput, context: context)
        Validators::ModuleLoggingConfigurationInput.validate!(input[:dag_processing_logs], context: "#{context}[:dag_processing_logs]") unless input[:dag_processing_logs].nil?
        Validators::ModuleLoggingConfigurationInput.validate!(input[:scheduler_logs], context: "#{context}[:scheduler_logs]") unless input[:scheduler_logs].nil?
        Validators::ModuleLoggingConfigurationInput.validate!(input[:webserver_logs], context: "#{context}[:webserver_logs]") unless input[:webserver_logs].nil?
        Validators::ModuleLoggingConfigurationInput.validate!(input[:worker_logs], context: "#{context}[:worker_logs]") unless input[:worker_logs].nil?
        Validators::ModuleLoggingConfigurationInput.validate!(input[:task_logs], context: "#{context}[:task_logs]") unless input[:task_logs].nil?
      end
    end

    class MetricData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MetricDatum.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricDatum
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricDatum, context: context)
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:timestamp], ::Time, context: "#{context}[:timestamp]")
        Validators::Dimensions.validate!(input[:dimensions], context: "#{context}[:dimensions]") unless input[:dimensions].nil?
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:unit], ::String, context: "#{context}[:unit]")
        Validators::StatisticSet.validate!(input[:statistic_values], context: "#{context}[:statistic_values]") unless input[:statistic_values].nil?
      end
    end

    class ModuleLoggingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModuleLoggingConfiguration, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
        Hearth::Validator.validate!(input[:cloud_watch_log_group_arn], ::String, context: "#{context}[:cloud_watch_log_group_arn]")
      end
    end

    class ModuleLoggingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModuleLoggingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
      end
    end

    class NetworkConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkConfiguration, context: context)
        Validators::SubnetList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class PublishMetricsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishMetricsInput, context: context)
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Validators::MetricData.validate!(input[:metric_data], context: "#{context}[:metric_data]") unless input[:metric_data].nil?
      end
    end

    class PublishMetricsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PublishMetricsOutput, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SecurityGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StatisticSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StatisticSet, context: context)
        Hearth::Validator.validate!(input[:sample_count], ::Integer, context: "#{context}[:sample_count]")
        Hearth::Validator.validate!(input[:sum], ::Float, context: "#{context}[:sum]")
        Hearth::Validator.validate!(input[:minimum], ::Float, context: "#{context}[:minimum]")
        Hearth::Validator.validate!(input[:maximum], ::Float, context: "#{context}[:maximum]")
      end
    end

    class SubnetList
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

    class UpdateEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:execution_role_arn], ::String, context: "#{context}[:execution_role_arn]")
        Hearth::Validator.validate!(input[:airflow_version], ::String, context: "#{context}[:airflow_version]")
        Hearth::Validator.validate!(input[:source_bucket_arn], ::String, context: "#{context}[:source_bucket_arn]")
        Hearth::Validator.validate!(input[:dag_s3_path], ::String, context: "#{context}[:dag_s3_path]")
        Hearth::Validator.validate!(input[:plugins_s3_path], ::String, context: "#{context}[:plugins_s3_path]")
        Hearth::Validator.validate!(input[:plugins_s3_object_version], ::String, context: "#{context}[:plugins_s3_object_version]")
        Hearth::Validator.validate!(input[:requirements_s3_path], ::String, context: "#{context}[:requirements_s3_path]")
        Hearth::Validator.validate!(input[:requirements_s3_object_version], ::String, context: "#{context}[:requirements_s3_object_version]")
        Validators::AirflowConfigurationOptions.validate!(input[:airflow_configuration_options], context: "#{context}[:airflow_configuration_options]") unless input[:airflow_configuration_options].nil?
        Hearth::Validator.validate!(input[:environment_class], ::String, context: "#{context}[:environment_class]")
        Hearth::Validator.validate!(input[:max_workers], ::Integer, context: "#{context}[:max_workers]")
        Validators::UpdateNetworkConfigurationInput.validate!(input[:network_configuration], context: "#{context}[:network_configuration]") unless input[:network_configuration].nil?
        Validators::LoggingConfigurationInput.validate!(input[:logging_configuration], context: "#{context}[:logging_configuration]") unless input[:logging_configuration].nil?
        Hearth::Validator.validate!(input[:weekly_maintenance_window_start], ::String, context: "#{context}[:weekly_maintenance_window_start]")
        Hearth::Validator.validate!(input[:webserver_access_mode], ::String, context: "#{context}[:webserver_access_mode]")
        Hearth::Validator.validate!(input[:min_workers], ::Integer, context: "#{context}[:min_workers]")
        Hearth::Validator.validate!(input[:schedulers], ::Integer, context: "#{context}[:schedulers]")
      end
    end

    class UpdateEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class UpdateError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateError, context: context)
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class UpdateNetworkConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNetworkConfigurationInput, context: context)
        Validators::SecurityGroupList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
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
