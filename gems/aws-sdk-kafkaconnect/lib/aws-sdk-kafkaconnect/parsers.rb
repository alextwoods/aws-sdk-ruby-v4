# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::KafkaConnect
  module Parsers

    # Operation Parser for CreateConnector
    class CreateConnector
      def self.parse(http_resp)
        data = Types::CreateConnectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connector_arn = map['connectorArn']
        data.connector_name = map['connectorName']
        data.connector_state = map['connectorState']
        data
      end
    end

    # Error Parser for ForbiddenException
    class ForbiddenException
      def self.parse(http_resp)
        data = Types::ForbiddenException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateCustomPlugin
    class CreateCustomPlugin
      def self.parse(http_resp)
        data = Types::CreateCustomPluginOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.custom_plugin_arn = map['customPluginArn']
        data.custom_plugin_state = map['customPluginState']
        data.name = map['name']
        data.revision = map['revision']
        data
      end
    end

    # Operation Parser for CreateWorkerConfiguration
    class CreateWorkerConfiguration
      def self.parse(http_resp)
        data = Types::CreateWorkerConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.latest_revision = (Parsers::WorkerConfigurationRevisionSummary.parse(map['latestRevision']) unless map['latestRevision'].nil?)
        data.name = map['name']
        data.worker_configuration_arn = map['workerConfigurationArn']
        data
      end
    end

    class WorkerConfigurationRevisionSummary
      def self.parse(map)
        data = Types::WorkerConfigurationRevisionSummary.new
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.description = map['description']
        data.revision = map['revision']
        return data
      end
    end

    # Operation Parser for DeleteConnector
    class DeleteConnector
      def self.parse(http_resp)
        data = Types::DeleteConnectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connector_arn = map['connectorArn']
        data.connector_state = map['connectorState']
        data
      end
    end

    # Operation Parser for DeleteCustomPlugin
    class DeleteCustomPlugin
      def self.parse(http_resp)
        data = Types::DeleteCustomPluginOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.custom_plugin_arn = map['customPluginArn']
        data.custom_plugin_state = map['customPluginState']
        data
      end
    end

    # Operation Parser for DescribeConnector
    class DescribeConnector
      def self.parse(http_resp)
        data = Types::DescribeConnectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.capacity = (Parsers::CapacityDescription.parse(map['capacity']) unless map['capacity'].nil?)
        data.connector_arn = map['connectorArn']
        data.connector_configuration = (Parsers::Map____sensitive__mapOf__string.parse(map['connectorConfiguration']) unless map['connectorConfiguration'].nil?)
        data.connector_description = map['connectorDescription']
        data.connector_name = map['connectorName']
        data.connector_state = map['connectorState']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.current_version = map['currentVersion']
        data.kafka_cluster = (Parsers::KafkaClusterDescription.parse(map['kafkaCluster']) unless map['kafkaCluster'].nil?)
        data.kafka_cluster_client_authentication = (Parsers::KafkaClusterClientAuthenticationDescription.parse(map['kafkaClusterClientAuthentication']) unless map['kafkaClusterClientAuthentication'].nil?)
        data.kafka_cluster_encryption_in_transit = (Parsers::KafkaClusterEncryptionInTransitDescription.parse(map['kafkaClusterEncryptionInTransit']) unless map['kafkaClusterEncryptionInTransit'].nil?)
        data.kafka_connect_version = map['kafkaConnectVersion']
        data.log_delivery = (Parsers::LogDeliveryDescription.parse(map['logDelivery']) unless map['logDelivery'].nil?)
        data.plugins = (Parsers::List____listOfPluginDescription.parse(map['plugins']) unless map['plugins'].nil?)
        data.service_execution_role_arn = map['serviceExecutionRoleArn']
        data.worker_configuration = (Parsers::WorkerConfigurationDescription.parse(map['workerConfiguration']) unless map['workerConfiguration'].nil?)
        data.state_description = (Parsers::StateDescription.parse(map['stateDescription']) unless map['stateDescription'].nil?)
        data
      end
    end

    class StateDescription
      def self.parse(map)
        data = Types::StateDescription.new
        data.code = map['code']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    class WorkerConfigurationDescription
      def self.parse(map)
        data = Types::WorkerConfigurationDescription.new
        data.revision = map['revision']
        data.worker_configuration_arn = map['workerConfigurationArn']
        return data
      end
    end

    class List____listOfPluginDescription
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PluginDescription.parse(value) unless value.nil?
        end
        data
      end
    end

    class PluginDescription
      def self.parse(map)
        data = Types::PluginDescription.new
        data.custom_plugin = (Parsers::CustomPluginDescription.parse(map['customPlugin']) unless map['customPlugin'].nil?)
        return data
      end
    end

    class CustomPluginDescription
      def self.parse(map)
        data = Types::CustomPluginDescription.new
        data.custom_plugin_arn = map['customPluginArn']
        data.revision = map['revision']
        return data
      end
    end

    class LogDeliveryDescription
      def self.parse(map)
        data = Types::LogDeliveryDescription.new
        data.worker_log_delivery = (Parsers::WorkerLogDeliveryDescription.parse(map['workerLogDelivery']) unless map['workerLogDelivery'].nil?)
        return data
      end
    end

    class WorkerLogDeliveryDescription
      def self.parse(map)
        data = Types::WorkerLogDeliveryDescription.new
        data.cloud_watch_logs = (Parsers::CloudWatchLogsLogDeliveryDescription.parse(map['cloudWatchLogs']) unless map['cloudWatchLogs'].nil?)
        data.firehose = (Parsers::FirehoseLogDeliveryDescription.parse(map['firehose']) unless map['firehose'].nil?)
        data.s3 = (Parsers::S3LogDeliveryDescription.parse(map['s3']) unless map['s3'].nil?)
        return data
      end
    end

    class S3LogDeliveryDescription
      def self.parse(map)
        data = Types::S3LogDeliveryDescription.new
        data.bucket = map['bucket']
        data.enabled = map['enabled']
        data.prefix = map['prefix']
        return data
      end
    end

    class FirehoseLogDeliveryDescription
      def self.parse(map)
        data = Types::FirehoseLogDeliveryDescription.new
        data.delivery_stream = map['deliveryStream']
        data.enabled = map['enabled']
        return data
      end
    end

    class CloudWatchLogsLogDeliveryDescription
      def self.parse(map)
        data = Types::CloudWatchLogsLogDeliveryDescription.new
        data.enabled = map['enabled']
        data.log_group = map['logGroup']
        return data
      end
    end

    class KafkaClusterEncryptionInTransitDescription
      def self.parse(map)
        data = Types::KafkaClusterEncryptionInTransitDescription.new
        data.encryption_type = map['encryptionType']
        return data
      end
    end

    class KafkaClusterClientAuthenticationDescription
      def self.parse(map)
        data = Types::KafkaClusterClientAuthenticationDescription.new
        data.authentication_type = map['authenticationType']
        return data
      end
    end

    class KafkaClusterDescription
      def self.parse(map)
        data = Types::KafkaClusterDescription.new
        data.apache_kafka_cluster = (Parsers::ApacheKafkaClusterDescription.parse(map['apacheKafkaCluster']) unless map['apacheKafkaCluster'].nil?)
        return data
      end
    end

    class ApacheKafkaClusterDescription
      def self.parse(map)
        data = Types::ApacheKafkaClusterDescription.new
        data.bootstrap_servers = map['bootstrapServers']
        data.vpc = (Parsers::VpcDescription.parse(map['vpc']) unless map['vpc'].nil?)
        return data
      end
    end

    class VpcDescription
      def self.parse(map)
        data = Types::VpcDescription.new
        data.security_groups = (Parsers::List____listOf__string.parse(map['securityGroups']) unless map['securityGroups'].nil?)
        data.subnets = (Parsers::List____listOf__string.parse(map['subnets']) unless map['subnets'].nil?)
        return data
      end
    end

    class List____listOf__string
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Map____sensitive__mapOf__string
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class CapacityDescription
      def self.parse(map)
        data = Types::CapacityDescription.new
        data.auto_scaling = (Parsers::AutoScalingDescription.parse(map['autoScaling']) unless map['autoScaling'].nil?)
        data.provisioned_capacity = (Parsers::ProvisionedCapacityDescription.parse(map['provisionedCapacity']) unless map['provisionedCapacity'].nil?)
        return data
      end
    end

    class ProvisionedCapacityDescription
      def self.parse(map)
        data = Types::ProvisionedCapacityDescription.new
        data.mcu_count = map['mcuCount']
        data.worker_count = map['workerCount']
        return data
      end
    end

    class AutoScalingDescription
      def self.parse(map)
        data = Types::AutoScalingDescription.new
        data.max_worker_count = map['maxWorkerCount']
        data.mcu_count = map['mcuCount']
        data.min_worker_count = map['minWorkerCount']
        data.scale_in_policy = (Parsers::ScaleInPolicyDescription.parse(map['scaleInPolicy']) unless map['scaleInPolicy'].nil?)
        data.scale_out_policy = (Parsers::ScaleOutPolicyDescription.parse(map['scaleOutPolicy']) unless map['scaleOutPolicy'].nil?)
        return data
      end
    end

    class ScaleOutPolicyDescription
      def self.parse(map)
        data = Types::ScaleOutPolicyDescription.new
        data.cpu_utilization_percentage = map['cpuUtilizationPercentage']
        return data
      end
    end

    class ScaleInPolicyDescription
      def self.parse(map)
        data = Types::ScaleInPolicyDescription.new
        data.cpu_utilization_percentage = map['cpuUtilizationPercentage']
        return data
      end
    end

    # Operation Parser for DescribeCustomPlugin
    class DescribeCustomPlugin
      def self.parse(http_resp)
        data = Types::DescribeCustomPluginOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.custom_plugin_arn = map['customPluginArn']
        data.custom_plugin_state = map['customPluginState']
        data.description = map['description']
        data.latest_revision = (Parsers::CustomPluginRevisionSummary.parse(map['latestRevision']) unless map['latestRevision'].nil?)
        data.name = map['name']
        data.state_description = (Parsers::StateDescription.parse(map['stateDescription']) unless map['stateDescription'].nil?)
        data
      end
    end

    class CustomPluginRevisionSummary
      def self.parse(map)
        data = Types::CustomPluginRevisionSummary.new
        data.content_type = map['contentType']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.description = map['description']
        data.file_description = (Parsers::CustomPluginFileDescription.parse(map['fileDescription']) unless map['fileDescription'].nil?)
        data.location = (Parsers::CustomPluginLocationDescription.parse(map['location']) unless map['location'].nil?)
        data.revision = map['revision']
        return data
      end
    end

    class CustomPluginLocationDescription
      def self.parse(map)
        data = Types::CustomPluginLocationDescription.new
        data.s3_location = (Parsers::S3LocationDescription.parse(map['s3Location']) unless map['s3Location'].nil?)
        return data
      end
    end

    class S3LocationDescription
      def self.parse(map)
        data = Types::S3LocationDescription.new
        data.bucket_arn = map['bucketArn']
        data.file_key = map['fileKey']
        data.object_version = map['objectVersion']
        return data
      end
    end

    class CustomPluginFileDescription
      def self.parse(map)
        data = Types::CustomPluginFileDescription.new
        data.file_md5 = map['fileMd5']
        data.file_size = map['fileSize']
        return data
      end
    end

    # Operation Parser for DescribeWorkerConfiguration
    class DescribeWorkerConfiguration
      def self.parse(http_resp)
        data = Types::DescribeWorkerConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.description = map['description']
        data.latest_revision = (Parsers::WorkerConfigurationRevisionDescription.parse(map['latestRevision']) unless map['latestRevision'].nil?)
        data.name = map['name']
        data.worker_configuration_arn = map['workerConfigurationArn']
        data
      end
    end

    class WorkerConfigurationRevisionDescription
      def self.parse(map)
        data = Types::WorkerConfigurationRevisionDescription.new
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.description = map['description']
        data.properties_file_content = map['propertiesFileContent']
        data.revision = map['revision']
        return data
      end
    end

    # Operation Parser for ListConnectors
    class ListConnectors
      def self.parse(http_resp)
        data = Types::ListConnectorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connectors = (Parsers::List____listOfConnectorSummary.parse(map['connectors']) unless map['connectors'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfConnectorSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ConnectorSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConnectorSummary
      def self.parse(map)
        data = Types::ConnectorSummary.new
        data.capacity = (Parsers::CapacityDescription.parse(map['capacity']) unless map['capacity'].nil?)
        data.connector_arn = map['connectorArn']
        data.connector_description = map['connectorDescription']
        data.connector_name = map['connectorName']
        data.connector_state = map['connectorState']
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.current_version = map['currentVersion']
        data.kafka_cluster = (Parsers::KafkaClusterDescription.parse(map['kafkaCluster']) unless map['kafkaCluster'].nil?)
        data.kafka_cluster_client_authentication = (Parsers::KafkaClusterClientAuthenticationDescription.parse(map['kafkaClusterClientAuthentication']) unless map['kafkaClusterClientAuthentication'].nil?)
        data.kafka_cluster_encryption_in_transit = (Parsers::KafkaClusterEncryptionInTransitDescription.parse(map['kafkaClusterEncryptionInTransit']) unless map['kafkaClusterEncryptionInTransit'].nil?)
        data.kafka_connect_version = map['kafkaConnectVersion']
        data.log_delivery = (Parsers::LogDeliveryDescription.parse(map['logDelivery']) unless map['logDelivery'].nil?)
        data.plugins = (Parsers::List____listOfPluginDescription.parse(map['plugins']) unless map['plugins'].nil?)
        data.service_execution_role_arn = map['serviceExecutionRoleArn']
        data.worker_configuration = (Parsers::WorkerConfigurationDescription.parse(map['workerConfiguration']) unless map['workerConfiguration'].nil?)
        return data
      end
    end

    # Operation Parser for ListCustomPlugins
    class ListCustomPlugins
      def self.parse(http_resp)
        data = Types::ListCustomPluginsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.custom_plugins = (Parsers::List____listOfCustomPluginSummary.parse(map['customPlugins']) unless map['customPlugins'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfCustomPluginSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CustomPluginSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class CustomPluginSummary
      def self.parse(map)
        data = Types::CustomPluginSummary.new
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.custom_plugin_arn = map['customPluginArn']
        data.custom_plugin_state = map['customPluginState']
        data.description = map['description']
        data.latest_revision = (Parsers::CustomPluginRevisionSummary.parse(map['latestRevision']) unless map['latestRevision'].nil?)
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for ListWorkerConfigurations
    class ListWorkerConfigurations
      def self.parse(http_resp)
        data = Types::ListWorkerConfigurationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.worker_configurations = (Parsers::List____listOfWorkerConfigurationSummary.parse(map['workerConfigurations']) unless map['workerConfigurations'].nil?)
        data
      end
    end

    class List____listOfWorkerConfigurationSummary
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::WorkerConfigurationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorkerConfigurationSummary
      def self.parse(map)
        data = Types::WorkerConfigurationSummary.new
        data.creation_time = Time.parse(map['creationTime']) if map['creationTime']
        data.description = map['description']
        data.latest_revision = (Parsers::WorkerConfigurationRevisionSummary.parse(map['latestRevision']) unless map['latestRevision'].nil?)
        data.name = map['name']
        data.worker_configuration_arn = map['workerConfigurationArn']
        return data
      end
    end

    # Operation Parser for UpdateConnector
    class UpdateConnector
      def self.parse(http_resp)
        data = Types::UpdateConnectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connector_arn = map['connectorArn']
        data.connector_state = map['connectorState']
        data
      end
    end
  end
end
