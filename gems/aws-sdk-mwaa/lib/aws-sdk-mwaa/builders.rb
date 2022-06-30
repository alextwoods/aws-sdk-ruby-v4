# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MWAA
  module Builders

    # Operation Builder for CreateCliToken
    class CreateCliToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clitoken/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateEnvironment
    class CreateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ExecutionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['SourceBucketArn'] = input[:source_bucket_arn] unless input[:source_bucket_arn].nil?
        data['DagS3Path'] = input[:dag_s3_path] unless input[:dag_s3_path].nil?
        data['NetworkConfiguration'] = Builders::NetworkConfiguration.build(input[:network_configuration]) unless input[:network_configuration].nil?
        data['PluginsS3Path'] = input[:plugins_s3_path] unless input[:plugins_s3_path].nil?
        data['PluginsS3ObjectVersion'] = input[:plugins_s3_object_version] unless input[:plugins_s3_object_version].nil?
        data['RequirementsS3Path'] = input[:requirements_s3_path] unless input[:requirements_s3_path].nil?
        data['RequirementsS3ObjectVersion'] = input[:requirements_s3_object_version] unless input[:requirements_s3_object_version].nil?
        data['AirflowConfigurationOptions'] = Builders::AirflowConfigurationOptions.build(input[:airflow_configuration_options]) unless input[:airflow_configuration_options].nil?
        data['EnvironmentClass'] = input[:environment_class] unless input[:environment_class].nil?
        data['MaxWorkers'] = input[:max_workers] unless input[:max_workers].nil?
        data['KmsKey'] = input[:kms_key] unless input[:kms_key].nil?
        data['AirflowVersion'] = input[:airflow_version] unless input[:airflow_version].nil?
        data['LoggingConfiguration'] = Builders::LoggingConfigurationInput.build(input[:logging_configuration]) unless input[:logging_configuration].nil?
        data['WeeklyMaintenanceWindowStart'] = input[:weekly_maintenance_window_start] unless input[:weekly_maintenance_window_start].nil?
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        data['WebserverAccessMode'] = input[:webserver_access_mode] unless input[:webserver_access_mode].nil?
        data['MinWorkers'] = input[:min_workers] unless input[:min_workers].nil?
        data['Schedulers'] = input[:schedulers] unless input[:schedulers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for LoggingConfigurationInput
    class LoggingConfigurationInput
      def self.build(input)
        data = {}
        data['DagProcessingLogs'] = Builders::ModuleLoggingConfigurationInput.build(input[:dag_processing_logs]) unless input[:dag_processing_logs].nil?
        data['SchedulerLogs'] = Builders::ModuleLoggingConfigurationInput.build(input[:scheduler_logs]) unless input[:scheduler_logs].nil?
        data['WebserverLogs'] = Builders::ModuleLoggingConfigurationInput.build(input[:webserver_logs]) unless input[:webserver_logs].nil?
        data['WorkerLogs'] = Builders::ModuleLoggingConfigurationInput.build(input[:worker_logs]) unless input[:worker_logs].nil?
        data['TaskLogs'] = Builders::ModuleLoggingConfigurationInput.build(input[:task_logs]) unless input[:task_logs].nil?
        data
      end
    end

    # Structure Builder for ModuleLoggingConfigurationInput
    class ModuleLoggingConfigurationInput
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['LogLevel'] = input[:log_level] unless input[:log_level].nil?
        data
      end
    end

    # Map Builder for AirflowConfigurationOptions
    class AirflowConfigurationOptions
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for NetworkConfiguration
    class NetworkConfiguration
      def self.build(input)
        data = {}
        data['SubnetIds'] = Builders::SubnetList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['SecurityGroupIds'] = Builders::SecurityGroupList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end

    # List Builder for SecurityGroupList
    class SecurityGroupList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubnetList
    class SubnetList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateWebLoginToken
    class CreateWebLoginToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/webtoken/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteEnvironment
    class DeleteEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetEnvironment
    class GetEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEnvironments
    class ListEnvironments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/environments')
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PublishMetrics
    class PublishMetrics
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/metrics/environments/%<EnvironmentName>s',
            EnvironmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MetricData'] = Builders::MetricData.build(input[:metric_data]) unless input[:metric_data].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MetricData
    class MetricData
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MetricDatum.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MetricDatum
    class MetricDatum
      def self.build(input)
        data = {}
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:timestamp]).to_i unless input[:timestamp].nil?
        data['Dimensions'] = Builders::Dimensions.build(input[:dimensions]) unless input[:dimensions].nil?
        data['Value'] = Hearth::NumberHelper.serialize(input[:value]) unless input[:value].nil?
        data['Unit'] = input[:unit] unless input[:unit].nil?
        data['StatisticValues'] = Builders::StatisticSet.build(input[:statistic_values]) unless input[:statistic_values].nil?
        data
      end
    end

    # Structure Builder for StatisticSet
    class StatisticSet
      def self.build(input)
        data = {}
        data['SampleCount'] = input[:sample_count] unless input[:sample_count].nil?
        data['Sum'] = Hearth::NumberHelper.serialize(input[:sum]) unless input[:sum].nil?
        data['Minimum'] = Hearth::NumberHelper.serialize(input[:minimum]) unless input[:minimum].nil?
        data['Maximum'] = Hearth::NumberHelper.serialize(input[:maximum]) unless input[:maximum].nil?
        data
      end
    end

    # List Builder for Dimensions
    class Dimensions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Dimension.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Dimension
    class Dimension
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateEnvironment
    class UpdateEnvironment
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:name].to_s.empty?
          raise ArgumentError, "HTTP label :name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/environments/%<Name>s',
            Name: Hearth::HTTP.uri_escape(input[:name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ExecutionRoleArn'] = input[:execution_role_arn] unless input[:execution_role_arn].nil?
        data['AirflowVersion'] = input[:airflow_version] unless input[:airflow_version].nil?
        data['SourceBucketArn'] = input[:source_bucket_arn] unless input[:source_bucket_arn].nil?
        data['DagS3Path'] = input[:dag_s3_path] unless input[:dag_s3_path].nil?
        data['PluginsS3Path'] = input[:plugins_s3_path] unless input[:plugins_s3_path].nil?
        data['PluginsS3ObjectVersion'] = input[:plugins_s3_object_version] unless input[:plugins_s3_object_version].nil?
        data['RequirementsS3Path'] = input[:requirements_s3_path] unless input[:requirements_s3_path].nil?
        data['RequirementsS3ObjectVersion'] = input[:requirements_s3_object_version] unless input[:requirements_s3_object_version].nil?
        data['AirflowConfigurationOptions'] = Builders::AirflowConfigurationOptions.build(input[:airflow_configuration_options]) unless input[:airflow_configuration_options].nil?
        data['EnvironmentClass'] = input[:environment_class] unless input[:environment_class].nil?
        data['MaxWorkers'] = input[:max_workers] unless input[:max_workers].nil?
        data['NetworkConfiguration'] = Builders::UpdateNetworkConfigurationInput.build(input[:network_configuration]) unless input[:network_configuration].nil?
        data['LoggingConfiguration'] = Builders::LoggingConfigurationInput.build(input[:logging_configuration]) unless input[:logging_configuration].nil?
        data['WeeklyMaintenanceWindowStart'] = input[:weekly_maintenance_window_start] unless input[:weekly_maintenance_window_start].nil?
        data['WebserverAccessMode'] = input[:webserver_access_mode] unless input[:webserver_access_mode].nil?
        data['MinWorkers'] = input[:min_workers] unless input[:min_workers].nil?
        data['Schedulers'] = input[:schedulers] unless input[:schedulers].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateNetworkConfigurationInput
    class UpdateNetworkConfigurationInput
      def self.build(input)
        data = {}
        data['SecurityGroupIds'] = Builders::SecurityGroupList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end
  end
end
