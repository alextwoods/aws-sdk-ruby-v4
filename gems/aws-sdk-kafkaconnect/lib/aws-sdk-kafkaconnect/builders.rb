# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KafkaConnect
  module Builders

    # Operation Builder for CreateConnector
    class CreateConnector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/connectors')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['capacity'] = Builders::Capacity.build(input[:capacity]) unless input[:capacity].nil?
        data['connectorConfiguration'] = Builders::Map____sensitive__mapOf__string.build(input[:connector_configuration]) unless input[:connector_configuration].nil?
        data['connectorDescription'] = input[:connector_description] unless input[:connector_description].nil?
        data['connectorName'] = input[:connector_name] unless input[:connector_name].nil?
        data['kafkaCluster'] = Builders::KafkaCluster.build(input[:kafka_cluster]) unless input[:kafka_cluster].nil?
        data['kafkaClusterClientAuthentication'] = Builders::KafkaClusterClientAuthentication.build(input[:kafka_cluster_client_authentication]) unless input[:kafka_cluster_client_authentication].nil?
        data['kafkaClusterEncryptionInTransit'] = Builders::KafkaClusterEncryptionInTransit.build(input[:kafka_cluster_encryption_in_transit]) unless input[:kafka_cluster_encryption_in_transit].nil?
        data['kafkaConnectVersion'] = input[:kafka_connect_version] unless input[:kafka_connect_version].nil?
        data['logDelivery'] = Builders::LogDelivery.build(input[:log_delivery]) unless input[:log_delivery].nil?
        data['plugins'] = Builders::List____listOfPlugin.build(input[:plugins]) unless input[:plugins].nil?
        data['serviceExecutionRoleArn'] = input[:service_execution_role_arn] unless input[:service_execution_role_arn].nil?
        data['workerConfiguration'] = Builders::WorkerConfiguration.build(input[:worker_configuration]) unless input[:worker_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for WorkerConfiguration
    class WorkerConfiguration
      def self.build(input)
        data = {}
        data['revision'] = input[:revision] unless input[:revision].nil?
        data['workerConfigurationArn'] = input[:worker_configuration_arn] unless input[:worker_configuration_arn].nil?
        data
      end
    end

    # List Builder for __listOfPlugin
    class List____listOfPlugin
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Plugin.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Plugin
    class Plugin
      def self.build(input)
        data = {}
        data['customPlugin'] = Builders::CustomPlugin.build(input[:custom_plugin]) unless input[:custom_plugin].nil?
        data
      end
    end

    # Structure Builder for CustomPlugin
    class CustomPlugin
      def self.build(input)
        data = {}
        data['customPluginArn'] = input[:custom_plugin_arn] unless input[:custom_plugin_arn].nil?
        data['revision'] = input[:revision] unless input[:revision].nil?
        data
      end
    end

    # Structure Builder for LogDelivery
    class LogDelivery
      def self.build(input)
        data = {}
        data['workerLogDelivery'] = Builders::WorkerLogDelivery.build(input[:worker_log_delivery]) unless input[:worker_log_delivery].nil?
        data
      end
    end

    # Structure Builder for WorkerLogDelivery
    class WorkerLogDelivery
      def self.build(input)
        data = {}
        data['cloudWatchLogs'] = Builders::CloudWatchLogsLogDelivery.build(input[:cloud_watch_logs]) unless input[:cloud_watch_logs].nil?
        data['firehose'] = Builders::FirehoseLogDelivery.build(input[:firehose]) unless input[:firehose].nil?
        data['s3'] = Builders::S3LogDelivery.build(input[:s3]) unless input[:s3].nil?
        data
      end
    end

    # Structure Builder for S3LogDelivery
    class S3LogDelivery
      def self.build(input)
        data = {}
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['prefix'] = input[:prefix] unless input[:prefix].nil?
        data
      end
    end

    # Structure Builder for FirehoseLogDelivery
    class FirehoseLogDelivery
      def self.build(input)
        data = {}
        data['deliveryStream'] = input[:delivery_stream] unless input[:delivery_stream].nil?
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for CloudWatchLogsLogDelivery
    class CloudWatchLogsLogDelivery
      def self.build(input)
        data = {}
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['logGroup'] = input[:log_group] unless input[:log_group].nil?
        data
      end
    end

    # Structure Builder for KafkaClusterEncryptionInTransit
    class KafkaClusterEncryptionInTransit
      def self.build(input)
        data = {}
        data['encryptionType'] = input[:encryption_type] unless input[:encryption_type].nil?
        data
      end
    end

    # Structure Builder for KafkaClusterClientAuthentication
    class KafkaClusterClientAuthentication
      def self.build(input)
        data = {}
        data['authenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        data
      end
    end

    # Structure Builder for KafkaCluster
    class KafkaCluster
      def self.build(input)
        data = {}
        data['apacheKafkaCluster'] = Builders::ApacheKafkaCluster.build(input[:apache_kafka_cluster]) unless input[:apache_kafka_cluster].nil?
        data
      end
    end

    # Structure Builder for ApacheKafkaCluster
    class ApacheKafkaCluster
      def self.build(input)
        data = {}
        data['bootstrapServers'] = input[:bootstrap_servers] unless input[:bootstrap_servers].nil?
        data['vpc'] = Builders::Vpc.build(input[:vpc]) unless input[:vpc].nil?
        data
      end
    end

    # Structure Builder for Vpc
    class Vpc
      def self.build(input)
        data = {}
        data['securityGroups'] = Builders::List____listOf__string.build(input[:security_groups]) unless input[:security_groups].nil?
        data['subnets'] = Builders::List____listOf__string.build(input[:subnets]) unless input[:subnets].nil?
        data
      end
    end

    # List Builder for __listOf__string
    class List____listOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for __sensitive__mapOf__string
    class Map____sensitive__mapOf__string
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Capacity
    class Capacity
      def self.build(input)
        data = {}
        data['autoScaling'] = Builders::AutoScaling.build(input[:auto_scaling]) unless input[:auto_scaling].nil?
        data['provisionedCapacity'] = Builders::ProvisionedCapacity.build(input[:provisioned_capacity]) unless input[:provisioned_capacity].nil?
        data
      end
    end

    # Structure Builder for ProvisionedCapacity
    class ProvisionedCapacity
      def self.build(input)
        data = {}
        data['mcuCount'] = input[:mcu_count] unless input[:mcu_count].nil?
        data['workerCount'] = input[:worker_count] unless input[:worker_count].nil?
        data
      end
    end

    # Structure Builder for AutoScaling
    class AutoScaling
      def self.build(input)
        data = {}
        data['maxWorkerCount'] = input[:max_worker_count] unless input[:max_worker_count].nil?
        data['mcuCount'] = input[:mcu_count] unless input[:mcu_count].nil?
        data['minWorkerCount'] = input[:min_worker_count] unless input[:min_worker_count].nil?
        data['scaleInPolicy'] = Builders::ScaleInPolicy.build(input[:scale_in_policy]) unless input[:scale_in_policy].nil?
        data['scaleOutPolicy'] = Builders::ScaleOutPolicy.build(input[:scale_out_policy]) unless input[:scale_out_policy].nil?
        data
      end
    end

    # Structure Builder for ScaleOutPolicy
    class ScaleOutPolicy
      def self.build(input)
        data = {}
        data['cpuUtilizationPercentage'] = input[:cpu_utilization_percentage] unless input[:cpu_utilization_percentage].nil?
        data
      end
    end

    # Structure Builder for ScaleInPolicy
    class ScaleInPolicy
      def self.build(input)
        data = {}
        data['cpuUtilizationPercentage'] = input[:cpu_utilization_percentage] unless input[:cpu_utilization_percentage].nil?
        data
      end
    end

    # Operation Builder for CreateCustomPlugin
    class CreateCustomPlugin
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/custom-plugins')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['contentType'] = input[:content_type] unless input[:content_type].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['location'] = Builders::CustomPluginLocation.build(input[:location]) unless input[:location].nil?
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CustomPluginLocation
    class CustomPluginLocation
      def self.build(input)
        data = {}
        data['s3Location'] = Builders::S3Location.build(input[:s3_location]) unless input[:s3_location].nil?
        data
      end
    end

    # Structure Builder for S3Location
    class S3Location
      def self.build(input)
        data = {}
        data['bucketArn'] = input[:bucket_arn] unless input[:bucket_arn].nil?
        data['fileKey'] = input[:file_key] unless input[:file_key].nil?
        data['objectVersion'] = input[:object_version] unless input[:object_version].nil?
        data
      end
    end

    # Operation Builder for CreateWorkerConfiguration
    class CreateWorkerConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v1/worker-configurations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['propertiesFileContent'] = input[:properties_file_content] unless input[:properties_file_content].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteConnector
    class DeleteConnector
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:connector_arn].to_s.empty?
          raise ArgumentError, "HTTP label :connector_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/connectors/%<connectorArn>s',
            connectorArn: Hearth::HTTP.uri_escape(input[:connector_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['currentVersion'] = input[:current_version].to_s unless input[:current_version].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteCustomPlugin
    class DeleteCustomPlugin
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:custom_plugin_arn].to_s.empty?
          raise ArgumentError, "HTTP label :custom_plugin_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/custom-plugins/%<customPluginArn>s',
            customPluginArn: Hearth::HTTP.uri_escape(input[:custom_plugin_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeConnector
    class DescribeConnector
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:connector_arn].to_s.empty?
          raise ArgumentError, "HTTP label :connector_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/connectors/%<connectorArn>s',
            connectorArn: Hearth::HTTP.uri_escape(input[:connector_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeCustomPlugin
    class DescribeCustomPlugin
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:custom_plugin_arn].to_s.empty?
          raise ArgumentError, "HTTP label :custom_plugin_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/custom-plugins/%<customPluginArn>s',
            customPluginArn: Hearth::HTTP.uri_escape(input[:custom_plugin_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeWorkerConfiguration
    class DescribeWorkerConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:worker_configuration_arn].to_s.empty?
          raise ArgumentError, "HTTP label :worker_configuration_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/worker-configurations/%<workerConfigurationArn>s',
            workerConfigurationArn: Hearth::HTTP.uri_escape(input[:worker_configuration_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListConnectors
    class ListConnectors
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/connectors')
        params = Hearth::Query::ParamList.new
        params['connectorNamePrefix'] = input[:connector_name_prefix].to_s unless input[:connector_name_prefix].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCustomPlugins
    class ListCustomPlugins
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/custom-plugins')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListWorkerConfigurations
    class ListWorkerConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v1/worker-configurations')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UpdateConnector
    class UpdateConnector
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:connector_arn].to_s.empty?
          raise ArgumentError, "HTTP label :connector_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v1/connectors/%<connectorArn>s',
            connectorArn: Hearth::HTTP.uri_escape(input[:connector_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['currentVersion'] = input[:current_version].to_s unless input[:current_version].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['capacity'] = Builders::CapacityUpdate.build(input[:capacity]) unless input[:capacity].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CapacityUpdate
    class CapacityUpdate
      def self.build(input)
        data = {}
        data['autoScaling'] = Builders::AutoScalingUpdate.build(input[:auto_scaling]) unless input[:auto_scaling].nil?
        data['provisionedCapacity'] = Builders::ProvisionedCapacityUpdate.build(input[:provisioned_capacity]) unless input[:provisioned_capacity].nil?
        data
      end
    end

    # Structure Builder for ProvisionedCapacityUpdate
    class ProvisionedCapacityUpdate
      def self.build(input)
        data = {}
        data['mcuCount'] = input[:mcu_count] unless input[:mcu_count].nil?
        data['workerCount'] = input[:worker_count] unless input[:worker_count].nil?
        data
      end
    end

    # Structure Builder for AutoScalingUpdate
    class AutoScalingUpdate
      def self.build(input)
        data = {}
        data['maxWorkerCount'] = input[:max_worker_count] unless input[:max_worker_count].nil?
        data['mcuCount'] = input[:mcu_count] unless input[:mcu_count].nil?
        data['minWorkerCount'] = input[:min_worker_count] unless input[:min_worker_count].nil?
        data['scaleInPolicy'] = Builders::ScaleInPolicyUpdate.build(input[:scale_in_policy]) unless input[:scale_in_policy].nil?
        data['scaleOutPolicy'] = Builders::ScaleOutPolicyUpdate.build(input[:scale_out_policy]) unless input[:scale_out_policy].nil?
        data
      end
    end

    # Structure Builder for ScaleOutPolicyUpdate
    class ScaleOutPolicyUpdate
      def self.build(input)
        data = {}
        data['cpuUtilizationPercentage'] = input[:cpu_utilization_percentage] unless input[:cpu_utilization_percentage].nil?
        data
      end
    end

    # Structure Builder for ScaleInPolicyUpdate
    class ScaleInPolicyUpdate
      def self.build(input)
        data = {}
        data['cpuUtilizationPercentage'] = input[:cpu_utilization_percentage] unless input[:cpu_utilization_percentage].nil?
        data
      end
    end
  end
end
