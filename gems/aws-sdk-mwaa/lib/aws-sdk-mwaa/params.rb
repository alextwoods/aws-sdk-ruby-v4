# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::MWAA
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AirflowConfigurationOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module CreateCliTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCliTokenInput, context: context)
        type = Types::CreateCliTokenInput.new
        type.name = params[:name]
        type
      end
    end

    module CreateCliTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCliTokenOutput, context: context)
        type = Types::CreateCliTokenOutput.new
        type.cli_token = params[:cli_token]
        type.web_server_hostname = params[:web_server_hostname]
        type
      end
    end

    module CreateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentInput, context: context)
        type = Types::CreateEnvironmentInput.new
        type.name = params[:name]
        type.execution_role_arn = params[:execution_role_arn]
        type.source_bucket_arn = params[:source_bucket_arn]
        type.dag_s3_path = params[:dag_s3_path]
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.plugins_s3_path = params[:plugins_s3_path]
        type.plugins_s3_object_version = params[:plugins_s3_object_version]
        type.requirements_s3_path = params[:requirements_s3_path]
        type.requirements_s3_object_version = params[:requirements_s3_object_version]
        type.airflow_configuration_options = AirflowConfigurationOptions.build(params[:airflow_configuration_options], context: "#{context}[:airflow_configuration_options]") unless params[:airflow_configuration_options].nil?
        type.environment_class = params[:environment_class]
        type.max_workers = params[:max_workers]
        type.kms_key = params[:kms_key]
        type.airflow_version = params[:airflow_version]
        type.logging_configuration = LoggingConfigurationInput.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type.weekly_maintenance_window_start = params[:weekly_maintenance_window_start]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.webserver_access_mode = params[:webserver_access_mode]
        type.min_workers = params[:min_workers]
        type.schedulers = params[:schedulers]
        type
      end
    end

    module CreateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentOutput, context: context)
        type = Types::CreateEnvironmentOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module CreateWebLoginTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWebLoginTokenInput, context: context)
        type = Types::CreateWebLoginTokenInput.new
        type.name = params[:name]
        type
      end
    end

    module CreateWebLoginTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWebLoginTokenOutput, context: context)
        type = Types::CreateWebLoginTokenOutput.new
        type.web_token = params[:web_token]
        type.web_server_hostname = params[:web_server_hostname]
        type
      end
    end

    module DeleteEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentInput, context: context)
        type = Types::DeleteEnvironmentInput.new
        type.name = params[:name]
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

    module Dimension
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Dimension, context: context)
        type = Types::Dimension.new
        type.name = params[:name]
        type.value = params[:value]
        type
      end
    end

    module Dimensions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Dimension.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Environment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Environment, context: context)
        type = Types::Environment.new
        type.name = params[:name]
        type.status = params[:status]
        type.arn = params[:arn]
        type.created_at = params[:created_at]
        type.webserver_url = params[:webserver_url]
        type.execution_role_arn = params[:execution_role_arn]
        type.service_role_arn = params[:service_role_arn]
        type.kms_key = params[:kms_key]
        type.airflow_version = params[:airflow_version]
        type.source_bucket_arn = params[:source_bucket_arn]
        type.dag_s3_path = params[:dag_s3_path]
        type.plugins_s3_path = params[:plugins_s3_path]
        type.plugins_s3_object_version = params[:plugins_s3_object_version]
        type.requirements_s3_path = params[:requirements_s3_path]
        type.requirements_s3_object_version = params[:requirements_s3_object_version]
        type.airflow_configuration_options = AirflowConfigurationOptions.build(params[:airflow_configuration_options], context: "#{context}[:airflow_configuration_options]") unless params[:airflow_configuration_options].nil?
        type.environment_class = params[:environment_class]
        type.max_workers = params[:max_workers]
        type.network_configuration = NetworkConfiguration.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.logging_configuration = LoggingConfiguration.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type.last_update = LastUpdate.build(params[:last_update], context: "#{context}[:last_update]") unless params[:last_update].nil?
        type.weekly_maintenance_window_start = params[:weekly_maintenance_window_start]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.webserver_access_mode = params[:webserver_access_mode]
        type.min_workers = params[:min_workers]
        type.schedulers = params[:schedulers]
        type
      end
    end

    module EnvironmentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentInput, context: context)
        type = Types::GetEnvironmentInput.new
        type.name = params[:name]
        type
      end
    end

    module GetEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentOutput, context: context)
        type = Types::GetEnvironmentOutput.new
        type.environment = Environment.build(params[:environment], context: "#{context}[:environment]") unless params[:environment].nil?
        type
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

    module LastUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LastUpdate, context: context)
        type = Types::LastUpdate.new
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.error = UpdateError.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type.source = params[:source]
        type
      end
    end

    module ListEnvironmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentsInput, context: context)
        type = Types::ListEnvironmentsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEnvironmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentsOutput, context: context)
        type = Types::ListEnvironmentsOutput.new
        type.environments = EnvironmentList.build(params[:environments], context: "#{context}[:environments]") unless params[:environments].nil?
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

    module LoggingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingConfiguration, context: context)
        type = Types::LoggingConfiguration.new
        type.dag_processing_logs = ModuleLoggingConfiguration.build(params[:dag_processing_logs], context: "#{context}[:dag_processing_logs]") unless params[:dag_processing_logs].nil?
        type.scheduler_logs = ModuleLoggingConfiguration.build(params[:scheduler_logs], context: "#{context}[:scheduler_logs]") unless params[:scheduler_logs].nil?
        type.webserver_logs = ModuleLoggingConfiguration.build(params[:webserver_logs], context: "#{context}[:webserver_logs]") unless params[:webserver_logs].nil?
        type.worker_logs = ModuleLoggingConfiguration.build(params[:worker_logs], context: "#{context}[:worker_logs]") unless params[:worker_logs].nil?
        type.task_logs = ModuleLoggingConfiguration.build(params[:task_logs], context: "#{context}[:task_logs]") unless params[:task_logs].nil?
        type
      end
    end

    module LoggingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LoggingConfigurationInput, context: context)
        type = Types::LoggingConfigurationInput.new
        type.dag_processing_logs = ModuleLoggingConfigurationInput.build(params[:dag_processing_logs], context: "#{context}[:dag_processing_logs]") unless params[:dag_processing_logs].nil?
        type.scheduler_logs = ModuleLoggingConfigurationInput.build(params[:scheduler_logs], context: "#{context}[:scheduler_logs]") unless params[:scheduler_logs].nil?
        type.webserver_logs = ModuleLoggingConfigurationInput.build(params[:webserver_logs], context: "#{context}[:webserver_logs]") unless params[:webserver_logs].nil?
        type.worker_logs = ModuleLoggingConfigurationInput.build(params[:worker_logs], context: "#{context}[:worker_logs]") unless params[:worker_logs].nil?
        type.task_logs = ModuleLoggingConfigurationInput.build(params[:task_logs], context: "#{context}[:task_logs]") unless params[:task_logs].nil?
        type
      end
    end

    module MetricData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MetricDatum.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricDatum
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricDatum, context: context)
        type = Types::MetricDatum.new
        type.metric_name = params[:metric_name]
        type.timestamp = params[:timestamp]
        type.dimensions = Dimensions.build(params[:dimensions], context: "#{context}[:dimensions]") unless params[:dimensions].nil?
        type.value = params[:value]
        type.unit = params[:unit]
        type.statistic_values = StatisticSet.build(params[:statistic_values], context: "#{context}[:statistic_values]") unless params[:statistic_values].nil?
        type
      end
    end

    module ModuleLoggingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModuleLoggingConfiguration, context: context)
        type = Types::ModuleLoggingConfiguration.new
        type.enabled = params[:enabled]
        type.log_level = params[:log_level]
        type.cloud_watch_log_group_arn = params[:cloud_watch_log_group_arn]
        type
      end
    end

    module ModuleLoggingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModuleLoggingConfigurationInput, context: context)
        type = Types::ModuleLoggingConfigurationInput.new
        type.enabled = params[:enabled]
        type.log_level = params[:log_level]
        type
      end
    end

    module NetworkConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkConfiguration, context: context)
        type = Types::NetworkConfiguration.new
        type.subnet_ids = SubnetList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module PublishMetricsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishMetricsInput, context: context)
        type = Types::PublishMetricsInput.new
        type.environment_name = params[:environment_name]
        type.metric_data = MetricData.build(params[:metric_data], context: "#{context}[:metric_data]") unless params[:metric_data].nil?
        type
      end
    end

    module PublishMetricsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PublishMetricsOutput, context: context)
        type = Types::PublishMetricsOutput.new
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

    module SecurityGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StatisticSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StatisticSet, context: context)
        type = Types::StatisticSet.new
        type.sample_count = params[:sample_count]
        type.sum = params[:sum]
        type.minimum = params[:minimum]
        type.maximum = params[:maximum]
        type
      end
    end

    module SubnetList
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

    module UpdateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentInput, context: context)
        type = Types::UpdateEnvironmentInput.new
        type.name = params[:name]
        type.execution_role_arn = params[:execution_role_arn]
        type.airflow_version = params[:airflow_version]
        type.source_bucket_arn = params[:source_bucket_arn]
        type.dag_s3_path = params[:dag_s3_path]
        type.plugins_s3_path = params[:plugins_s3_path]
        type.plugins_s3_object_version = params[:plugins_s3_object_version]
        type.requirements_s3_path = params[:requirements_s3_path]
        type.requirements_s3_object_version = params[:requirements_s3_object_version]
        type.airflow_configuration_options = AirflowConfigurationOptions.build(params[:airflow_configuration_options], context: "#{context}[:airflow_configuration_options]") unless params[:airflow_configuration_options].nil?
        type.environment_class = params[:environment_class]
        type.max_workers = params[:max_workers]
        type.network_configuration = UpdateNetworkConfigurationInput.build(params[:network_configuration], context: "#{context}[:network_configuration]") unless params[:network_configuration].nil?
        type.logging_configuration = LoggingConfigurationInput.build(params[:logging_configuration], context: "#{context}[:logging_configuration]") unless params[:logging_configuration].nil?
        type.weekly_maintenance_window_start = params[:weekly_maintenance_window_start]
        type.webserver_access_mode = params[:webserver_access_mode]
        type.min_workers = params[:min_workers]
        type.schedulers = params[:schedulers]
        type
      end
    end

    module UpdateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEnvironmentOutput, context: context)
        type = Types::UpdateEnvironmentOutput.new
        type.arn = params[:arn]
        type
      end
    end

    module UpdateError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateError, context: context)
        type = Types::UpdateError.new
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module UpdateNetworkConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNetworkConfigurationInput, context: context)
        type = Types::UpdateNetworkConfigurationInput.new
        type.security_group_ids = SecurityGroupList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
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

  end
end
